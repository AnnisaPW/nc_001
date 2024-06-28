part of '../_index.dart';

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size.fromWidth(200),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        _ct.signInWithGoogle();
      },
      child: const Text('Sign in With Google'),
    );
  }
}
