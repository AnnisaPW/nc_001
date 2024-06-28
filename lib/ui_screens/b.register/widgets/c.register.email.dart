part of '../_index.dart';

class RegisterEmail extends StatelessWidget {
  const RegisterEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxEmail.controller,
        focusNode: _dt.rxEmail.focusNode,
        onEditingComplete: () => _dt.rxPassword.focusNode.requestFocus(),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          isDense: true,
          labelText: 'Email',
          hintText: 'example@mail.com',
          error: _dt.rxEmail.error,
          prefixIcon: const Icon(Icons.email),
        ),
      ),
    );
  }
}
