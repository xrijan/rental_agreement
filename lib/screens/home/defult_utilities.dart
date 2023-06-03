import 'package:flutter/material.dart';
import 'package:rental_agreement/widgets/app_bar_widget.dart';



class Product {
  final String name;
  int quantity;

  Product({required this.name, this.quantity = 0});
}

class ProductPage extends StatefulWidget {


  const ProductPage({super.key});

  @override
  ProductPageState createState() => ProductPageState();
}

class ProductPageState extends State<ProductPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  final List<Product> _products = [
    Product(name: 'Fan',            quantity: 1),
    Product(name: 'AC',             quantity: 3),
    Product(name: 'Geyser',         quantity: 0),
    Product(name: 'Mirror',         quantity: 0),
    Product(name: 'Table',          quantity: 0),
    Product(name: 'Bed',            quantity: 0),
    Product(name: 'Chair',          quantity: 0),
    Product(name: 'Light bulb',     quantity: 0),
    Product(name: 'Tube light',     quantity: 0),
    Product(name: 'Sofa',           quantity: 0),
    Product(name: 'Fridge',         quantity: 0),
    Product(name: 'T.V',            quantity: 0),
    Product(name: 'Dining Table',   quantity: 0),
    Product(name: 'Washing Machine',quantity: 0),
    Product(name: 'Stove',          quantity: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Default Claws', onPressed: () { Navigator.pop(context); },),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _products.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_products[index].name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (_products[index].quantity > 0) {
                              _products[index].quantity--;
                            }
                          });
                        },
                      ),
                      Text(_products[index].quantity.toString()),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            _products[index].quantity++;
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
