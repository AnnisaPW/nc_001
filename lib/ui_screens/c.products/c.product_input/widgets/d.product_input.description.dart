part of '../_index.dart';

class ProductInputDescription extends StatelessWidget {
  const ProductInputDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxDescription.controller,
        focusNode: _dt.rxDescription.focusNode,
        onEditingComplete: () => _dt.rxPrice.focusNode.requestFocus(),
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Description',
          hintText: 'Description of Product',
          errorText: _dt.rxDescription.error,
          isDense: true,
        ),
      ),
    );
  }
}
