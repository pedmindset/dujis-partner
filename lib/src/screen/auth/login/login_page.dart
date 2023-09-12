import 'dart:convert';
import 'dart:io';

import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dujis_partner/core/bloc/blocs.dart';
import 'package:dujis_partner/core/models/request/login/login_request.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:dujis_partner/core/utils/preference_utils.dart';
import 'package:dujis_partner/src/screen/market/base_market.dart';
import 'package:dujis_partner/src/screen/shopper/base_shopper.dart';
import 'package:dujis_partner/src/widgets/spaces.dart';
import 'package:dujis_partner/src/widgets/text_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final DeviceInfoPlugin _infoPlugin = DeviceInfoPlugin();
  // final TabController tabController = TabController(length: length, vsync: vsync)

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String? deviceName;

  late LoginBloc loginBloc;

  @override
  void initState() {
    loginBloc = context.read<LoginBloc>();
    setDeviceInfo();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void setDeviceInfo() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo = await _infoPlugin.androidInfo;
      deviceName = androidDeviceInfo.model;
    } else {
      IosDeviceInfo iosDeviceInfo = await _infoPlugin.iosInfo;
      deviceName = iosDeviceInfo.name;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.green, Colors.orange],
        ),
      ),
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        animationDuration: const Duration(milliseconds: 500),
        child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.75),
          body: BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state.isAuthenticated && state.status.isSuccess) {
                PreferenceUtils.setString(
                  prefUserDetail,
                  jsonEncode(state.user),
                );
                PreferenceUtils.setBool(prefLoggedIn, true);
                PreferenceUtils.setString(prefAuthKey, state.token!);
                PreferenceUtils.setInt(prefUserId, state.user!.id!);
                PreferenceUtils.setString(prefUserName, state.user!.name!);
                PreferenceUtils.setString(prefUserEmail, state.user!.email!);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green[100],
                    content: Text(
                      'Login successful',
                      style: TextStyle(color: dujisMainBackColor),
                    ),
                  ),
                );
                if (state.isShopper) {
                  PreferenceUtils.setBool(prefIsShopper, true);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const BaseShopperScreen(),
                    ),
                  );
                } else {
                  PreferenceUtils.setBool(prefIsShopper, false);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const BaseMarketScreen(),
                    ),
                  );
                }
              }
              if (state.status.isError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(
                      state.message!,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }
            },
            builder: (context, state) {
              return SafeArea(
                child: Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                      ),
                      child: TabBar(
                        tabs: [
                          Tab(
                            child: Text(
                              'Shopper',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Supplier',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _buildShopperLogin(),
                          _buildSupplierLogin(),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  _buildShopperLogin() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return FadedSlideAnimation(
          beginOffset: const Offset(0, 0.3),
          endOffset: const Offset(0, 0),
          slideCurve: Curves.linearToEaseOut,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadedScaleAnimation(
                    scaleDuration: const Duration(milliseconds: 400),
                    child: Image.asset(
                      "assets/images/logo/app_logo.png",
                      scale: 2,
                      width: 60,
                      height: 60,
                    ),
                  ),
                  const SpaceH36(),
                  Text(
                    'Shopper Account.',
                    style: GoogleFonts.roboto(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SpaceH16(),
                  Text(
                    'Login to your shopper account.',
                    style: GoogleFonts.roboto(
                        color: Colors.grey[500],
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  const SpaceH16(),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: dujisMainBackColor,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400.withOpacity(0.7),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextInputWidget(
                            inputText: emailController,
                            textCapitalization: TextCapitalization.none,
                            keyboardType: TextInputType.emailAddress,
                            label: 'Email Address',
                            hintText: 'dujis@*******.com',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    Widget okButton = TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Ok',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                    );
                                    AlertDialog alert = AlertDialog(
                                      title: const Text(
                                        'Submission error',
                                      ),
                                      content: const Text(
                                          'The email field is not valid or empty'),
                                      actions: [okButton],
                                    );
                                    return alert;
                                  },
                                );
                              }
                              return null;
                            },
                          ),
                          const SpaceH16(),
                          TextInputWidget(
                            inputText: passwordController,
                            textCapitalization: TextCapitalization.none,
                            keyboardType: TextInputType.visiblePassword,
                            obscure: true,
                            label: 'Password',
                            hintText: '**********',
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length < 6) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    Widget okButton = TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Ok',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                    );
                                    AlertDialog alert = AlertDialog(
                                      title: const Text(
                                        'Submission error',
                                      ),
                                      content: const Text(
                                          'The password field is not valid or empty'),
                                      actions: [okButton],
                                    );
                                    return alert;
                                  },
                                );
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SpaceH20(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (state.status.isLoading) return;
                        if (formKey.currentState!.validate()) {
                          LoginRequest request = LoginRequest(
                              email: emailController.text,
                              password: passwordController.text,
                              deviceName: deviceName!);
                          loginBloc.add(ShopperLogin(request));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[800],
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            state.status.isLoading ? 'Loading ...' : 'Login',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _buildSupplierLogin() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return FadedSlideAnimation(
          beginOffset: const Offset(0, 0.3),
          endOffset: const Offset(0, 0),
          slideCurve: Curves.linearToEaseOut,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadedScaleAnimation(
                    scaleDuration: const Duration(milliseconds: 400),
                    child: Image.asset(
                      "assets/images/logo/app_logo.png",
                      scale: 2,
                      width: 60,
                      height: 60,
                    ),
                  ),
                  const SpaceH36(),
                  Text(
                    'Supplier Account.',
                    style: GoogleFonts.roboto(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SpaceH16(),
                  Text(
                    'Login to your supplier account.',
                    style: GoogleFonts.roboto(
                        color: Colors.grey[500],
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  const SpaceH16(),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: dujisMainBackColor,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400.withOpacity(0.7),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Form(
                      key: formKey1,
                      child: Column(
                        children: [
                          TextInputWidget(
                            inputText: emailController,
                            textCapitalization: TextCapitalization.none,
                            keyboardType: TextInputType.emailAddress,
                            label: 'Email Address',
                            hintText: 'dujis@*******.com',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    Widget okButton = TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Ok',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                    );
                                    AlertDialog alert = AlertDialog(
                                      title: const Text(
                                        'Submission error',
                                      ),
                                      content: const Text(
                                          'The email field is not valid or empty'),
                                      actions: [okButton],
                                    );
                                    return alert;
                                  },
                                );
                              }
                              return null;
                            },
                          ),
                          const SpaceH16(),
                          TextInputWidget(
                            inputText: passwordController,
                            textCapitalization: TextCapitalization.none,
                            keyboardType: TextInputType.visiblePassword,
                            obscure: true,
                            label: 'Password',
                            hintText: '**********',
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length < 6) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    Widget okButton = TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Ok',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                    );
                                    AlertDialog alert = AlertDialog(
                                      title: const Text(
                                        'Submission error',
                                      ),
                                      content: const Text(
                                          'The password field is not valid or empty'),
                                      actions: [okButton],
                                    );
                                    return alert;
                                  },
                                );
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SpaceH20(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (state.status.isLoading) return;
                        if (formKey1.currentState!.validate()) {
                          LoginRequest request = LoginRequest(
                              email: emailController.text,
                              password: passwordController.text,
                              deviceName: deviceName!);
                          loginBloc.add(SupplierLogin(request));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[800],
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            state.status.isLoading ? 'Loading ...' : 'Login',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // end file
}
