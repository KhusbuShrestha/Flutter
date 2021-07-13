import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shipping_app/model/product.dart';
import 'package:shipping_app/provider/product-provider.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    ProductProvider product = Provider.of<ProductProvider>(context);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.grey.shade300,
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Container(
                child: Text("items:(" + product.totalItem.toString() + ")"),
              ),
              Container(
                child: Text("Total: (" + product.totalAmount.toString()),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(212, 195, 207, 1),
          title: Center(child: Text('Card Page')),
        ),
        body: product.totalItem == 0
            ? Center(
                child: Text('no card'),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: product.totalItem,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: Image.asset(product.products[index].image),
                            title: Text(product.products[index].name),
                            trailing: IconButton(
                                icon: Icon(Icons.remove_circle),
                                onPressed: () {
                                  product
                                      .removeProduct(product.products[index]);
                                }),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
