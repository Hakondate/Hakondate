/**
 * Import function triggers from their respective submodules:
 *
 * import {onCall} from "firebase-functions/v2/https";
 * import {onDocumentWritten} from "firebase-functions/v2/firestore";
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

import {onRequest} from "firebase-functions/v2/https";
import * as logger from "firebase-functions/logger";

import * as admin from "firebase-admin";
import {
  ISchoolsRepository, SchoolsRepository,
} from "./repository/schoolsRepository";
import {AuthorizationDto} from "./model/authorizationDto";
import {School} from "./model/school";

admin.initializeApp();

const schoolsRepository: ISchoolsRepository = new SchoolsRepository();

export const fetch = onRequest(async (request, response) => {
  await schoolsRepository.fetch();
  response.status(200).send("Fetched");
});

export const authorize = onRequest(async (request, response) => {
  const input: string = JSON.stringify(request.body);
  logger.debug("authorize called: " + JSON.stringify(input));
  // #TODO AuthorizationRequiredがfalseの時の処理

  const obj: AuthorizationDto = JSON.parse(input);
  const school: School | undefined = await schoolsRepository.getSchoolById(
    obj.schoolId,
  );

  if (school === undefined) {
    response.status(404).send("School not found");
    return;
  }

  if (school.authorizationKey === obj.authorizationKey) {
    response.status(200).send("Authorized");
    return;
  }

  response.status(401).send("Unauthorized");
});

export const getSchools = onRequest(async (request, response) => {
  const schools: School[] = await schoolsRepository.getSchools();
  response.status(200).send(schools);
});
