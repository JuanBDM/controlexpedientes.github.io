const express = require("express")
const router = express.Router();
const multer = require('multer');
const path = require('path');
const usersController = require("../controllers/usersController");

//MIddlewares
const validateRegisterMiddleware = require('../middlewares/validateRegisterMiddleware')

//Rutas

//Register
router.get('/register', usersController.register);
router.post('/register', validateRegisterMiddleware, usersController.processRegister)

//Login
router.get('/login', usersController.login);
router.post('/login', validateRegisterMiddleware,  usersController.processLogin);
 
module.exports = router;