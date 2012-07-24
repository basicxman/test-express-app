app = require("../../app")

# exports["description of test"] = (beforeExit, assert) ->
exports["test index"] = (beforeExit, assert) ->
  assert.response(app, {
      url: "/"
    , method: "GET"
  },
  {
    body: new RegExp("online.$")
  })
