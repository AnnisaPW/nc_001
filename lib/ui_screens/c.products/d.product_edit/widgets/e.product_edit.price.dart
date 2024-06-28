part of '../_index.dart';

class ProductEditPrice extends StatelessWidget {
  const ProductEditPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm.st,
      builder: () => TextField(
        controller: _dt.rxPrice.st.controller,
        focusNode: _dt.rxPrice.st.focusNode,
        onEditingComplete: () => _dt.rxQuantity.st.focusNode.requestFocus(),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Price',
          hintText: 'E.g 20000',
          errorText: _dt.rxPrice.st.error,
          isDense: true,
        ),
      ),
    );
  }
}
