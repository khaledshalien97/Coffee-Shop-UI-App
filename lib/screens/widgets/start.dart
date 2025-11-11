import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({required this.rating});
  final double rating;

  @override
  Widget build(BuildContext context) {
    final full = rating.floor();
    final half = (rating - full) >= 0.25 && (rating - full) < 0.75;
    final widgets = <Widget>[];
    for (var i = 0; i < full && widgets.length < 5; i++) {
      widgets.add(
        Icon(Icons.star_rounded, size: 16, color: AppColors.brownColor),
      );
    }
    if (half && widgets.length < 5) {
      widgets.add(
        Icon(Icons.star_half_rounded, size: 16, color: AppColors.brownColor),
      );
    }
    while (widgets.length < 5) {
      widgets.add(
        Icon(Icons.star_border_rounded, size: 16, color: AppColors.brownColor),
      );
    }
    return Row(children: widgets);
  }
}
