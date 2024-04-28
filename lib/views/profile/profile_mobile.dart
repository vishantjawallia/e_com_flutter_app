part of profile_view;

// ignore: must_be_immutable
class _ProfileMobile extends StatelessWidget {
  final ProfileViewModel viewModel;

  _ProfileMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ProfileMobile')),
    );
  }
}