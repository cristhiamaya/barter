var express = require('express');
var router = express.Router();
var sequelizeConf = require('../bin/www');


/* GET users listing. */
router.get('/getByProductId/:productId', function(req, res, next) {

  return sequelizeConf.sequelize.sync()
  .then(() => sequelizeConf.Comment.findAll({
    where: [
      { productId: req.params.productId }
    ]
  }))
  .then(comments => {
    console.log(comments);
    res.json(comments)
  });

  // return sequelizeConf.sequelize.sync()
  // .then(() => sequelizeConf.Product.create({
  //   idOwner: 2,
  //   description: "YO"
  // }))
  // .then(jane => {
  //   console.log(jane.toJSON());
  //   res.json(jane)
  // });

  // res.send('respond with a resource');
});

router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

module.exports = router;