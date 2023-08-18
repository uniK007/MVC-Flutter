import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'provider.dart';

class PostsPage extends ConsumerWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = ref.read(awesomePostsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Flutter MVC")),
      body: Center(
        child: response.hasValue
            ? ListView.builder(
                itemCount: response.value!.length,
                itemBuilder: (e, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          response.value![index].title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(response.value![index].body),
                      ],
                    ),
                  );
                },
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}