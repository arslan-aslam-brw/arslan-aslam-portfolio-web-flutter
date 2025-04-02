import 'package:arslan_aslam/core/color/colors.dart';
import 'package:arslan_aslam/sections/main/main_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';
import 'bloc/connected_bloc.dart';

class NChecking extends StatelessWidget {
  const NChecking({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectedBloc, ConnectedState>(
      builder: (context, state) {
        if (state is ConnectedSucessState) {
          return const MainPage();
        } else if (state is ConnectedFailureState) {
          return const NoConnectionErorr();
        } else {
          return const MainPage();
        }
      },
      listener: (context, state) {
        if (state is ConnectedSucessState) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Internet Connected')));
        } else if (state is ConnectedFailureState) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Internet Lost')));
        }
      },
    );
  }
}

class NoConnectionErorr extends StatelessWidget {
  const NoConnectionErorr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadingAnimationWidget.staggeredDotsWave(
              color: primaryColor,
              size: 50.0,
            ),
            SizedBox(height: 3.h),
            const Text("Connection failed!"),
          ],
        ),
      ),
    );
  }
}
