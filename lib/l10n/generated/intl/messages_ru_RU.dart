// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru_RU locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru_RU';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "checkInternet": MessageLookupByLibrary.simpleMessage(
            "Проверьте подключение к интернету"),
        "dataNoLoaded":
            MessageLookupByLibrary.simpleMessage("Данные не загружено"),
        "givePermission": MessageLookupByLibrary.simpleMessage(
            "Разрешите доступ к геолокации"),
        "loading": MessageLookupByLibrary.simpleMessage("Идет загрузка..."),
        "noInternet": MessageLookupByLibrary.simpleMessage("Нет соединения"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "route": MessageLookupByLibrary.simpleMessage("Построить маршрут"),
        "search": MessageLookupByLibrary.simpleMessage("Поиск"),
        "selectMap":
            MessageLookupByLibrary.simpleMessage("Выберите тип карты:"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Пробовать снова"),
        "turnByTurn": MessageLookupByLibrary.simpleMessage("По шагам"),
        "unreceivedLocation": MessageLookupByLibrary.simpleMessage(
            "Не удалось определить, где вы"),
        "whereDoYouGo": MessageLookupByLibrary.simpleMessage("Куда поедете?"),
        "yourLocation":
            MessageLookupByLibrary.simpleMessage("Ваше текущее местоположение:")
      };
}
