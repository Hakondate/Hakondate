/**
 * Import function triggers from their respective submodules:
 *
 * import {onCall} from "firebase-functions/v2/https";
 * import {onDocumentWritten} from "firebase-functions/v2/firestore";
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

import {onRequest} from "firebase-functions/v2/https";

import * as admin from "firebase-admin";
import {
  ISchoolsRepository, SchoolsRepository,
} from "./repository/schoolsRepository";
import {School} from "./model/school";
import {AuthorizationResultDto} from "./model/authorizationResultDto";
import {AuthorizationRequestDto} from "./model/authorizationRequestDto";
import {getFirestore} from "firebase-admin/firestore";
import {logger} from "firebase-functions/v1";

admin.initializeApp();

const schoolsRepository: ISchoolsRepository =
  new SchoolsRepository(getFirestore());

export const fetch = onRequest(async (_, response) => {
  await schoolsRepository.fetch();
  response.status(200).send("Fetched");
});

export const authorize = onRequest(async (request, response) => {
  logger.debug("authorize");
  const result: AuthorizationResultDto = {
    authorizationSucceeded: false,
    message: "",
  };

  const parsed = parseJsonIntoAuthorizationRequestDto(request.body);

  logger.debug("parsed");

  if (parsed === undefined) {
    result.message = "Jsonの型が違います";
    response.sendStatus(401).send(result);
    return;
  }

  const school: School | undefined = await schoolsRepository.getSchoolById(
    parsed.schoolId,
  );
  logger.debug("getSchool");

  if (school === undefined) {
    result.message = "学校が見つかりません";
    response.status(401).send(result);
    return;
  }

  if (school.authorizationRequired === false) {
    result.authorizationSucceeded = true;
    result.message = "認証が不要な学校です";
    response.status(200).send(result);
    return;
  }

  if (school.authorizationKey === parsed.authorizationKey) {
    result.authorizationSucceeded = true;
    response.status(200).send(result);
    return;
  }

  result.message = "認証コードが間違っています";
  response.status(401).send(result);
  return;
});

export const getSchools = onRequest(async (_, response) => {
  const schools: School[] = await schoolsRepository.getSchools();
  response.status(200).send(schools);
});

const parseJsonIntoAuthorizationRequestDto =
(body: string) : AuthorizationRequestDto | undefined => {
  let parsed: AuthorizationRequestDto;
  try {
    parsed = JSON.parse(JSON.stringify(body),
      (key: string, value: string) => {
        if (key === "schoolId") {
          const parsed = Number(value);
          if (Number.isNaN(parsed)) {
            throw Error("schoolIdの変換に失敗しました");
          } else {
            return parsed;
          }
        }
        return value;
      });
  } catch (error) {
    if (error instanceof Error) throw error;
    return undefined;
  }
  return parsed;
};
