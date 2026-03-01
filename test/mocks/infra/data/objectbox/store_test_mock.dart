import '../../../../infra/data/objectbox/gen/objectbox.g.dart';

Future<Store> openInMemoryTestStore() async =>
    openStore(directory: 'memory:test-mock-${DateTime.now().millisecond}');
