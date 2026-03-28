import 'package:finances/features/account/account.repository.dart';
import 'package:finances/features/category/category.repository.dart';
import 'package:finances/features/schedule/schedule.repository.dart';
import 'package:finances/features/settings/settings.repository.dart';
import 'package:finances/features/transaction/transaction.repository.dart';
import 'package:mocktail/mocktail.dart';

class AccountBoxMock extends Mock implements IAccountRepository {}

class CategoryBoxMock extends Mock implements ICategoryRepository {}

class ScheduleBoxMock extends Mock implements IScheduleRepository {}

class TransactionBoxMock extends Mock implements ITransactionRepository {}

class SettingsBoxMock extends Mock implements ISettingsRepository {}
