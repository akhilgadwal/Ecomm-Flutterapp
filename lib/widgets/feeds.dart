import 'package:ecomm/screens/product_detail.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconly/iconly.dart';
import 'package:page_transition/page_transition.dart';

class FeedsWidget extends StatelessWidget {
  const FeedsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Material(
        borderRadius: BorderRadius.circular(38),
        color: Colors.white,
        child: InkWell(
          borderRadius: BorderRadius.circular(
            12,
          ),
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                  child: const ProductsDetails(),
                  type: PageTransitionType.fade,
                ));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 5,
                  right: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          text: '\$',
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const Icon(IconlyBold.heart),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FancyShimmerImage(
                  height: size.height * 0.2,
                  width: double.infinity,
                  imageUrl: ('https://i.ibb.co/vwB46Yq/shoes.png'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'Title',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              )
            ],
          ),
        ),
      ),
    );
  }
}
