part of '_index.dart';

class ProductEditData {
  final rxTitle = 'Product Edit'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProductDetail = _pv.rxProductDetail;

  final rxPickedFile = RM.inject<XFile?>(() => null);

  final rxForm = RM.inject(
    () => RM.injectForm(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      submit: () async => _ct.updateProduct(),
    ),
  );

  final rxName = RM.inject(
    () => RM.injectTextEditing(
      text: Prov.product.st.rxProductDetail.st!.name,
      validateOnTyping: true,
      validators: [Validate.isNotEmpty],
    ),
  );

  final rxDescription = RM.inject(
    () => RM.injectTextEditing(
      text: Prov.product.st.rxProductDetail.st!.description,
      validateOnTyping: true,
      validators: [Validate.isNotEmpty],
    ),
  );

  final rxPrice = RM.inject(
    () => RM.injectTextEditing(
      text: Prov.product.st.rxProductDetail.st!.price.toString(),
      validateOnTyping: true,
      validators: [
        Validate.isNotEmpty,
        Validate.isNumeric,
      ],
    ),
  );

  final rxQuantity = RM.inject(
    () => RM.injectTextEditing(
      text: Prov.product.st.rxProductDetail.st!.quantity.toString(),
      validateOnTyping: true,
      validators: [
        Validate.isNotEmpty,
        Validate.isNumeric,
      ],
    ),
  );
}
