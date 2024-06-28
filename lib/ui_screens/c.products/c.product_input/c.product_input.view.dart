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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await _ct.createProduct();
              },
              child: const Text(
                "Create",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
