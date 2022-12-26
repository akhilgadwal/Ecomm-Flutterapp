import 'package:flutter/material.dart';

class SalesWid extends StatelessWidget {
  const SalesWid({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          18,
        ),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF7A60A5),
            Color(0xFF82C3DF),
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Row(children: [
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF96C89CE),
                borderRadius: BorderRadius.circular(
                  18,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.00),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get 50 Per off',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Flexible(
                        child: SizedBox(
                      height: double.infinity,
                      child: FittedBox(
                          child: Text(
                        '50%\nOFF',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 3,
          // child: Padding(
          //   padding: EdgeInsets.all(
          //     14.0,
          //   ),
          child: Image.network(
            width: double.infinity,
            'https://i.ibb.co/vwB46Yq/shoes.png',
            fit: BoxFit.contain,
          ),
        )
      ]),
    );
  }
}
