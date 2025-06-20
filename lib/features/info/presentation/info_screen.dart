import 'package:aqar_ya_masr/core/helpers/shared_pref_helper.dart';
import 'package:aqar_ya_masr/core/helpers/shared_pref_keys.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/features/info/logic/info_cubit.dart';
import 'package:aqar_ya_masr/features/info/presentation/widgets/aqarty_container_widget.dart';
import 'package:aqar_ya_masr/features/info/presentation/widgets/more_services_container_widget.dart';
import 'package:aqar_ya_masr/features/info/presentation/widgets/user_image_and_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/info_state.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  void initState() {
    super.initState();
    _checkAndGetProfileData();
  }
  void _checkAndGetProfileData() async {
    final token = await SharedPrefHelper.getString(SharedPrefKeys.userToken);
    if (token != null&& mounted) {
      context.read<InfoCubit>().getProfileData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BlocBuilder<InfoCubit, InfoState>(
              builder: (context, state) {
                return state.maybeWhen(
                  profileDataSuccess: (data) => UserImageAndDataWidget(
                    profileDataModel: data,
                  ),
                  profileDataLoading: () => Center(
                    child: CircularProgressIndicator(),
                  ),
                  profileDataFailure: (error) => Center(
                    child: Text(error),
                  ),
                  orElse: () => SizedBox.shrink(),
                );
              },
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AqartyContainerWidget(),
                      verticalSpace(10),
                      MoreServicesContainerWidget(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
