const sequelize = require('./config/connection');
const { Category, Tag, Product, ProductTag } = require('./models/index');
const categoriesData = [
    { category_name: 'Electronics' },
    { category_name: 'Clothing' },
    { category_name: 'Books' },
    { category_name: 'Toys' },
  ];
  
  const tagsData = [
    { tag_name: 'Electronics' },
    { tag_name: 'Fashion' },
    { tag_name: 'Technology' },
    { tag_name: 'Kids' },
  ];
  
  const productsData = [
    {
      product_name: 'Laptop',
      price: 999.99,
      stock: 10,
      category_id: 1, // Category ID for Electronics
    },
    // Add other product data here...
  ];
  
  const productTagsData = [
    { product_id: 1, tag_id: 1 }, // Laptop - Electronics
    // Add other product-tag associations here...
  ];
  const seedDatabase = async () => {
    try {
      // Insert Categories
      await Category.bulkCreate(categoriesData);
  
      // Insert Tags
      await Tag.bulkCreate(tagsData);
  
      // Insert Products
      await Product.bulkCreate(productsData);
  
      // Insert ProductTags
      await ProductTag.bulkCreate(productTagsData);
  
      console.log('Database seeding completed.');
      process.exit(0);
    } catch (error) {
      console.error('Error seeding database:', error);
      process.exit(1);
    }
  };
  
  // Call the seed function
  seedDatabase();
  