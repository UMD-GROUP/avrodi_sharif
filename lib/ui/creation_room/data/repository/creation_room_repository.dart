import 'package:cloud_firestore/cloud_firestore.dart';

class CreationRoomRepository {
  FirebaseFirestore instance;

  CreationRoomRepository(this.instance);

  Future<List> getData() async {
    var data = await instance.collection("poems").get();
    return data.docs.first.data().values.toList();
  }
}
