import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:smartrecycle/Features/Ads/presentation/controllers/add_ads_controller.dart';
class AddAdsForm extends GetView<AddAdsController> {
const AddAdsForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Number of Bottles",
            style: TextStyle(
              color: Color(0xFF314158),
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white, 
                hintText: 'e.g.,50',
                hintStyle: TextStyle(color: Colors.grey.shade400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide
                      .none, 
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Colors.cyan, width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Symbolic Price",
            style: TextStyle(color: Color(0xFF314158), fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
             keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'e.g., 500 millimes',
               hintStyle: TextStyle(color: Colors.grey.shade400),
               
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Colors.cyan, width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Decription (Optional)",
            style: TextStyle(color: Color(0xFF314158), fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
             keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Add any addtional details',
               hintStyle: TextStyle(color: Colors.grey.shade400),
              
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Colors.cyan, width: 2),
                ),
              ),
            ),
          ),
           SizedBox(height: 10),
          Text(
            "Photo upload",
            style: TextStyle(color: Color(0xFF314158), fontWeight: FontWeight.w600),
          ),
           SizedBox(height: 10),
           GestureDetector(
            onTap: () {
              
            },
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300,style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12),
              ),
              child:controller.image ==null ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.upload_file_rounded,size: 40,color: Colors.grey,),
                  SizedBox(height: 8,),
                  Text("Click to upload photo",style: TextStyle(color: Colors.grey),),
                  Text("PNG, JPG to 10MB",style: TextStyle(color: Colors.grey, fontSize: 12),)
                ],
              ) : ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(12),
                child: Image.file(controller.image!,width: double.infinity,height: 150,fit: BoxFit.cover
                ),
              )
            ),
           ),
          SizedBox(height: 30),
          InkWell(
            child: Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [
                  
                    Colors.lightGreen.shade200, 
                     Colors.cyan, /// Vert
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              
              ),
              child: Center(
                child: Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}