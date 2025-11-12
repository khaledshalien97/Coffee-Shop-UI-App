import 'package:flutter/material.dart';

SizedBox buttonAddCart() {
  return SizedBox(
    height: 70,
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFB87453),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 0,
      ),
      child: const Text(
        "Add to cart",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
