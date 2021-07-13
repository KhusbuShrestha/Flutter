import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shipping_app/model/product.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shipping_app/pages/product_details.dart';
import 'package:shipping_app/provider/product-provider.dart';
import 'package:shipping_app/widget/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> products = [
    Product(
        sku: '100',
        name: 'Burgur',
        price: 500,
        sp: 500,
        description:
            'Burgur is a chain of Burger stores located in and around south-east​ Melbourne. Our first store opened in 2017 in Berwick, Victoria.',
        image:
            'https://images.pexels.com/photos/1893557/pexels-photo-1893557.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    Product(
        sku: '102',
        name: 'Alfajor',
        price: 501,
        sp: 501,
        description:
            'An alfajor or alajú is a traditional confection found in Argentina, Bolivia, Chile, Colombia, Ecuador, Paraguay, Peru, the Philippines, Southern Brazil, Southern France, Spain, Uruguay, and Venezuela. The archetypal alfajor entered Iberia during the period of al-Andalus.',
        image:
            'https://images.pexels.com/photos/461060/pexels-photo-461060.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    Product(
        sku: '103',
        name: 'Afghan biscuits',
        description:
            'An Afghan is a traditional New Zealand biscuit made from flour​, butter, cornflakes, sugar and cocoa powder, topped with chocolate icing',
        price: 502,
        sp: 502,
        image:
            'https://images.pexels.com/photos/2067621/pexels-photo-2067621.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    Product(
        sku: '104',
        name: 'Abernethy',
        description:
            'Abernethy biscuits are still popular in Scotland. They are manufactured commercially by Simmers (Edinburgh), Browns Bakery (Orkney Islands), Walls Bakeries (Shetland Islands), and by Stag Bakeries (Isle of Lewis).',
        price: 503,
        sp: 503,
        image:
            'https://images.pexels.com/photos/3973017/pexels-photo-3973017.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    Product(
        sku: '105',
        name: 'Aachener Printen',
        description:
            'Aachener Printen are a type of Lebkuchen originating from the city of Aachen in Germany. Somewhat similar to gingerbread, they were originally sweetened',
        price: 504,
        sp: 504,
        image:
            'https://images.pexels.com/photos/1546890/pexels-photo-1546890.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    Product(
        sku: '106',
        name: 'Shortbread Cookies',
        description:
            'Shortbread cookies are made with a large amount of butter or shortening, which lends them the name “short.” Due to their low amount of flour and sugar, they have a classic crumbly and tender texture.',
        price: 505,
        sp: 505,
        image:
            'https://images.pexels.com/photos/267308/pexels-photo-267308.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    Product(
        sku: '107',
        name: 'Cookies',
        description:
            'Quite different from macarons, macaroons are coconut based with a dense, lumpy texture that’s sweet and chewy. Some macaroons are even dipped in chocolate for extra indulgence.',
        price: 506,
        sp: 506,
        image:
            'https://images.pexels.com/photos/7390/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=5000'),
    Product(
        sku: '108',
        name: 'Macaron Cookies',
        description:
            'Macarons are meringue-based cookies made with almond meal, egg whites, and powdered sugar with a creme ganache in the middle. The cookie shell features a delicate outer crust that houses a chewy meringue texture inside.',
        price: 507,
        sp: 507,
        image:
            'https://images.pexels.com/photos/808941/pexels-photo-808941.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    Product(
        sku: '109',
        name: 'Biscotti Cookies',
        description:
            'Biscotti actually means “twice baked” and the cookie is indeed baked twice, resulting in its hard and crunchy texture. Biscotti come in a wide array of flavors and toppings, from plain almond to double chocolate and so much more.',
        price: 508,
        sp: 508,
        image:
            'https://images.pexels.com/photos/461431/pexels-photo-461431.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
  ];
  @override
  Widget build(BuildContext context) {
    ProductProvider product = Provider.of<ProductProvider>(context);
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(212, 195, 207, 1),
        title: Center(child: Text('Food Hub')),
        actions: [
          Row(
            children: [
              Text(product.totalItem.toString()),
              IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.pushNamed(context, 'card');
                  }),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Carousel(
                images: [
                  NetworkImage(
                      'https://images.pexels.com/photos/3768146/pexels-photo-3768146.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  NetworkImage(
                      'https://images.pexels.com/photos/1775043/pexels-photo-1775043.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ],
                // showIndicator: false,
                dotSize: 4,
                dotSpacing: 9,

                moveIndicatorFromBottom: 180,
                overlayShadow: true,
                overlayShadowColors: Colors.white,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetails(
                              product: products[index],
                            ),
                          ),
                        );
                      },
                      tileColor: Color.fromRGBO(245, 235, 242, 1),
                      leading: Image.network(
                        products[index].image,
                      ),
                      title: Text(products[index].name),
                      subtitle: Text(
                        products[index].sp.toString(),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
