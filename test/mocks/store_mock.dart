import 'package:finances/infra/data/objectbox/gen/objectbox.g.dart';

Future<Store> openInMemoryStore() async =>
    openStore(directory: 'memory:test-${DateTime.now().millisecond}');
