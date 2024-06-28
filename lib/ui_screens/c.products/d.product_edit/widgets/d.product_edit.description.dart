part of '../_index.dart';

class ProductEditDescription extends StatelessWidget {
  const ProductEditDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm.st,
      builder: () => TextField(
        controller: _dt.rxDescription.st.controller,
        focusNode: _dt.rxDescription.st.focusNode,
        onEditingComplete: () => _dt.rxPrice.st.focusNode.requestFocus(),
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Description',
          hintText: 'Description of Product',
          errorText: _dt.rxDescription.st.error,
          isDense: true,
        ),
      ),
    );
  }
}
