import 'package:flutter/material.dart';
import 'package:project2/app/util/color.dart';

class Card_trending extends StatelessWidget {
  const Card_trending({
    Key? key,
    required this.v,
    required this.v2
  }) : super(key: key);
  final dynamic v;
  final dynamic v2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 200,
      height: 200,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 140,
              padding: const EdgeInsets.only(top: 52, left: 10, right: 10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    v.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    v.time,
                    style: const TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Text(
                        v.evoulation,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 15),
                        textAlign: TextAlign.center,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("\$${v.price}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          const Text(
                            ".99",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: v2.indexMCE.ev,
                        child: Container(
                          width: 40,
                          height: 30,
                          decoration: BoxDecoration(
                              color: orange,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 100,
            child: Image.asset(
              v.assetname,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
