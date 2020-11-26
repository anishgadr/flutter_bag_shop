import 'package:flutter/material.dart';
import 'package:myfutterapp/models/Product.dart';
import 'package:myfutterapp/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myfutterapp/screens/details/components/product_title_with_image.dart';
import 'color_and_size.dart';
import 'counter_with_favbtn.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(
          height: size.height,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: size.height * 0.3),
              padding: EdgeInsets.only(top: size.height * 0.12, left: kDefaultPaddin,right: kDefaultPaddin),
              height: 500,
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24))
                ),

              child: Column(
              children: <Widget>[
                ColorandSize(product: product),
                Description(product: product),
                CounterWithFav(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
                  child: Row(
                    children: <Widget>[
                     Container(
                       margin: EdgeInsets.only(right: kDefaultPaddin),
                       height: 50,
                       width: 58,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(18),
                         border: Border.all(color:product.color)
                       ),
                       child: IconButton(icon: SvgPicture.asset("assets/icons/add_to_cart.svg"), onPressed: null),
                     ),
                     Expanded(
                        child: SizedBox(
                         height: 50,
                         child: FlatButton(
                           shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(18)),
                           color: product.color,
                           onPressed: (){}, 
                         child:
                          Text(" Buy Now".toUpperCase(),
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color:Colors.white 
                            
                           ),
                        ),
                       ),
                       ),
                     ),
                    ],
                  ),
                )
              ],
              ),
            ),
            ProductTitleWithImage(product: product)
          ],
        )
        )

      ],),
      
    );
  }
}


