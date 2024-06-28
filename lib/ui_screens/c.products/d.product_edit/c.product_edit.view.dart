part of '_index.dart';

class ProductEditView extends StatelessWidget {
  const ProductEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductEditAppbar(),
      ),
      floatingActionButton: const ProductEditFab(),
      body: Center(
        child: OnFormBuilder(
          listenTo: _dt.rxForm.st,
          builder: () => Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProductEditName(),
                SizedBoxH(15),
                ProductEditDescription(),
                SizedBoxH(15),
                ProductEditPrice(),
                SizedBoxH(15),
                ProductEditQuantity(),
                SizedBoxH(15),
                ProductEditImage(),
                SizedBoxH(20),
                ProductEditSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
