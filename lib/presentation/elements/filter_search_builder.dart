import 'package:booster/booster.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class GridViewWidget extends StatefulWidget {
  final VoidCallback onTap;
  GridViewWidget(this.onTap);
  GridViewState createState() => GridViewState();
}

class GridViewState extends State<GridViewWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              childAspectRatio: 0.9,
              crossAxisSpacing: 25,
              mainAxisSpacing: 20),
          itemCount: 11,
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: ()=>widget.onTap(),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xff707070),
                ),
                child: Center(
                  child: Booster.dynamicFontSize(
                    label: 'MPV',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,),
                ),
              ),
            );
          }),
    );
  }
}
