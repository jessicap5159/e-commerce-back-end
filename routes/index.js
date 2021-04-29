const router = require('express').Router();
const apiRoutes = require('./api');
const productRoutes = require('./api/product-routes');

router.use('/api', apiRoutes);
router.use('/products', productRoutes);

router.use((req, res) => {
  res.send("<h1>Wrong Route!</h1>")
});

module.exports = router;