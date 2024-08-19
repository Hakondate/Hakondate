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

// Start writing functions
// https://firebase.google.com/docs/functions/typescript

import * as admin from "firebase-admin";
admin.initializeApp();

export const helloWorld = onRequest((request, response) => {
  logger.info("Hello logs!", {structuredData: true});
  response.send("Hello from Firebase!");
});

export const authorize = onRequest((request, response) => {
  const input: string = JSON.stringify(request.body);
  logger.debug("authorize called: " + input);

  const obj: AuthorizationDto = JSON.parse(input);
  admin.firestore().collection("schools").get().then((snapshot) => {
    snapshot.forEach((doc) => {
      console.log(doc.data());
    });
  });

  response.send(obj.authorizationKey);
});
