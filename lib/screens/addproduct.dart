import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/editproduct.dart';
import 'package:flutter_application_1/widgets/category.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        appBar: buildAppBar(context),
        body: ListView(physics: BouncingScrollPhysics(), children: [
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/kisspng_sunscreen_lotion_facial_product_kind_skincare_mask_starfish.png'),
                      radius: 80.0,
                      backgroundColor: Colors.black54,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.list_alt_outlined),
                        SizedBox(width: 20),
                        Container(
                          child: Text('Add product information :',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 30,
                                  letterSpacing: 1.5,
                                  fontFamily: 'Bebas')),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        LogInput(
                          icon: Icons.navigate_next_rounded,
                          hint: 'Product Name',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                          secret: false,
                        ),
                        LogInput(
                          icon: Icons.monetization_on_sharp,
                          hint: 'price',
                          inputType: TextInputType.number,
                          inputAction: TextInputAction.next,
                          secret: false,
                        ),
                        LogInput(
                          icon: Icons.local_grocery_store_sharp,
                          hint: 'Quantity',
                          inputType: TextInputType.text,
                          inputAction: TextInputAction.next,
                          secret: false,
                        ),
                        
                        LogInput(
                          icon: Icons.date_range,
                          hint: 'Expiry date',
                          inputType: TextInputType.datetime,
                          inputAction: TextInputAction.next,
                          secret: false,
                        ),
                        LogInput(
                          icon: Icons.short_text_sharp,
                          hint: 'Description',
                          inputType: TextInputType.text,
                          inputAction: TextInputAction.next,
                          secret: false,
                        ),
                        LogInput(
                          icon: Icons.navigate_next_rounded,
                          hint: 'Size',
                          inputType: TextInputType.number,
                          inputAction: TextInputAction.done,
                          secret: false,
                        ),
                        Category(),
                      ],
                    ),
                    Column(children: [
                      SizedBox(height: 30),
                      RoundedButton(
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return EditProduct();
                              },
                            ),
                          );
                        },
                        buttonText: 'Add product',
                      ),
                    ])
                  ])),
            )
          ]),
        ]),
      )
    ]);
  }
}


AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black54,
        )),
    title: Text(
      'Add Product',
      style: TextStyle(
        fontSize: 30,
        color: Colors.black54,
        fontFamily: 'bebas',
      ),
    ),
    centerTitle: true,
  );
}
