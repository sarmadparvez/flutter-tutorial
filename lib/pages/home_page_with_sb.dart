import 'package:awesome_app/pages/login_page.dart';
import 'package:awesome_app/utils/constants.dart';
import 'package:awesome_app/widgets/drawer.dart';
//import 'package:awesome_app/name_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePageSB extends StatelessWidget {
  //var myText = "Change My Name";
  // TextEditingController _nameController = TextEditingController(); // controller for text field

  Future fetchData() async {
    final url = "https://jsonplaceholder.typicode.com/photos";
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    //print(res.body);
    //print(data);
    //setState(() {});
    return data;
  }

  Stream<List<String>> getStream() {
    var data = Stream<List<String>>.fromIterable([
      List<String>.generate(20, (index) => "Item $index"),
    ]);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Sarmad's App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                // Navigator.pop(context);
                Constants.prefs.setBool("loggedIn", false);
                // go to login page
                Navigator.pushReplacementNamed(
                  context,
                  LoginPage.routeName,
                );
              })
        ],
      ),
      body: StreamBuilder(
        stream: getStream(),
        builder: (context, snapshot) {
          //print("data");
          //print(snapshot.data);
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(
                child: Text("Fetch something"),
              );
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(child: Text("Some Error occured"));
              }

              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index]),
                    //subtitle: Text("ID: ${snapshot.data[index]["id"]}"),
                    //leading: Image.network(snapshot.data[index]["url"]),
                  );
                },
                itemCount: snapshot.data.length,
              );
          }
          return Container();
        },
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //myText = _nameController.text;
          //setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
