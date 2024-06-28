part of '../_index.dart';

class ProductInputPrice extends StatelessWidget {
  const ProductInputPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxPrice.controller,
        focusNode: _dt.rxPrice.focusNode,
        onEditingComplete: () => _dt.rxQuantity.focusNode.requestFocus(),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Price',
          hintText: 'E.g 20000',
          errorText: _dt.rxPrice.error,
          isDense: true,
        ),
      ),
    );
  }
}
