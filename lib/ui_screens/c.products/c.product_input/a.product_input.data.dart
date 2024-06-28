part of '_index.dart';

class ProductInputData {
  final rxTitle = 'Product Input'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProductList = _pv.rxProductList;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async => await _ct.createProduct(),
  );

  final rxName = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [Validate.isNotEmpty],
  );

  final rxDescription = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [Validate.isNotEmpty],
  );

  final rxPrice = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxQuantity = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxPickedFile = RM.inject<XFile?>(() => null);
}
