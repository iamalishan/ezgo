import 'package:booster/booster.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  final String text1;
  final String id;
  final String text3;
  final String text4;
  final String image;
  final VoidCallback onTap;

  SearchContainer(
      {@required this.onTap,
      @required this.text1,
      @required this.id,
      @required this.text3,
      @required this.text4,
      @required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>onTap(),
      child: Card(
        elevation: 4,
        shadowColor: Color(0x4D707070),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Color(0x96707070),
                width: 1,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                  height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Booster.verticalSpace(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Booster.dynamicFontSize(
                    label: text1,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Booster.verticalSpace(13),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    StreamBuilder<QuerySnapshot>(
                     stream: FirebaseFirestore.instance.collection('cars').doc(id).collection('reviews').snapshots(),
                      builder: (context, snapReview) {

                        var sum = 0;
            snapReview.data.docs.forEach((element) { 
              sum+=element['rating'];
            });
                        return(!snapReview.hasData)?
                         Booster.dynamicFontSize(
                            label: "",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black):
                         Booster.dynamicFontSize(
                            label: (snapReview.data.docs==0)?"0":"${sum/snapReview.data.docs.length}",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black);
                      }
                    ),
                    Booster.horizontalSpace(5),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    ),
                    Booster.horizontalSpace(5),
                    Booster.dynamicFontSize(
                        label: text3,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ],
                ),
              ),
              Booster.verticalSpace(2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/Forward Dashed Connector.png',
                      height: 9,
                    ),
                  ],
                ),
              ),
              Booster.verticalSpace(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Booster.dynamicFontSize(
                        label: text4,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.redAccent,
                        letterSpacing: 0),
                  ],
                ),
              ),
              Booster.verticalSpace(15),
            ],
          ),
        ),
      ),
    );
  }
}
