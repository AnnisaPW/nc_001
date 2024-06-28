part of '../_index.dart';

class ProductInputQuantity extends StatelessWidget {
  const ProductInputQuantity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxQuantity.controller,
        focusNode: _dt.rxQuantity.focusNode,
        onEditingComplete: () => _dt.rxQuantity.focusNode.unfocus(),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Quantity',
          hintText: 'E.g 20',
          errorText: _dt.rxQuantity.error,
          isDense: true,
        ),
      ),
    );
  }
}
