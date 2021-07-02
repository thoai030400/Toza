import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomPageToza extends StatefulWidget {
  @override
  _HomPageTozaState createState() => _HomPageTozaState();
}

class _HomPageTozaState extends State<HomPageToza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.08,
        
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("Hi, User",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.12,
                    width: MediaQuery.of(context).size.width * 0.12,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle,
                        
                       

                        image: DecorationImage(image: CachedNetworkImageProvider("https://i.pravatar.cc/150?u=a042581f4e29026704d"))
                        ),
                    
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                children: [

                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15)
                    ),
                  
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width*0.11,

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    SizedBox(width: 10,),
                    Icon(Icons.search,color: Colors.black,),
                    SizedBox(width: 5,),
                    Text("Tìm kiếm")
                  ],),
                  ),

                  SizedBox(height: 20,),


                 
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
