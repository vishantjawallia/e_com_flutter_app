part of 'product_view.dart';

// ignore: must_be_immutable
class _ProductMobile extends StatelessWidget {
  final ProductViewModel viewModel;

  const _ProductMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(viewModel.product)),
    );
  }
}
