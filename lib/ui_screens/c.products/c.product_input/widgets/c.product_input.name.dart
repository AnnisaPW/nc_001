part of '../_index.dart';

class ProductInputName extends StatelessWidget {
  const ProductInputName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxName.controller,
        focusNode: _dt.rxName.focusNode,
        onEditingComplete: () => _dt.rxDescription.focusNode.requestFocus(),
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Name',
          hintText: 'Name of Product',
          errorText: _dt.rxName.error,
          isDense: true,
        ),
      ),
    );
  }
}
