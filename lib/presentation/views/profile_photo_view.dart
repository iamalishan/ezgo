import 'dart:io';

import 'package:booster/booster.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ez_go_final/Controller/authController.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/app_button_transparent.dart';
import 'package:ez_go_final/presentation/elements/step_indicator.dart';
import 'package:ez_go_final/presentation/views/phone_number.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePhoto extends StatefulWidget {
  final VoidCallback onTap;

  ProfilePhoto(this.onTap);

  @override
  State<ProfilePhoto> createState() => _ProfilePhotoState();
}

class _ProfilePhotoState extends State<ProfilePhoto> {
  AuthController authController = Get.find();
  File profileImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F2F4),
      body: Column(
        children: [
          Booster.verticalSpace(60),
          StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance.collection('user').doc(authController.userId).snapshots(),
            builder: (context, snapshot) {
             String image;
              try{
                
                image = snapshot.data.get('image');
              }catch (e){
                image= "";
              }

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  profileImage ==null?
                  image.isEmpty?
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xffFF6663),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Color(0xff707070), width: 1),
                    ),
                  ):Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xffFF6663),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Color(0xff707070), width: 1),
                      image: DecorationImage(image: NetworkImage(image),fit: BoxFit.fill)
                    ),
                  ):Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xffFF6663),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Color(0xff707070), width: 1),
                      image: DecorationImage(image: FileImage(profileImage),fit: BoxFit.fill)
                    ),
                  ),
                ],
              );
            }
          ),
          Booster.verticalSpace(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Booster.dynamicFontSize(
                label:
                    'please provide a clear photo of your face host can recognize you.',
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                lineHeight: 1.2),
          ),
          Booster.verticalSpace(60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: AppButtonTransparent(onTap: () {
              getGalleryImage();
            }, text: 'Upload'),
          ),
          Booster.verticalSpace(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: AppButtonTransparent(onTap:(){getCameraImage();} , text: 'Take a photo'),
          ),
          Booster.verticalSpace(70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: AppButton(
                onTap: () {
                  profileImage==null?
                  widget.onTap():uploadImage();

                },
                text: 'Save and Continue',color: Color(0xffF51C17),),
          ),
        ],
      ),
    );
  }

 Future<void> uploadImage() async {
   print('upload called');
    String fileName = profileImage.path;
    Reference storageRef = FirebaseStorage.instance.ref().child(fileName);
      UploadTask uploadTask = storageRef.putFile(profileImage);
      await uploadTask.then((e) async {
       await storageRef.getDownloadURL().then((value)async {

        await FirebaseFirestore.instance.collection('user').doc(FirebaseAuth.instance.currentUser.uid).set({
           'image':value
         },SetOptions(merge: true)).then((value) {
  widget.onTap();
         });
          //  updateUserData['image']=value;
        
        });
      });
  }

   getCameraImage() async {
    await picker
        .getImage(
            source: ImageSource.camera,
            imageQuality: 60,
            maxHeight: 400,
            maxWidth: 300)
        .then((value) {
          profileImage = File(value.path);
      
    });

    setState(() {
      // Navigator.pop(context);
    });
  }

  final picker = ImagePicker();

  //============================== Image from gallery
  getGalleryImage() async {
    await picker
        .getImage(
            source: ImageSource.gallery,
            imageQuality: 60,
            maxHeight: 400,
            maxWidth: 300)
        .then((value) {
          profileImage = File(value.path);
      // imgPaths.add(File(value.path));
    });

    setState(() {
      // Navigator.pop(context);
    });
  }



}
