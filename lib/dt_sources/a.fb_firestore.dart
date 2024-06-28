part of '_index.dart';

final x1FbFirestore = RM.inject(() => FbFirestore(), debugPrintWhenNotifiedPreMessage: '');

class FbFirestore {
  Future<QuerySnapshot<Map<String, dynamic>>> readCollection(String coll) async {
    final result = await FirebaseFirestore.instance.collection(coll).get();
    return result;
  }
}
