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
