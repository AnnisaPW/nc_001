part of '_index.dart';

final x1FbFirestore = RM.inject(() => FbFirestore(), debugPrintWhenNotifiedPreMessage: '');

class FbFirestore {
  final instance = FirebaseFirestore.instance;

  Future<QuerySnapshot<Map<String, dynamic>>> readCollection(String coll) async {
    final result = await instance.collection(coll).get();
    return result;
  }

  Future<void> createDocument(String coll, String doc, Map<String, dynamic> data) async {
    await instance.collection(coll).doc(doc).set(data);
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> readDocument(String coll, String doc) async {
    final result = await instance.collection(coll).doc(doc).get();
    return result;
  }

  Future<void> deleteDocument(String coll, String doc) async {
    await instance.collection(coll).doc(doc).delete();
  }
}
