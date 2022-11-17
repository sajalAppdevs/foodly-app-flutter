import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/app/model/home/index.dart';
import 'package:project2/app/views/base/back_page_widget.dart';
import 'package:project2/app/views/screens/home/widget/card_food_sample_widget.dart';
import 'package:project2/app/views/screens/home/widget/card_offers_event_widget.dart';
import 'package:project2/app/views/screens/home/widget/card_trending.dart';

import '../../../util/color.dart';
import '../../../util/constant.dart';
import 'widget/bottom_navigation_widget.dart';
import 'widget/card_restaurant.dart';

class IndexFood extends HookWidget {
  const IndexFood({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final ctrSearch = useTextEditingController();
    final isActiveSearch = useState(false);
    final isActiveFood = useState(false);
    final pch = useState(IndexPage.dash);
    useEffect(() {
      ctrSearch.addListener(() {
        if (ctrSearch.text.isNotEmpty) {
          pch.value = IndexPage.search;
          isActiveSearch.value = true;
        } else {
          pch.value = IndexPage.dash;
          isActiveSearch.value = false;
        }
      });
      return null;
    }, [ctrSearch]);
    final imce1 = IndexMCE(context: context, ev: () {});
    final itf1 = IndexTFood(
        id: 0,
        assetname: dash_4,
        title: "CreamChicken",
        time: "24min *",
        evoulation: "4.8",
        price: "14");
    final itf2 = IndexTFood(
        id: 0,
        assetname: dash_4,
        title: "CreamHorgn",
        time: "9min *",
        evoulation: "1.2",
        price: "22");
    final itf3 = IndexTFood(
        id: 0,
        assetname: dash_4,
        title: "CreamHorgn",
        time: "9min *",
        evoulation: "1.2",
        price: "22");
    final itf4 = IndexTFood(
        id: 0,
        assetname: dash_4,
        title: "CreamHorgn",
        time: "9min *",
        evoulation: "1.2",
        price: "22");
    final itf5 = IndexTFood(
        id: 0,
        assetname: dash_4,
        title: "CreamHorgn",
        time: "9min *",
        evoulation: "1.2",
        price: "22");
    final itf6 = IndexTFood(
        id: 0,
        assetname: dash_4,
        title: "CreamHorgn",
        time: "9min *",
        evoulation: "1.2",
        price: "22");
    final itfs = IndexTFoods(
        indexMCE: imce1,
        indexTFood: [itf1, itf2, itf3, itf4, itf5, itf6],
        sm: () {
          pch.value = IndexPage.treding;
        });
    final imce2 = IndexMCE(context: context);
    final igs1 = ["Steack", "Pizza", "Cock"];
    final igs2 = ["Banna", "Motch", "Friza"];
    final irf1 = IndexRFood(
        id: 0,
        title: "PizaHatz",
        time: "12min *",
        assetname: dash_3,
        evoulation: "9.8",
        ingredients: igs1);
    final irf2 = IndexRFood(
        id: 1,
        title: "PizaCock",
        time: "1min *",
        assetname: dash_1,
        evoulation: "1.1",
        ingredients: igs2);
    final irfs = IndexRFoods(
      indexMCE: imce2,
      indexRFood: [irf1, irf2],
      sm: () {
        pch.value = IndexPage.rest;
      },
      heart: () {},
    );

    final iifct =
        IndIngFodCt(controller: controller, co: () {}, context: context);
    final indexOFood1 =
        IndexOFood(title: "Breakfast Best Deals", assetname: dash_1);
    final indexOFood2 =
        IndexOFood(title: "Jumia is Good Talent", assetname: dash_1);
    final iif1 = IndexIngFood(id: 0, title: "Fish", assetname: dash_2);
    final iif2 = IndexIngFood(id: 1, title: "Burgers", assetname: dash_2);
    final iif3 = IndexIngFood(id: 2, title: "Banna", assetname: dash_2);
    final iif4 = IndexIngFood(id: 3, title: "Poto", assetname: dash_2);
    final iofs = IndexOFoods(
        iifct: iifct,
        indexOFood: [indexOFood1, indexOFood2],
        iif: [iif1, iif2, iif3, iif4]);
    final lh = LanchData(data: [
      dashfirst(context, iofs, itfs, irfs),
      dashtrend(itf: itfs),
      dashrest(irf: irfs)
    ], v: pch.value);
    final abLg = pch.value != IndexPage.dash
        ? backpage(vc: () {
            pch.value = IndexPage.dash;
          })
        : const SizedBox();
    final abCt = pch.value != IndexPage.dash ? true : false;
    final abTl = pch.value != IndexPage.dash
        ? Text(
            pch.value == IndexPage.treding ? TRDNEW : RESTNEW,
            style: const TextStyle(color: grey),
          )
        : Transform.translate(
            offset: const Offset(-50, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Your Location",
                      style:
                          TextStyle(color: Colors.grey.shade500, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      FontAwesomeIcons.chevronDown,
                      color: orange,
                      size: 13,
                    )
                  ],
                ),
                const Text("Karachi, Pakistan",
                    style: TextStyle(color: Colors.black, fontSize: 17)),
              ],
            ),
          );
    final isfs = IndexSFood(
        context: context,
        controller: ctrSearch,
        active: isActiveSearch.value,
        itf: [itf1, itf2, itf3, itf4, itf5, itf6],
        irf: [irf1, irf2],
        isActiveFood: isActiveFood.value,
        ld: lh,
        indexMCE: IndexMCE(context: context, ev: () {}));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greybg,
        elevation: 0,
        centerTitle: abCt,
        leading: abLg,
        title: abTl,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 60,
              height: 20,
              margin: const EdgeInsets.only(top: 8, right: 5),
              decoration: BoxDecoration(
                  color: reds, borderRadius: BorderRadius.circular(18)),
              child: Stack(
                children: const [
                  Positioned(
                      right: 15,
                      top: 10,
                      child: CircleAvatar(
                          backgroundColor: orange,
                          radius: 6,
                          child: Text(
                            "1",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ))),
                  Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.notifications,
                        color: orange,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
      body: $dashFood(isf: isfs),
      bottomNavigationBar: const btm_navig_widget(),
    );
  }

  Widget $launch({LanchData? lanchData}) {
    final data = lanchData!.data;
    switch (lanchData.v) {
      case IndexPage.treding:
        return data.elementAt(1);
      case IndexPage.rest:
        return data.elementAt(2);
      case IndexPage.dash:
        return data.elementAt(0);
      default:
        return data.elementAt(0);
    }
  }

  Widget $searchFood({IndexSFood? isf}) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(orange),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Food",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(reds),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Restaurant",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: orange),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "1 Result Found",
              style: TextStyle(color: grey, fontSize: 15),
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: List.generate(
              isf!.itf.length,
              (index) => Card_trending(v: isf.itf.elementAt(index), v2: isf),
            ),
          ),
        ],
      ),
    );
  }

  Widget $dashFood({IndexSFood? isf}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20, left: 20),
      color: greybg,
      child: ListView(
        shrinkWrap: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(isf!.context).size.width * 0.75,
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: isf.controller,
                        decoration: const InputDecoration(
                          hintText: "Search",
                          prefixIcon: Icon(
                            Icons.search,
                            color: grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 55,
                          decoration: BoxDecoration(
                              color: orange,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            FontAwesomeIcons.bezierCurve,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              isf.ld!.v == "Search"
                  ? $searchFood(isf: isf)
                  : $launch(lanchData: isf.ld),
            ],
          ),
        ],
      ),
    );
  }

  Widget dashfirst(BuildContext context, IndexOFoods iofs, IndexTFoods itfs,
      IndexRFoods irfs) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [$offers(iof: iofs), $trendingn(itf: itfs), $restn(irf: irfs)],
    );
  }

  Widget $offers({IndexOFoods? iof}) {
    List<Color> colors = [reds, Colors.blue, Colors.green, orange];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardOffersEventWidget(
          assetName: iof!.indexOFood
              .elementAt(
                Random().nextInt(
                  iof.indexOFood.length,
                ),
              )
              .assetname,
          context: iof.iifct.context,
          text: iof.indexOFood
              .elementAt(
                Random().nextInt(
                  iof.indexOFood.length,
                ),
              )
              .title,
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CardFoodSampleWidget(
                  colors: colors,
                  assetname: iof.iif
                      .elementAt(Random().nextInt(iof.iif.length))
                      .assetname,
                  title:
                      iof.iif.elementAt(Random().nextInt(iof.iif.length)).title,
                );
              }),
        )
      ],
    );
  }

  Widget backpage({void Function()? vc}) {
    return BackPageWidget(
      event: vc,
    );
  }

  Widget $trendingn({IndexTFoods? itf}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            TRDNEW,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ),
        SizedBox(
            height: 210,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Card_trending(v: itf!.indexTFood.elementAt(0), v2: itf),
                Card_trending(v: itf.indexTFood.elementAt(1), v2: itf),
                IconButton(
                    onPressed: itf.sm,
                    icon: const Icon(FontAwesomeIcons.chevronRight))
              ],
            )),
      ],
    );
  }

  Widget $restn({IndexRFoods? irf}) {
    List<Color> colors = [reds, Colors.blue, Colors.green, orange];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            RESTNEW,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ),
        SizedBox(
          height: 240,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              Card_restaurant(
                v: irf!.indexRFood.elementAt(0),
                v2: irf,
                colors: colors,
              ),
              Card_restaurant(
                v: irf.indexRFood.elementAt(1),
                v2: irf,
                colors: colors,
              ),
              IconButton(
                  onPressed: irf.sm,
                  icon: const Icon(FontAwesomeIcons.chevronRight))
            ],
          ),
        ),
      ],
    );
  }

  Widget dashtrend({IndexTFoods? itf}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView.count(
          crossAxisCount: 2,
          physics:
              const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
          shrinkWrap: true,
          children: List.generate(
              itf!.indexTFood.length,
              (index) => SizedBox(
                  height: 20,
                  child: Card_trending(
                      v: itf.indexTFood.elementAt(index), v2: itf))),
        ),
      ],
    );
  }

  Widget dashrest({IndexRFoods? irf}) {
    List<Color> colors = [reds, Colors.blue, Colors.green, orange];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: SizedBox(
            width: MediaQuery.of(irf!.indexMCE.context).size.width * 0.8,
            child: ListView(
              scrollDirection: Axis.vertical,
              physics:
                  const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
              shrinkWrap: true,
              children: List.generate(
                irf.indexRFood.length,
                (index) => SizedBox(
                  height: 250,
                  child: Card_restaurant(
                    v: irf.indexRFood.elementAt(index),
                    v2: irf,
                    colors: colors,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
