import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/bloc/blocs.dart';
import 'core/cubits/cubits.dart';
import 'core/cubits/language_cubit.dart';
import 'core/repository/repos.dart';
import 'core/routes/routes.dart';
import 'core/utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceUtils.init();
  MapUtils.getMarkerPic();
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepo>(
          create: (context) => AuthRepo(),
        ),
        RepositoryProvider<OrderRepo>(
          create: (context) => OrderRepo(),
        ),
        RepositoryProvider<SupplierRepo>(
          create: (context) => SupplierRepo(),
        ),
      ],
      child: Phoenix(
        child: const MyApp(),
      ),
    ),
  );
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubit>(
          create: (context) => LanguageCubit()..getCurrentLanguage(),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit()..getCurrentTheme(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(
            authRepo: context.read<AuthRepo>(),
          ),
        ),
        BlocProvider(
          create: (context) => OrdersBloc(
            orderRepo: context.read<OrderRepo>(),
          ),
        ),
        BlocProvider(
          create: (context) => PastOrdersBloc(
            orderRepo: context.read<OrderRepo>(),
          ),
        ),
        BlocProvider(
          create: (context) => ShoppersBloc(
            orderRepo: context.read<OrderRepo>(),
          ),
        ),
        BlocProvider(
          create: (context) => SuppliersBloc(
            supplierRepo: context.read<SupplierRepo>(),
          ),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return BlocBuilder<LanguageCubit, Locale>(builder: (_, locale) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                AppLocalizationsDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en'),
                Locale('ar'),
                Locale('fr'),
              ],
              locale: locale,
              theme: theme,
              initialRoute: PageRoutes.splash,
              routes: PageRoutes().routes(),
            );
          });
        },
      ),
    );
  }
}

// emmarthurson@gmail.com decount655