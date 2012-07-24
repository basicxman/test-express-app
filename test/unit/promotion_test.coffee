promotions = require("../../models/promotion")

exports["test new promotion ID is unique"] = (beforeExit, assert) ->
  a = promotions.newPromotionId()
  b = promotions.newPromotionId()
  assert.equal(false, a == b)

exports["test incorrect promotion ID returns false"] = (beforeExit, assert) ->
  assert.equal(false, promotions.getPromotionIdByName("thisisntinthelist"))

exports["test correct promotion ID is given"] = (beforeExit, assert) ->
  assert.equal("d72267f7-13d4-42dc-8145-f8b52eeb2793", promotions.getPromotionIdByName("ae"))
  assert.equal("526e865f-c89c-47d7-8e74-cfccffd25475", promotions.getPromotionIdByName("coke"))
  assert.equal("3217488e-15ff-4ea4-96b7-3f39ce91d82d", promotions.getPromotionIdByName("bestbuy"))
