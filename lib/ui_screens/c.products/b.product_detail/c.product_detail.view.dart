part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductDetailAppbar(),
      ),
      floatingActionButton: const ProductDetailFab(),
      body: Center(
        child: OnBuilder.all(
          listenTo: _dt.rxProductDetail,
          onWaiting: () => const Center(
            child: CircularProgressIndicator(),
          ),
          onError: (error, refreshError) => Text('Error $error'),
          onData: (data) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnReactive(() => data!.imageUrl.isNotEmpty
                  ? SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.network(data.imageUrl),
                    )
                  : const SizedBox.shrink()),
              Text('${data?.id}'),
              Text('${data?.name}'),
              Text('${data?.description}'),
              Text('${data?.price}'),
              Text('${data?.quantity}'),
              Text('${data?.createdAt}'),
              Text('${data?.updatedAt}'),
            ],
          ),
        ),
      ),
    );
  }
}
