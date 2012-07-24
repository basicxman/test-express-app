uuid = require("node-uuid")

# Assign model methods with exports.methodName

exports.getPromotionIdByName = (name) ->
  if name == "ae"
    return "d72267f7-13d4-42dc-8145-f8b52eeb2793"
  else if name == "coke"
    return "526e865f-c89c-47d7-8e74-cfccffd25475"
  else if name == "bestbuy"
    return "3217488e-15ff-4ea4-96b7-3f39ce91d82d"
  else
    return false

exports.newPromotionId = ->
  return uuid.v4()
