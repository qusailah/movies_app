
import 'package:flutter_riverpod/flutter_riverpod.dart';

interface class Observers extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase<Object?> provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {}

}
