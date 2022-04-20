import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  var _controller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'VAHAN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange),
                ),
                TextSpan(
                  text: 'SEWA',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
                TextSpan(text: ' world!'),
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.sort,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notification_add,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Search Vehicle Status",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            width: MediaQuery.of(context).size.width * 0.7,
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'AB-04-CD-1234',
                suffixIcon: IconButton(
                  onPressed: () {
                    _controller.clear();
                  },
                  icon: Icon(
                    Icons.search,
                    size: 35,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
