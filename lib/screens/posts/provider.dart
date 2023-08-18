import 'controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final awesomePostsProvider = FutureProvider((ref) {
  return ref.read(postsProvider);
});
