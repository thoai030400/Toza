import 'package:Toza/contrains.dart';
import 'package:Toza/screen/homePageChat/components/detailUser/mai_detailUser.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

class HomPageChat extends StatefulWidget {
  @override
  _HomPageChatState createState() => _HomPageChatState();
}

class _HomPageChatState extends State<HomPageChat> {
  @override
  Widget build(BuildContext context) {
    var listUser = getListUser();
    return Scaffold(
        body: SafeArea(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              // gradient: LinearGradient(
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter,
              //     stops: [0.1, 0.6],
              //     colors: [whitleLight, cheryPink])
              color: Colors.white),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Hi, User",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: (){

                          Get.to(MainDetailUser());
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                      "https://i.pravatar.cc/150?u=a042581f4e29026704d"))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * 0.11,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Tìm kiếm")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.12,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: listUser.length,
                              itemBuilder: (_, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 13),
                                  child: Column(
                                    children: [
                                      Stack(
                                        
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.14,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.14,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        listUser[index].image),
                                                    fit: BoxFit.cover)),
                                          ),
                                          Positioned(
                                            bottom: 3,
                                            right: -2,
                                              child: Container(
                                                height: 15,width: 15,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white,width: 2.5),
                                              shape: BoxShape.circle,
                                                color: Colors.green),
                                          ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.18,
                                          child: Text(
                                            listUser[index].name,
                                            maxLines: 2,
                                            style: TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ))
                                    ],
                                  ),
                                );
                              }),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width * 0.2 * 10,
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 10,
                              itemBuilder: (_, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width * 0.2,
                                    width: MediaQuery.of(context).size.width,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.15,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        listUser[index].image),
                                                    fit: BoxFit.cover)),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            flex: 7,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      listUser[index].name,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                    Container(
                                                      height: 9,
                                                      width: 9,
                                                      decoration: BoxDecoration(
                                                          color: purpleBlue,
                                                          shape:
                                                              BoxShape.circle),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      7 /
                                                      10,
                                                  child: Text(
                                                    listUser[index].text,
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                        color: Colors.black26),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton(
          child: Container(
            width: 60,
            height: 60,
            child: Icon(
              Icons.add,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [pinkDark, purpleBlue])),
          ),
          onPressed: () {},
        ));
  }
}

class ListUser {
  String image;
  String name;
  String id;
  String text;

  ListUser(this.image, this.name, this.id, this.text);
}

List<ListUser> getListUser() {
  return [
    {
      "image": 'https://i.pravatar.cc/300',
      "name": "Nguyễn Thanh Thoại",
      "id": "1",
      "text": "Add an identify then always get the same image"
    },
    {
      "image": 'https://i.pravatar.cc/150?u=fake@pravatar.com',
      "name": "Zaa Linh",
      "id": "2",
      "text": "Add an identify then always get the same image"
    },
    {
      "image": 'https://i.pravatar.cc/150?u=a042581f4e29026704d',
      "name": "Nguyễn Vũ Khang",
      "id": "3",
      "text": "Add an identify then always get the same image"
    },
    {
      "image": 'https://i.pravatar.cc/300',
      "name": "Trần Xuân Tú",
      "id": "4",
      "text": "Add an identify then always get the same image"
    },
    {
      "image": 'https://i.pravatar.cc/300',
      "name": "Thương",
      "id": "5",
      "text": "Add an identify then always get the same image"
    },
    {
      "image": 'https://i.pravatar.cc/300',
      "name": "Trần Khánh Xuân Uyên",
      "id": "6",
      "text": "Add an identify then always get the same image"
    },
    {
      "image": 'https://i.pravatar.cc/300',
      "name": "Trần Khánh Xuân Uyên",
      "id": "7",
      "text": "Add an identify then always get the same image"
    },
    {
      "image": 'https://i.pravatar.cc/300',
      "name": "Trần Khánh Xuân Uyên",
      "id": "8",
      "text": "Add an identify then always get the same image"
    },
    {
      "image": 'https://i.pravatar.cc/300',
      "name": "Trần Khánh Xuân Uyên",
      "id": "9",
      "text": "Add an identify then always get the same image"
    },
    {
      "image": 'https://i.pravatar.cc/300',
      "name": "Trần Khánh Xuân Uyên",
      "id": "10",
      "text": "Add an identify then always get the same image"
    },
    {
      "image": 'https://i.pravatar.cc/300',
      "name": "Trần Khánh Xuân Uyên",
      "id": "11",
      "text": "Add an identify then always get the same image"
    },
  ]
      .map((item) =>
          ListUser(item['image'], item['name'], item['id'], item['text']))
      .toList();
}
