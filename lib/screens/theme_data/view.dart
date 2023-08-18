import "package:flutter/material.dart";
import 'controller.dart';
import "model.dart";

class ThemeDataView extends StatefulWidget {
  const ThemeDataView({Key? key}) : super(key: key);

  @override
  State<ThemeDataView> createState() => _ThemeDataViewState();
}

class _ThemeDataViewState extends State<ThemeDataView> {
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
      appBar: AppBar(title: const Text("Flutter Demo")),
      body: Center(
        child:
            _showLoader ? const CircularProgressIndicator() : Text(_data!.id),
      ),
    );
  }
}
