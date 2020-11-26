import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfutterapp/constants.dart';
import 'package:myfutterapp/models/Product.dart';
import 'package:myfutterapp/screens/details/components/body.dart';

class DetailedScreen extends StatelessWidget {
  final Product product;
  const DetailedScreen(
    {Key key, 
    this.product
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    
    );
  }



  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/back.svg",color: Colors.white),
       onPressed: ()=>Navigator.pop(context),
       ),
       actions:<Widget>[
         IconButton(icon:
          SvgPicture.asset("assets/icons/search.svg"),
           onPressed: null
           ),
           IconButton(icon:
          SvgPicture.asset("assets/icons/cart.svg"),
           onPressed: null
           ),
           SizedBox(width: kDefaultPaddin/2)

           ]
    );
  }
}