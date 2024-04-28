library product_view;

import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'product_view_model.dart';

part 'product_mobile.dart';
part 'product_tablet.dart';
part 'product_desktop.dart';

// ignore: must_be_immutable
class ProductView extends StatelessWidget {
  static const routeName = '/product';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
      viewModelBuilder: () => ProductViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _ProductMobile(viewModel),
          desktop: _ProductMobile(viewModel),
          tablet: _ProductMobile(viewModel),

          //Uncomment it if you've planned to support specifically for desktop and tablet
          //desktop: _ProductDesktop(viewModel),
          //tablet: _ProductTablet(viewModel),  
        );
      }
    );
  }
}