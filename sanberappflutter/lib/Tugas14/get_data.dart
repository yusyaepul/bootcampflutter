import 'dart:convert';
import 'get_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({ Key? key }) : super(key: key);

  @override
  State<GetDataScreen> createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  final String url = "https://reqres.in/api/users?page=2";
  List? data;
  @override
  
  void initState(){
    _getRefreshData();
    super.initState();
  }

  Future<void> _getRefreshData() async {
    this.getJsonData(context);
  }

  Future<void> getJsonData(BuildContext context) async {
    var response =
        await http.get(Uri.parse(url), headers: {"Accept": "aplication/json"});
    print(response.body);
    setState(() {
      var converDataToJson = jsonDecode(response.body);
      data = converDataToJson['data'];  
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get data api regres"),
      ),
      body: RefreshIndicator(
        onRefresh: _getRefreshData,
        child: data == null
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: data == null ? 0 : data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => GetDataDetailScreen(
                                value: data![index]["id"]
                              )));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.network(
                                    data![index]["avatar"],
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    Text(data![index]["first_name"] + 
                                    " " + 
                                    data![index]["last_name"]),
                                    Text(data![index]["email"]),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider()
                      ],
                    ),
                  );
                },
            )
        ,
      ),
    );
  }
}