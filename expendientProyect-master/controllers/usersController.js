const { validationResult } = require('express-validator');
const res = require('express/lib/response');
const bcrypt = require("bcryptjs")
const fs = require("fs");
const path = require("path");
const db = require("../database/models");
const { devNull } = require('os');




const usersController = {
    register: (req, res) => {
        return res.render('users/register')
    },
    processRegister: (req, res) => {
        db.User.findOne({
            where: {
                email: req.body.email
            }
        })
            .then((userInDB) => {
                if (userInDB) {
                    return res.render('users/register', {
                        errors: {
                            email: {
                                msg: 'Este email ya esta registrado'
                            }
                        },
                        oldData: req.body
                    });
                }
                db.User.create({
                    nombre: req.body.nombre,
                    email: req.body.email,
                    password: bcrypt.hashSync(req.body.password, 10)
                })
            })

            .then(() => {
                res.redirect('/users/login')
            })
            .catch(errors => res.send(errors))
    },
    login: (req, res) => {
        return res.render('users/login')
    },
    processLogin: (req, res) => {
        db.User.findOne({
            where: {
                email: req.body.email
            }
        })
            .then((userToLogin) => {
                if (userToLogin) {
                    let isOkThePassword = bcrypt.compareSync(req.body.password, userToLogin.password);
                    if (isOkThePassword) {
                        req.session.userLogged = userToLogin;


                        return res.redirect('/expedientes/listaExpedientes')
                    }

                    return res.render('users/login', {
                        errors: {
                            email: {
                                msg: 'Credenciales invalidas'
                            }
                        }
                    })
                }
                return res.render('users/login', {
                    errors: {
                        email: {
                            msg: 'No se encuentra el email en la base de datos'
                        }
                    }
                })
                    .catch(errors => res.send(errors))
            })
    }
}

module.exports = usersController;