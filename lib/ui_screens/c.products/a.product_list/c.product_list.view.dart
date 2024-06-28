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
          listenToMany: [_dt.rxProductLoader, _dt.rxProductList],
          onWaiting: () => const Center(child: CircularProgressIndicator()),
          onError: (error, refreshError) => Center(child: Text('Error $error')),
          onData: (data) => Column(
            children: [
              ...List.generate(
                _dt.rxProductList.st.length,
                (index) => OnReactive(
                  () => Card(
                    color: Colors.grey.withOpacity(0.1),
                    child: ListTile(
                      title: Text(_dt.rxProductList.st[index].name),
                      selected: _dt.rxSelectedId.st == _dt.rxProductList.st[index].id,
                      subtitle: Text(_dt.rxProductList.st[index].price.toString()),
                      onTap: () {
                        _ct.select(_dt.rxProductList.st[index].id);
                      },
                      leading: _dt.rxProductList.st[index].imageUrl.isNotEmpty
                          ? SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.network(_dt.rxProductList.st[index].imageUrl),
                            )
                          : null,
                      trailing: IconButton(
                        onPressed: () async {
                          final productEdit = Product(
                            id: _dt.rxProductList.st[index].id,
                            name: generateWordPairs().take(3).join(' '),
                            description: generateWordPairs().take(5).join(' '),
                            price: Random().nextInt(1000000),
                            quantity: Random().nextInt(1000),
                            createdAt: _dt.rxProductList.st[index].createdAt,
                            updatedAt: DateTime.now().toString(),
                          );
                          await FirebaseFirestore.instance
                              .collection("products")
                              .doc(_dt.rxProductList.st[index].id)
                              .set(
                                productEdit.toMap(),
                              );
                          _pv.rxProductList.setState((s) {
                            final productIndex = _pv.rxProductList.st.indexWhere(
                              (element) => element.id == _dt.rxProductList.st[index].id,
                            );
                            return s[productIndex] = productEdit;
                          });
                        },
                        icon: const Icon(Icons.loop),
                      ),
                    ),
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
