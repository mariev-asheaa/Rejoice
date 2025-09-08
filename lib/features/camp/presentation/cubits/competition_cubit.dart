import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'competition_state.dart';

class CompetitionCubit extends Cubit<CompetitionState> {
  CompetitionCubit() : super(CompetitionInitial());

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  bool _isValidUrl(String url) {
    final uri = Uri.tryParse(url);
    return uri != null &&
        (uri.isScheme("http") || uri.isScheme("https")) &&
        uri.hasAuthority;
  }

  Future<void> addForm(String conferenceId, String formUrl) async {
    try {
      if (!_isValidUrl(formUrl)) {
        emit(FormAddedError(error: "Invalid URL format"));
        return;
      }

      final docRef = _db
          .collection("conferences")
          .doc(conferenceId)
          .collection("forms")
          .doc();

      await docRef.set({
        "url": formUrl,
        "createdAt": FieldValue.serverTimestamp(),
      });

      emit(FormAddedSuccess());
    } catch (e) {
      emit(FormAddedError(error: e.toString()));
    }
  }

  Stream<List<String>> getForms(String conferenceId) {
    return _db
        .collection("conferences")
        .doc(conferenceId)
        .collection("forms")
        .orderBy("createdAt", descending: true)
        .snapshots()
        .map((snapshot) =>
        snapshot.docs.map((doc) => doc.get("url") as String).toList());
  }
}
