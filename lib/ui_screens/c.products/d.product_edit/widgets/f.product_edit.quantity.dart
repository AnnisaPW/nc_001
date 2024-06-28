part of '../_index.dart';

class ProductEditQuantity extends StatelessWidget {
  const ProductEditQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm.st,
      builder: () => TextField(
        controller: _dt.rxQuantity.st.controller,
        focusNode: _dt.rxQuantity.st.focusNode,
        onEditingComplete: () => _dt.rxQuantity.st.focusNode.unfocus(),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Quantity',
          hintText: 'E.g 20',
          errorText: _dt.rxQuantity.st.error,
          isDense: true,
        ),
      ),
    );
  }
}
