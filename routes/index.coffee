express = require 'express'
router = express.Router()

models = require '../models'


# GET home page.

router.get '/', (req, res) ->
  models.Todo.findAll().then (todos) ->
    res.render 'index', { todos: todos, title: 'Express Guru Krupa Sadguru Thunai' }


router.post '/todos/create', (req, res) ->
  console.log req.body
  models.Todo.create({
    task_name: req.body['task_name']
  }).then ->
    res.redirect '/'

router.get '/todos/destroy/:id', (req, res) ->
  models.Todo.findById(req.params.id).then (todo) ->
    console.log todo
    todo.destroy().then (todos) ->
      res.redirect '/'

module.exports = router
