import 'package:flutter/material.dart';
import 'package:shop_app/models/shop_class.dart';

import 'package:cached_network_image/cached_network_image.dart';

class FirnitureProductCard extends StatelessWidget {
  final double? imageHeight;
  final String productName;
  final String? brandName;
  final double price;
  final double discount;
  final String imageUrl;
  final String productId;
  const FirnitureProductCard(
      {Key? key,
      this.imageHeight,
      required this.productId,
      required this.imageUrl,
      required this.productName,
      this.brandName,
      required this.price,
      required this.discount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/product-details-firniture',
                    arguments: ProductId(productId: productId));
              },
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: imageHeight,
                placeholder: (context, url) {
                  return Image.asset('images/loading.gif');
                },
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 7.0,
              ),
              child: Text(productName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(brandName.toString()),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' \$ ${price}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${discount} %',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
