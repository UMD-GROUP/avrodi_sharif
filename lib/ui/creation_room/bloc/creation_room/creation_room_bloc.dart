import 'package:avrodi_sharif/utils/tools/file_importer.dart';

part 'creation_room_event.dart';
part 'creation_room_state.dart';

class CreationRoomBloc extends Bloc<CreationRoomEvent, CreationRoomState> {
  CreationRoomBloc() : super(CreationRoomState(data: [])) {
    on<GetDataEvent>(getData);
  }

  getData(event, emit) async {
    emit(state.copyWith(status: ResponseStatus.inProgress));
    List data = await getIt<CreationRoomRepository>().getData();
    emit(state.copyWith(data: data, status: ResponseStatus.inSuccess));
  }
}
