import 'package:carrot_market_01/models/product.dart';
import 'package:carrot_market_01/screens/_components/product_detail.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  // 규칙 1 const 생성자는 초기화 되어야 하는 변수는 반드시 상수 값이 되어야 한다.
  // const(컴파일 시), final(런타임 시)
  final Product product;

  const ProductItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              product.urlToImage,
              width: 115.0,
              height: 115.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0),
          ProductDetail(product: product)
        ],
      ),
    );
  }
}
