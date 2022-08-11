import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  late String _token;

  Future<void> signUp({required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw Exception('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('The account already exists for that email.');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw Exception('Wrong password provided for that user.');
      }
    }
  }
  // Future<void> changePassword(String newPassword) async {
  //
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   print(newPassword);
  //   _token = sharedPreferences.getString("token");
  //   final url =
  //       ('https://identitytoolkit.googleapis.com/v1/accounts:update?key='YOUR WEB API KEY');
  //   try {
  //     await http.post(
  //       url,
  //       body: json.encode(
  //         {
  //           'idToken': _token,
  //           'password': newPassword,
  //           'returnSecureToken': true,
  //         },
  //       ),
  //     );
  //   } catch (error) {
  //     throw error;
  //   }
  // }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }
}
