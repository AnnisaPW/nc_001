part of '_index.dart';

class ProductInputView extends StatelessWidget {
  const ProductInputView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductInputAppbar(),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: OnFormBuilder(
            listenTo: _dt.rxForm,
            builder: () => const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProductInputName(),
                SizedBoxH(15),
                ProductInputDescription(),
                SizedBoxH(15),
                ProductInputPrice(),
                SizedBoxH(15),
                ProductInputQuantity(),
                SizedBoxH(15),
                ProductInputImage(),
                SizedBoxH(20),
                ProductInputSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
