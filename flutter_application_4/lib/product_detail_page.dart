import 'package:flutter/material.dart';
import 'main.dart';
import 'delete_page.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  final Function(Product) deleteProduct; // Add this line

  const ProductDetailPage({required this.product, required this.deleteProduct}); // Update constructor

  @override
  Widget build(BuildContext context) {
    const placeholderImage = 'lib/assets/images/not-image.png';

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.asset(
              product.imageUrl.isNotEmpty ? product.imageUrl : placeholderImage,
              fit: BoxFit.cover,
              height: 200,
            ),
            const SizedBox(height: 16),
            Text(
              product.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              product.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              "Цена: \$${product.price}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeletePage(
                        product: product,
                        onDelete: () {
                          deleteProduct(product); // Call the delete function
                          Navigator.pop(context); // Go back after deletion
                        },
                      ),
                    ),
                  );
                },
                child: const Text('Удалить обьявление'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
