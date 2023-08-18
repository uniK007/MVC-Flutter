import 'package:flutter/material.dart';
import 'package:flutter_mvc/screens/screens.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter MVC")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const PostsPage(),
                ),
              );
            },
            child: const Text("View Posts"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const UsersPage(),
                ),
              );
            },
            child: const Text("View Users"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SinglePost(),
                ),
              );
            },
            child: const Text("View Single Post"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ThemeDataView(),
                ),
              );
            },
            child: const Text("View Theme Data"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SendPostRequest(),
                ),
              );
            },
            child: const Text("Send Post Request"),
          ),
        ],
      ),
    );
  }
}
