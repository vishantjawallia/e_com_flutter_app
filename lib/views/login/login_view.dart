library login_view;

import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'login_view_model.dart';

part 'login_mobile.dart';
part 'login_tablet.dart';
part 'login_desktop.dart';

// ignore: must_be_immutable
class LoginView extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _LoginMobile(viewModel),
          desktop: _LoginMobile(viewModel),
          tablet: _LoginMobile(viewModel),

          //Uncomment it if you've planned to support specifically for desktop and tablet
          //desktop: _LoginDesktop(viewModel),
          //tablet: _LoginTablet(viewModel),  
        );
      }
    );
  }
}