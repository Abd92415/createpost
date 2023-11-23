import 'package:flutter/material.dart';
import 'package:pagepost/model/model_homeSeller/homeSeller.dart';

class LatLongWidget extends StatelessWidget {
  final Product dataproduct;

  const LatLongWidget({
    required this.dataproduct,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            dataproduct.title,
            style: TextStyle(color: Colors.white70),
          ),
          const Icon(Icons.location_on, color: Colors.white70),
          Text(
            dataproduct.descrption,
            style: const TextStyle(color: Colors.white70),
          )
        ],
      );
}
