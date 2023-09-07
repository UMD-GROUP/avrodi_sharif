part of 'creation_room_bloc.dart';

@immutable
class CreationRoomState extends Equatable {
  List data;
  ResponseStatus status;
  String message;

  CreationRoomState(
      {this.status = ResponseStatus.pure,
      required this.data,
      this.message = ''});

  copyWith({
    List? data,
    ResponseStatus? status,
    String? message,
  }) {
    return CreationRoomState(
        status: status ?? this.status,
        data: data ?? this.data,
        message: message ?? this.message);
  }

  @override
  List<Object?> get props => [data, status, message];
}
