import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/cubits/cubits.dart';
import 'package:dujis_partner/core/routes/routes.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/widgets.dart';

class ThemeList {
  final String? title;
  final String? subtitle;

  ThemeList({this.title, this.subtitle});
}

class LanguageList {
  final String? title;

  LanguageList({this.title});
}

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late ThemeCubit _themeCubit;
  String? selectedLocal;
  String? selectedTheme;

  // final List<String> language = [
  //   'English',
  //   'عربى',
  //   'français',
  //   'bahasa Indonesia',
  //   'português',
  //   'Español',
  //   'italiano',
  //   'Türk',
  //   'Kiswahili',
  //   'Deutsch',
  //   'Română'
  // ];

  @override
  void initState() {
    _themeCubit = BlocProvider.of<ThemeCubit>(context);
    selectedTheme = _themeCubit.isDark ? 'Dark Mode' : 'Light Mode';
    //  _checkForBuyNow();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<ThemeList> themes = <ThemeList>[
      ThemeList(
        title: AppLocalizations.of(context)!.darkMode,
        subtitle: AppLocalizations.of(context)!.darkText,
      ),
      ThemeList(
        title: AppLocalizations.of(context)!.lightMode,
        subtitle: AppLocalizations.of(context)!.lightText,
      ),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(AppLocalizations.of(context)!.settings!,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w500)),
        ),
        titleSpacing: 0.0,
      ),
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  height: 57.7,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  //color: kCardBackgroundColor,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppLocalizations.of(context)!.display!,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: dujisTextColor,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.08),
                    ),
                  ),
                ),
                BlocBuilder<ThemeCubit, ThemeData>(builder: (_, theme) {
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: themes.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => RadioListTile(
                      value: themes[index].title!,
                      title: Text(
                        themes[index].title!,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                      ),
                      subtitle: Text(
                        themes[index].subtitle!,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      groupValue: selectedTheme,
                      onChanged: (dynamic value) {
                        setState(() {
                          selectedTheme = value;
                        });
                      },
                    ),
                  );
                }),
                Container(
                  height: 58.0,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppLocalizations.of(context)!.selectLanguage!,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: dujisTextColor,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.08),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomBar(
                text: AppLocalizations.of(context)!.continueText,
                onTap: () {
                  bool darkTheme =
                      (selectedTheme == 'Dark Mode') ? true : false;
                  _themeCubit.setTheme(darkTheme);

                  Navigator.pushNamed(context, PageRoutes.loginNavigator);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
