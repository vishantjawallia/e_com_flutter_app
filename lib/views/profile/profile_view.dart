library profile_view;

import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'profile_view_model.dart';

part 'profile_mobile.dart';
part 'profile_tablet.dart';
part 'profile_desktop.dart';

// ignore: must_be_immutable
class ProfileView extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _ProfileMobile(viewModel),
          desktop: _ProfileMobile(viewModel),
          tablet: _ProfileMobile(viewModel),

          //Uncomment it if you've planned to support specifically for desktop and tablet
          //desktop: _ProfileDesktop(viewModel),
          //tablet: _ProfileTablet(viewModel),  
        );
      }
    );
  }
}