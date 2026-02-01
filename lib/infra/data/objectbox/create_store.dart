import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'gen/objectbox.g.dart';

Future<Store> createStoreAsync() async {
  final dir = await getApplicationDocumentsDirectory();
  return openStore(directory: join(dir.path, "finances"));
}
