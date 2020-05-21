import 'package:get_it/get_it.dart';


import 'calls_and messages_services.dart';



GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton(CallsAndMessagesService());
}