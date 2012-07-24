promotion = require("../models/promotion")

# Actions get data from the promotion model and construct JSON for the
# response.
exports.get = (req, res) ->
  id = promotion.getPromotionIdByName(req.params.promo)
  if not id
    res.json({ error: "none_found" })
  else
    res.json({ promotion_id: id })

exports.new = (req, res) ->
  res.json({ promotion_id: promotion.newPromotionId() })
