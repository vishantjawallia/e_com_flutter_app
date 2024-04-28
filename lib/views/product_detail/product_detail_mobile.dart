part of product_detail_view;

// ignore: must_be_immutable
class _ProductDetailMobile extends StatelessWidget {
  final ProductDetailViewModel viewModel;

  _ProductDetailMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ProductDetailMobile')),
    );
  }
}