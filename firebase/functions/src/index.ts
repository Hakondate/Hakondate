const {logger} = require("firebase-functions");
const {onRequest} = require("firebase-functions/v2/https");

exports.helloWorld = onRequest(async (res: any) => {
  logger.info("Hello logs!", {structuredData: true});
  res.send("Hello from Firebase!");
});
