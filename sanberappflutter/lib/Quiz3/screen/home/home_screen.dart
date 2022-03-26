import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'model.dart';
import 'package:collection/collection.dart';

class Homescreen extends StatefulWidget {
  String? value;
  Homescreen({
    Key? key,
    this.value
  }) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState(value);
}

class _HomescreenState extends State<Homescreen> {
  String? value;
  _HomescreenState(this.value);
  @override
  void initState() {
    super.initState();
  }

  final List<int> data = [];

  display() {
    List<int> myData = data;
    int sum = myData.fold(0, (a, b) => a + b);
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.network(
                        "https://avatars.githubusercontent.com/u/52710807?v=4",
                        height: 80,
                        width: 80,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(value.toString()),
                  ],
                ),
                Row(
                  children: [
                    //## soal 4
                    //Tulis Coding disini
                    Text("Rp  "),
                    Text(
                      display().toString()
                    ),
                    //sampai disini
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.add_shopping_cart)
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            //#soal 3 silahkan buat coding disini
            //untuk container boleh di pake/dimodifikasi 
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              child: GridView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (ctx, i) {
                    return Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5.0),
                        margin: EdgeInsets.only(top: 2, bottom: 2, left: 5, right: 5),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(
                            width: 3
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      child: 
                        Column(
                          children: [
                            Image.network(
                              items[i].profileUrl,
                              //width: 100,
                              height: 100,
                            ),
                            Text(items[i].name),
                            Text('Rp. '+items[i].price.toString()),
                            ElevatedButton(
                              onPressed: () => setState(() {
                                data.add(items[i].price);
                              }),
                              child: 
                                Text(
                                  'Beli',
                                ),
                            ),
                          ],
                        )
                    );
                  },
                ),
                //silahkan dilanjutkan disini
            ),
            //sampai disini soal 3
           
          ],
        ),
      ),
    );
  }
}

Widget myWidget(BuildContext context) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
    child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 300,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.amber,
            child: Center(child: Text('$index')),
          );
        }),
  );
}
