import 'package:flutter/material.dart';
import 'controller.dart';
import 'model.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  List<DataModel>? _data = [];
  bool _showLoader = true;

  _getData() async {
    _data = await DataController().getData();

    if (_data != null) {
      setState(() {
        _showLoader = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter MVC")),
      body: _showLoader
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _data?.length,
              itemBuilder: (e, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Name : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(_data![index].name),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "E-Mail : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(_data![index].email),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "Phone : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(_data![index].phone),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "Website : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(_data![index].website),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "✨ Address ✨",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Address Street : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(_data![index].address.street),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "Address city : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(_data![index].address.city),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "Address PinCode : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(_data![index].address.zipcode),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
