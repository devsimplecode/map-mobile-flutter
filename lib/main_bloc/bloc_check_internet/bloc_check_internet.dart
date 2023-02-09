import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_flutter/repo/internet_connection.dart';

part 'bloc_check_internet.freezed.dart';

class BlocCheckInternet extends Bloc<EventCheckInternet, StateCheckInternet> {
  BlocCheckInternet(this.internetConnection)
      : super(const StateCheckInternet.error(connection: ConnectionStatus.online)) {
    on<EventCheckInternet>(
      (event, emit) async {
        await event.map(
          listenError: (listenError) async => emit(
            state.copyWith(connection: listenError.connection),
          ),
        );
      },
    );

    _connectionSubscription = internetConnection
        .internetStatus()
        .listen((result) => add(EventCheckInternet.listenError(connection: result)));
  }

  late StreamSubscription _connectionSubscription;
  final InternetConnectionRepo internetConnection;

  @override
  Future<void> close() {
    _connectionSubscription.cancel();
    return super.close();
  }
}

@freezed
class EventCheckInternet with _$EventCheckInternet {
  const EventCheckInternet._();

  const factory EventCheckInternet.listenError({
    ConnectionStatus? connection,
  }) = _ListenError;
}

@freezed
class StateCheckInternet with _$StateCheckInternet {
  const StateCheckInternet._();

  const factory StateCheckInternet.error({
    required ConnectionStatus? connection,
  }) = _Error;
}
