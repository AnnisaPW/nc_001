part of '../_index.dart';

class ProductEditName extends StatelessWidget {
  const ProductEditName({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm.st,
      builder: () => TextField(
        controller: _dt.rxName.st.controller,
        focusNode: _dt.rxName.st.focusNode,
        onEditingComplete: () => _dt.rxDescription.st.focusNode.requestFocus(),
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Name',
          hintText: 'Name of Product',
          errorText: _dt.rxName.st.error,
          isDense: true,
        ),
      ),
    );
  }
}
