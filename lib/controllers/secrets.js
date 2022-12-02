const { Router } = require('express');
const authenticate = require('../middleware/authenticate');

module.exports = Router().get('/', [authenticate], async (req, res, next) => {
  try {
    console.log('signed in user', req);
    // get the list of secrets from the database
    const secrets = []; // replace with Secret.getAll() (make the model and function)
    // return the list of secrets
    res.json(secrets);
  } catch (e) {
    next(e);
  }
});
