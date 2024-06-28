part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductListAppbar(),
      ),
      floatingActionButton: const ProductListFab(),
      body: Center(
        child: OnBuilder.all(
          listenToMany: [_dt.rxProductLoader],
          onWaiting: () => const Center(child: CircularProgressIndicator()),
          onError: (error, refreshError) => Center(child: Text('Error $error')),
          onData: (data) => Column(
            children: [
              ...List.generate(
                _dt.rxProductList.st.length,
                (index) => Card(
                  color: Colors.grey.withOpacity(0.1),
                  child: ListTile(
                    title: Text(_dt.rxProductList.st[index].name),
                    subtitle: Text(_dt.rxProductList.st[index].price.toString()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
