// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Куда поедете?`
  String get whereDoYouGo {
    return Intl.message(
      'Куда поедете?',
      name: 'whereDoYouGo',
      desc: '',
      args: [],
    );
  }

  /// `Пробовать снова`
  String get tryAgain {
    return Intl.message(
      'Пробовать снова',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Ваше текущее местоположение:`
  String get yourLocation {
    return Intl.message(
      'Ваше текущее местоположение:',
      name: 'yourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Идет загрузка...`
  String get loading {
    return Intl.message(
      'Идет загрузка...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Поиск`
  String get search {
    return Intl.message(
      'Поиск',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Выберите тип карты:`
  String get selectMap {
    return Intl.message(
      'Выберите тип карты:',
      name: 'selectMap',
      desc: '',
      args: [],
    );
  }

  /// `Данные не загружено`
  String get dataNoLoaded {
    return Intl.message(
      'Данные не загружено',
      name: 'dataNoLoaded',
      desc: '',
      args: [],
    );
  }

  /// `Разрешите доступ к геолокации`
  String get givePermission {
    return Intl.message(
      'Разрешите доступ к геолокации',
      name: 'givePermission',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось определить, где вы`
  String get unreceivedLocation {
    return Intl.message(
      'Не удалось определить, где вы',
      name: 'unreceivedLocation',
      desc: '',
      args: [],
    );
  }

  /// `Нет соединения`
  String get noInternet {
    return Intl.message(
      'Нет соединения',
      name: 'noInternet',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте подключение к интернету`
  String get checkInternet {
    return Intl.message(
      'Проверьте подключение к интернету',
      name: 'checkInternet',
      desc: '',
      args: [],
    );
  }

  /// `Построить маршрут`
  String get route {
    return Intl.message(
      'Построить маршрут',
      name: 'route',
      desc: '',
      args: [],
    );
  }

  /// `По шагам`
  String get turnByTurn {
    return Intl.message(
      'По шагам',
      name: 'turnByTurn',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
