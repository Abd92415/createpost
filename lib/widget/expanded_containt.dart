import 'package:flutter/material.dart';
import 'package:pagepost/model/model_homeSeller/homeSeller.dart';
import 'package:pagepost/widget/starWidget.dart';

class ExpandedContentWidget extends StatelessWidget {
  const ExpandedContentWidget({required this.product, Key? key})
      : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(product.descrption),
            const SizedBox(height: 8),
            buildAddressRating(product: product),
            const SizedBox(height: 12),
            buildReview(product: product)
          ],
        ),
      );

  Widget buildAddressRating({
    required Product product,
  }) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            product.title,
            style: const TextStyle(color: Colors.black45),
          ),
          StarsWidget(stars: product.starRating),
        ],
      );

  Widget buildReview({
    required Product product,
  }) =>
      Row(
        children: product.reviews
            .map((review) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage(review.urlImage),
                  ),
                ))
            .toList(),
      );
}
