part of '_index.dart';

final x1FbFirestore = RM.inject(() => FbFirestore(), debugPrintWhenNotifiedPreMessage: '');

class FbFirestore {
  Future<QuerySnapshot<Map<String, dynamic>>> readCollection(String coll) async {
    final result = await FirebaseFirestore.instance.collection(coll).get();
    return result;
  }

  Future<void> createDocument(String coll, String doc, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection(coll).doc(doc).set(data);
  }
}
