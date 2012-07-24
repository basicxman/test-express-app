### package.json

* Add dependencies here.
* Change version number here.

### app.coffee

* Assign routes to controller actions.

### controllers/

* Controllers should create the response using functions from models that are
  fed data from the controller.
* Note plural form of noun (promotions).

### models/

* Each model should act as an interface to the data (postgres, etc) and contain
  similar helper methods that the previous wrapper files contained.
* Note singular form of noun (promotion).

### test/functional/

* Tests here should test the results of requests.

### test/unit/

* Tests here should test the results of model functions.

### Looking at this test app

1. View `package.json`, look at dependencies.
2. View `app.coffee`, read through code and comments.
3. View `controllers/index.coffee` for a simple example of a controller.
4. View `models/promotion.coffee` to see module exports.
5. View `controllers/promotions.coffee` to see the controller using a model.
6. View `test/functional/index_test.coffee` to see a simple response assertion.
7. View `test/unit/promotion_test.coffee` to see the promotion model assertions.
