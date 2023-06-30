class Product {
  String? name;
  String? id;
  String? picUrl;
  String? brandName;
  double rating;
  double price;
  String? category;
  String? description;

  //constructor
  Product(
      {this.name,
        this.id,
        this.picUrl,
        this.brandName,
        this.rating = 0,
        this.price = 0,
        this.category,
        this.description});
}
