import 'package:flutter/material.dart';
import 'package:myfutterapp/models/Product.dart';

import '../../../constants.dart';



class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Text("Nikin Bag",style:
         TextStyle(color:Colors.white),),
         Text(product.title,style:Theme.of(context).textTheme.headline4.copyWith(color:Colors.white,fontWeight:FontWeight.bold)
         ),
         SizedBox(width:kDefaultPaddin),
         Row(
           children: <Widget>[
             RichText(
               text: TextSpan(
                 children: [
                   TextSpan(text: "Price\n"),
                   TextSpan(text: "\$${product.price}",
                   style: Theme.of(context)
                   .textTheme
                   .headline4
                   .copyWith(fontWeight:FontWeight.bold,color: Colors.white)
                   ),
                 ],
               ),
             ),
             SizedBox(width:kDefaultPaddin),
            Expanded(child: Image.asset(product.image,fit:BoxFit.fill,))


           ],
         )
      ],
      ),
    );
  }
}