// ignore_for_file: non_constant_identifier_names

class GridListItemModel {
  String image;
  String title;

  GridListItemModel({
    required this.image,
    required this.title,
  });
}

List<GridListItemModel> gridListItemModel = [
  GridListItemModel(
    image: 'images/product.png',
    title: 'Product',
  ),
  GridListItemModel(
    image: 'images/emergency.png',
    title: 'Emergency',
  ),
  GridListItemModel(
    image: 'images/gift.png',
    title: 'Surprice Gift',
  ),
  GridListItemModel(
    image: 'images/b2b.png',
    title: 'Entrepreneur',
  ),
  GridListItemModel(
    image: 'images/food.png',
    title: 'Foodies Club',
  ),
  GridListItemModel(
    image: 'images/lotery.png',
    title: 'Lotery',
  ),
  GridListItemModel(
    image: 'images/myOffer.png',
    title: 'My offers',
  ),
  GridListItemModel(
    image: 'images/cashBack.png',
    title: 'Cashbach offer',
  ),
];
