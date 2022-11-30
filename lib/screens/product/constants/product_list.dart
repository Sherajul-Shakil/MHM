class ProductModel {
  String image;
  String title;

  ProductModel({
    required this.image,
    required this.title,
  });
}

List<ProductModel> productList = [
  ProductModel(
    image: 'images/male.png',
    title: 'Male',
  ),
  ProductModel(
    image: 'images/female.png',
    title: 'Female',
  ),
  ProductModel(
    image: 'images/teen.png',
    title: 'Teen',
  ),
  ProductModel(
    image: 'images/student.png',
    title: 'Student',
  ),
  ProductModel(
    image: 'images/kid.png',
    title: 'Kid',
  ),
  ProductModel(
    image: 'images/couple.png',
    title: 'Couple',
  ),
];
