// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class IndexTFood {
  late int id;
  late String assetname;
  late String title;
  late String time;
  late String evoulation;
  late String price;
  IndexTFood(
      {required this.id,
      required this.assetname,
      required this.title,
      required this.time,
      required this.evoulation,
      required this.price});

  
}
class LanchData {
  late List<Widget> data;
  late IndexPage v;

  LanchData({
    required this.data,
    required this.v
  });
}

enum IndexPage{
  dash,search,treding,rest
}
class IndexTFoods {
  late IndexMCE indexMCE;
  late void Function()? sm;
  late List<IndexTFood> indexTFood;

  IndexTFoods({required this.indexMCE, required this.indexTFood, this.sm});
}

class IndexRFoods {
  late IndexMCE indexMCE;
  late List<IndexRFood> indexRFood;
  late void Function()? sm;
  late void Function()? heart;
  List<int>? c_id = [];

  IndexRFoods(
      {required this.indexMCE,
      required this.indexRFood,
      this.sm,
      this.heart,
      this.c_id});
}

class IndexMCE {
  late BuildContext context;
  late void Function()? ev;

  IndexMCE({required this.context, this.ev});
}

class IndexRFood {
  late int id;
  late String assetname;
  late String title;
  late String time;
  late String evoulation;
  late List<String> ingredients;

  IndexRFood({
    required this.id,
    required this.title,
    required this.assetname,
    required this.time,
    required this.evoulation,
    required this.ingredients,
  });
}

class IndexIngFood {
  late int id;
  late String title;
  late String assetname;

  IndexIngFood({
    required this.id,
    required this.title,
    required this.assetname,
  });
}

class IndexOFood {
  late String title;
  late String assetname;

  IndexOFood({
    required this.title,
    required this.assetname,
  });
}

class IndexOFoods {
  late IndIngFodCt iifct;
  late List<IndexOFood> indexOFood;
  late List<IndexIngFood> iif;

  IndexOFoods(
      {required this.iifct, required this.indexOFood, required this.iif});
}

class IndIngFodCt {
  late BuildContext context;
  late TextEditingController controller;
  late void Function() co;

  IndIngFodCt(
      {required this.controller, required this.co, required this.context});
}

class IndexSFood {
  late BuildContext context;
  late TextEditingController controller;
  late bool active;
  late List<IndexTFood> itf;
  late List<IndexRFood> irf;
  late LanchData? ld;
  late bool isActiveFood;
  late IndexMCE? indexMCE;

  IndexSFood(
      {required this.context,
      required this.controller,
      required this.active,
      required this.itf,
      required this.irf,
      required this.isActiveFood,
      this.ld,
      this.indexMCE});
}
