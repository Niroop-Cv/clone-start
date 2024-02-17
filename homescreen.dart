      // body: ListView.builder(
      //     itemCount: 12,
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         tileColor: Colors.blue,
      //         title: Text(index.toString()),

      //       );
      //     }),

      //listview.seperated****** with list

      // body: ListView.separated(
      //   separatorBuilder: (context, index) => Divider(),
      //   itemCount: names.length,
      //   itemBuilder: ((context, index){
      //     return ListTile(
      //       tileColor: Colors.cyan,
      //       title: Text(names[index]),
      //     );
      //   } ),


//open
      // body: ListView.separated(
      //   separatorBuilder: (context, index) => Divider(),
      //   itemCount: datas.length,
      //   itemBuilder: ((context, index) {
      //     return ListTile(
      //       tileColor: Colors.cyan,
      //       title: Text(index.toString()),
      //     );
      //   }),
      // ),
      //
      //
      //close



//new start===

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<Map> details = [
    {
      "name": "chiken pizza",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbtDdq5yqBQICpXubxUTurXHA4AK-jvqQdkYeCCbE17w5Fv-ZCctTnrPRUcWK7gQLujTM&usqp=CAU"
    },
    {
      "name": "raw meat mix salad",
      "image":
          "https://t3.ftcdn.net/jpg/05/18/96/30/360_F_518963087_ZPmo2MwL45OBBKQcVk6BZq80j9hA7NZH.jpg"
    },
    {
      "name": "pasta italian cuisine",
      "image":
          "https://as1.ftcdn.net/v2/jpg/02/68/89/80/1000_F_268898057_RXm8QpT286jfVgux1Eq56FC7l0MJzL7G.jpg"
    },
    {
      "name": "prawns special  combo",
      "image":
          "https://media.istockphoto.com/id/1322628932/photo/poke-bowl-with-salmon-avocado-quinoa-and-cucumber.jpg?s=612x612&w=0&k=20&c=dxyEXDzNYYjmKfNzi6QegEJQTbE-1jZZB4HtQKQABhs="
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          colors: [
            Colors.lightBlueAccent,
            Colors.white,
            Colors.white,
            Colors.white,
          ],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leadingWidth: 150,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: .2, color: Colors.black),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Food truck official \n calicut",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Icon(
                  Icons.notifications_active_outlined,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.0, right: 20, top: 15),
                child: Icon(
                  Icons.person,
                  size: 30,
                ),
              )
            ],
          ),
          body: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 18.0,left: 5,right: 5),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: (15),
                      child: Icon(Icons.stars_outlined,
                          color: Colors.orange, size: 30),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Text(
                      "FAVORITES",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: details.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        width: 300,
                        height: 110,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 7,
                                  offset: Offset(5, 5))
                            ]),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Container(
                              height: 90,
                              width: 70,
                              color: Colors.white,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(details[index]["image"]),
                                radius: 25,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 90,
                                  width: 200,
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 50.0, top: 24),
                                    child: Column(
                                      children: [
                                        Text(details[index]['name'],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10.0),
                                          child: Container(
                                            width: 80,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10.0),
                                              child: Row(children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 5.0),
                                                  child: Icon(
                                                      Icons.card_travel_rounded,
                                                      size: 10,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "add to cart",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ]),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          )
                        ]),
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
