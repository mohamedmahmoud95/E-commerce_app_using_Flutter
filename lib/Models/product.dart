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
    picUrl: "https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png"
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
    picUrl: "assets/images/hoodie.png");
Product shoe = Product(
    name: "Shoe",
    category: 'Shoes',
    brandName: "Louis Vuittion",
    rating: 3.5,
    price: 300,
    description:
    'Diligently crafted product, designed with exquisite attention to detail, using premium materials that ensure durability and elevate your style.',
    picUrl: "https://i.ebayimg.com/images/g/izkAAOSw8LxjlsZ6/s-l400.png");

Product backpack1 = Product(
    name: "Backpack1",
    category: 'Bags',
    brandName: "Louis Vuittion",
    rating: 3.5,
    price: 300,
    description:
    'Diligently crafted product, designed with exquisite attention to detail, using premium materials that ensure durability and elevate your style.',
    picUrl: "assets/images/backpacks/backpack1.png");
Product backpack2 = Product(
    name: "Backpack2",
    category: 'Bags',
    brandName: "Louis Vuittion",
    rating: 4.5,
    price: 250,
    description:
    'Diligently crafted product, designed with exquisite attention to detail, using premium materials that ensure durability and elevate your style.',
    picUrl: "assets/images/backpacks/backpack2.png");
Product backpack3 = Product(
    name: "Backpack3",
    category: 'Bags',
    brandName: "Louis Vuittion",
    rating: 5,
    price: 200,
    description:
    'Diligently crafted product, designed with exquisite attention to detail, using premium materials that ensure durability and elevate your style.',
    picUrl: "assets/images/backpacks/backpack3.png");
Product backpack4 = Product(
    name: "Backpack4",
    category: 'Bags',
    brandName: "Louis Vuittion",
    rating: 4,
    price: 2750,
    description:
    'Diligently crafted product, designed with exquisite attention to detail, using premium materials that ensure durability and elevate your style.',
    picUrl: "assets/images/backpacks/backpack4.png");

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
    picUrl: "https://www.pngmart.com/files/22/Handbag-PNG.png");
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

    picUrl:
    "https://www.nicepng.com/png/detail/951-9517748_dior-cruise-blue-patent-lady-dior-bag-designer.png");
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

    picUrl: "https://www.pngmart.com/files/15/Orange-Ladies-Handbag-PNG.png");
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

    picUrl:
    "https://www.cartier.com/variants/images/25372685655516962/img1/w400.jpg");
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

    picUrl:
    "https://www.pngitem.com/pimgs/m/194-1942574_transparent-purses-black-handbag-amal-clooney-bags-hd.png");


