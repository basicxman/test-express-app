express    = require("express")
pg         = require("pg")
db         = require("./db")

# Require each controller.
index      = require("./controllers/index")
promotions = require("./controllers/promotions")

# Assign a new Express instance to module.exports and app, must use
# module.exports so Expresso tests can use the app.
app = module.exports = express.createServer()

# Middleware and configuration, we might want to move this elsewhere...
# ./config/
# ./middleware/
app.use express.bodyParser()
app.use express.cookieParser()
app.use (req, res, next) ->
  req.accepts("application/json")
  res.removeHeader("X-Powered-By")

  next()

console.log db.production

# Route the index controller
app.all "/", index.index

# Route the promotions controller
app.post "/promotions/:promo", promotions.get
app.post "/promotions",        promotions.new

# Spool up server
app.listen 3000, ->
  console.log "Express server listening on port %d in %s mode", app.address().port, app.settings.env
