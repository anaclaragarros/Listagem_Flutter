import 'package:flutter/foundation.dart';

extension ValueNotifierExt<T> on ValueNotifier {
  void emit(T state) {
    value = state;
  }

  T get state => (this as ValueNotifier<T>).value;
}
