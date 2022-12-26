import 'package:card_swiper/card_swiper.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductsDetails extends StatefulWidget {
  const ProductsDetails({super.key});

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  final tilestyle = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              const BackButton(),
              Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            'Shoes',
                            textAlign: TextAlign.start,
                            style: tilestyle,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: RichText(
                            text: TextSpan(
                              text: '\$',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                              children: [
                                TextSpan(
                                  text: '168',
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.4,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return FancyShimmerImage(
                      width: double.infinity,
                      imageUrl: 'https://i.ibb.co/vwB46Yq/shoes.png',
                      boxFit: BoxFit.contain,
                    );
                  },
                  autoplay: true,
                  itemCount: 3,
                  pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.white,
                      activeColor: Colors.red,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description ',
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Text(
                      'juta hai juta tera ghr isme nahi jaeyga u can buy anything you want but paisa lagega',
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
