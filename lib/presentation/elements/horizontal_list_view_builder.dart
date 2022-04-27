import 'package:booster/booster.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  GridViewState createState() => GridViewState();
}

class GridViewState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 322,
      width: MediaQuery.of(context).size.width,
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("cars").where('isApproved').snapshots(),
        builder: (context, snapshot) {
          return
          (!snapshot.hasData)?
          Center(child:CircularProgressIndicator()):
           ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: snapshot.data.docs.length,
              itemBuilder: (BuildContext ctx, index) {
                return Row(
                  children: [
                    if (index == 0)
                      Booster.horizontalSpace(20),
                    Card(
                      elevation: 4,
                      shadowColor: Colors.transparent,
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
                              width: 297,
                              height: 190,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: NetworkImage(snapshot.data.docs[index].get('image')),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Booster.verticalSpace(20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: Booster.dynamicFontSize(
                                  label: snapshot.data.docs[index].get('name'),
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
                                    stream: FirebaseFirestore.instance.collection('cars').doc(snapshot.data.docs[index].id).collection('reviews').snapshots(),
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
                                      label: '(${snapshot.data.docs[index].get('trips')} Trips)',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ],
                              ),
                            ),
                            Booster.verticalSpace(15),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Booster.dynamicFontSize(
                                      label: 'MYR ${snapshot.data.docs[index].get('rate')}/day ',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.redAccent,
                                      letterSpacing: 0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              });
        }
      ),
    );
  }
}
