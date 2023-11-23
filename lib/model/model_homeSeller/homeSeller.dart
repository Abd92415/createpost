import 'package:pagepost/model/model_homeSeller/review.dart';

class Product {
  String title;
  String urlImageProduct;
  int price;
  String descrption;
  int starRating;
  List<Review> reviews;
  Product(
      {required this.descrption,
      required this.title,
      required this.price,
      required this.reviews,
      required this.starRating,
      required this.urlImageProduct});
}
