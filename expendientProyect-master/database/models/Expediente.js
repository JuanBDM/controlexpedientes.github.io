module.exports = (sequelize, DataTypes)=>{
    let alias = "Expediente";
    let cols={
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true
        },
        numero_expedient: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        fecha_inicio: {
            type: DataTypes.DATE,
            allowNull: false
        },
        tipo_expediente: {
            type: DataTypes.STRING,
            allowNull: false
        },
        asunto:{
            type: DataTypes.STRING,
            allowNull: false
        },
        proveedor: {
            type: DataTypes.STRING,
            allowNull: false
        },
        estado: {
            type: DataTypes.STRING,
            allowNull: false
        },
        fecha_estado: {
            type: DataTypes.DATE,
            allowNull: false
        },
        solicitante: {
            type: DataTypes.STRING
        },
        contratacion: {
            type: DataTypes.STRING
        },
        monto: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        user_id: {
            type: DataTypes.INTEGER,
            foreignKey: true
        }

    }
    let config = {
        tableName: 'expedientes',
        timestamps: false
    }
        
    const Expediente = sequelize.define(alias, cols, config);
    Expediente.associate= function(models){
        Expediente.belongsTo(models.User, {
            as: 'user',
            foreignKey: 'user_id'
        })
    } 
    return Expediente
    
    }