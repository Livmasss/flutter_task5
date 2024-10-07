import 'package:flutter/material.dart';
import 'package:flutter_task3/presentation/models/ProductModel.dart';

class ProductWidget extends StatefulWidget {
  final ProductModel product;
  final VoidCallback onTap;

  const ProductWidget({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  State<ProductWidget> createState() => _ProductWidgetState(
      product: product,
      onTap: onTap
  );
}

class _ProductWidgetState extends State<ProductWidget> {
  final ProductModel product;
  final VoidCallback onTap;

  _ProductWidgetState({
    required this.product,
    required this.onTap,
  });

  IconData getFavoriteIconData() {
    if (product.isFavorite) {
      return Icons.favorite_outlined;
    } else {
      return Icons.favorite_outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Image.network(
                product.imageUri,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              Row(
                children: [
                  Text("${product.cost}₽"),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        product.isFavorite = !product.isFavorite;
                      });
                    },
                    icon: Icon(getFavoriteIconData())
                  )
                ],
              ),
              Text(product.title, overflow: TextOverflow.clip),
              Text(product.subtitle, overflow: TextOverflow.clip),
            ],
          ),
        ),
      ),
    );
  }
}
