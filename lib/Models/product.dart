class Product {
  String? name;
  String? id;
  String? picUrl;
  String? brandName;
  double rating;
  double price;
  String? category;
  String? description;
  String? returnPolicy;
  int numInCart; //number/count of item of this product added to cart

  //constructor
  Product(
      {this.name,
        this.id,
        this.picUrl,
        this.brandName,
        this.rating = 0,
        this.price = 0,
        this.category,
        this.description,
        this.returnPolicy,
        this.numInCart = 0,
      });

}


Product handbag = Product(
    name: "Handbag",
    category: 'Bags',
    brandName: "Louis Vuittion",
    rating: 4.5,
    price: 200,
    description:
    'Diligently crafted product, designed with exquisite attention to detail, using premium materials that ensure durability and elevate your style.',
    picUrl: "assets/purse.png"
  //  "assets/images/handbag.png"
);
Product hoodie = Product(
    name: "Hoodie",
    category: 'Clothing',
    brandName: "Louis Vuittion",
    rating: 4,
    price: 250,
    description:
    'Diligently crafted product, designed with exquisite attention to detail, using premium materials that ensure durability and elevate your style.',
    picUrl: "assets/images/purse1.png");
Product shoe = Product(
    name: "Shoe",
    category: 'Shoes',
    brandName: "Louis Vuittion",
    rating: 3.5,
    price: 300,
    description:
    'Diligently crafted product, designed with exquisite attention to detail, using premium materials that ensure durability and elevate your style.',
    picUrl: "assets/images/purse3.png");

Product backpack1 = Product(
    name: "Backpack1",
    category: 'Bags',
    brandName: "Louis Vuittion",
    rating: 3.5,
    price: 300,
    description:
    'Diligently crafted product, designed with exquisite attention to detail, using premium materials that ensure durability and elevate your style.',
    picUrl: "assets/images/purse4.png");
Product backpack2 = Product(
    name: "Backpack2",
    category: 'Bags',
    brandName: "Louis Vuittion",
    rating: 4.5,
    price: 250,
    description:
    'Diligently crafted product, designed with exquisite attention to detail, using premium materials that ensure durability and elevate your style.',
    picUrl: "assets/images/purse5.png");
Product backpack3 = Product(
    name: "Backpack3",
    category: 'Bags',
    brandName: "Louis Vuittion",
    rating: 5,
    price: 200,
    description:
    'Diligently crafted product, designed with exquisite attention to detail, using premium materials that ensure durability and elevate your style.',
    picUrl: "assets/images/purse6.png");
Product backpack4 = Product(
    name: "Backpack4",
    category: 'Bags',
    brandName: "Louis Vuittion",
    rating: 4,
    price: 2750,
    description:
    'Diligently crafted product, designed with exquisite attention to detail, using premium materials that ensure durability and elevate your style.',
    picUrl: "assets/images/purse7.png");

List<Product> sampleProducts = [
  shoe,
  handbag,
  hoodie,
  shoe,
  handbag,
  hoodie,
  backpack1,
  backpack2,
  backpack3,
  backpack4
];




Product sampleProduct1 = Product(
    name: 'Hand bag',
    rating: 4,
    price: 150,
    brandName: "Louis Vuittion",
    description: "- Made From High Strength Polyester\n"
        "- 19 Liter Capacity Approximate\n"
        "- Long Shoulder Straps\n"
        "- Water-Resistant 900d Polyester\n",
    returnPolicy: "Free return within 15 days of purchase\n",
    picUrl: "assets/purse1.png");
Product sampleProduct2 = Product(
    name: 'Hand bag2',
    rating: 3,
    price: 200,
    brandName: "Louis Vuittion",
    description: "- Made From High Strength Polyester\n"
        "- 19 Liter Capacity Approximate\n"
        "- Long Shoulder Straps\n"
        "- Water-Resistant 900d Polyester\n",
    returnPolicy: "Free return within 15 days of purchase\n",

    picUrl: "assets/purse8.png"
    );
Product sampleProduct3 = Product(
    name: 'Hand bag3',
    rating: 2,
    price: 350,
    brandName: "Louis Vuittion",
    description: "- Made From High Strength Polyester\n"
        "- 19 Liter Capacity Approximate\n"
        "- Long Shoulder Straps\n"
        "- Water-Resistant 900d Polyester\n",
    returnPolicy: "Free return within 15 days of purchase\n",

    picUrl: "assets/purse4.png"
);
Product sampleProduct4 = Product(
    name: 'Hand bag4',
    rating: 5,
    price: 100,
    brandName: "Louis Vuittion",
    description: "- Made From High Strength Polyester\n"
        "- 19 Liter Capacity Approximate\n"
        "- Long Shoulder Straps\n"
        "- Water-Resistant 900d Polyester\n",
    returnPolicy: "Free return within 15 days of purchase\n",

    picUrl: "assets/purse5.png");

Product sampleProduct5 = Product(
    name: 'Hand bag5',
    rating: 4.5,
    price: 500,
    brandName: "Louis Vuittion",
    description: "- Made From High Strength Polyester\n"
        "- 19 Liter Capacity Approximate\n"
        "- Long Shoulder Straps\n"
        "- Water-Resistant 900d Polyester\n",
    returnPolicy: "Free return within 15 days of purchase\n",

    picUrl: "assets/purse6.png");



