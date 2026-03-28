import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages.dart';

class PageCubit extends Cubit<Pages> {
  PageCubit() : super(Pages.transactions);

  void goTo(Pages page) => emit(page);
}
