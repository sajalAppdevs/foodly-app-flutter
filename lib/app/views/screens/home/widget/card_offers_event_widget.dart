import 'package:flutter/material.dart';

class CardOffersEventWidget extends StatelessWidget {
  const CardOffersEventWidget({
    Key? key,
    this.assetName,
    this.context,
    this.text,
  }) : super(key: key);
  final String? assetName;
  final BuildContext? context;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        height: 125,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage(assetName!),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Container(
          margin: const EdgeInsets.only(top: 10, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Text(
                  text!,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "upto 40% off",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
