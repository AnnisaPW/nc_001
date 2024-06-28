part of '../_index.dart';

class LoginAnonymous extends StatelessWidget {
  const LoginAnonymous({super.key});

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
        _ct.signInAnonymous();
      },
      child: const Text('Sign in Anonymously'),
    );
  }
}
