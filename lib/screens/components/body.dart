import 'package:flutter/material.dart';
import 'package:myfutterapp/constants.dart';
import 'package:myfutterapp/models/Product.dart';
import 'package:myfutterapp/screens/details/detailed_screen.dart';
import 'Item_card.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Text("Women",style:Theme.of(context)
        .textTheme
        .headline5
        .copyWith(fontWeight:FontWeight.bold),
        ),
      ),
      Categories(),
      Expanded(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.70,
                  ), 
        itemBuilder: (context, index) => ItemCard(
                        product: products[index],
                        press: ()=>Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>DetailedScreen(
                            product:products[index]
                            )
                            )
                          ),
                      )),
      )
                )
     // ItemCard()
    ],
    );
  }
}




