import 'package:finances/infra/data/objectbox/gen/objectbox.g.dart';
import 'package:mocktail/mocktail.dart';

class StoreMock extends Mock implements Store {}

Future<Store> openInMemoryStore() async =>
    openStore(directory: 'memory:test-${DateTime.now().millisecond}');
