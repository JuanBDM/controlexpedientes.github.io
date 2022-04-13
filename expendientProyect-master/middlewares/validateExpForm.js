const { body } = require('express-validator');

module.exports = [
    body('numero_expedient').notEmpty().withMessage('Debe completar este campo')
    .isLength({max: 5}).withMessage('Debe tener 5 digitos').isLength({min: 4}).withMessage('Debe tener 5 digitos') .isNumeric().withMessage('Solo se aceptan numeros'),
    body('fecha_inicio').notEmpty().withMessage('Debe elegir una fecha'),
    body('tipo_expediente').notEmpty().withMessage('Debe seleccionar un tipo de expediente'),
    body('asunto').notEmpty().withMessage('Debe escribir un asunto'),
    body('solicitante').notEmpty().withMessage('Debe escribir el solicitante'),
    body('contratacion').notEmpty().withMessage('Debe seleccionar un tipo de contratacion'),
    body('proveedor').notEmpty().withMessage('Debe escribir el beneficiario'),
    body('estado').notEmpty().withMessage('Debe seleccionar un estado'),
    body('fecha_estado').notEmpty().withMessage('Debe seleccionar la fecha de estado'),
    body('monto').notEmpty().withMessage('Escriba el importe requerido').isNumeric().withMessage('Solo se aceptan valores numericos')
]