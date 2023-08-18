import 'package:flutter/material.dart';
import 'controller.dart';
import 'model.dart';

class SinglePost extends StatefulWidget {
  const SinglePost({Key? key}) : super(key: key);

  @override
  State<SinglePost> createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  DataModel? _data;
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
          : Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                children: [
                  Text(
                    _data!.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(_data!.body),
                ],
              ),
          ),
    );
  }
}
