'use strict'

module.exports = (sequelize, DataTypes) ->
  Todo = sequelize.define('Todo', {
    task_name: DataTypes.STRING
    done: DataTypes.BOOLEAN
  }, classMethods: associate: (models) ->
    # associations can be defined here
    return
  )
  Todo
