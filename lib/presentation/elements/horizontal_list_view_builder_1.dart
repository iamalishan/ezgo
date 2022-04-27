import 'package:booster/booster.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ez_go_final/presentation/views/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridViewWidget1 extends StatefulWidget {
  GridViewState1 createState() => GridViewState1();
}

class GridViewState1 extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('location').snapshots(),
          builder: (context, snapshot) {
            return (!snapshot.hasData)
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (BuildContext ctx, index) {
                      // Map data =snapshot.data.docs[index].data();
                      print(snapshot.data.docs[index].get('name'));
                      print(snapshot.data.docs[index].get('image'));

                      return InkWell(
                        onTap: () => Get.to(
                            Search(snapshot.data.docs[index].get('name'))),
                        child: Row(
                          children: [
                            if (index == 0) Booster.horizontalSpace(20),
                            Card(
                              elevation: 4,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(snapshot
                                          .data.docs[index]
                                          .get('image'))),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Color(0x96707070),
                                    width: 1,
                                  ),
                                  // image: DecorationImage(image: NetworkImage(snapshot.data.docs[index].get('image')))
                                ),
                                child: Center(
                                    child: Text(
                                  snapshot.data.docs[index].get('name'),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ],
                        ),
                      );
                    });
          }),
    );
  }
}
