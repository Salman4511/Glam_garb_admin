import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/auth/auth_bloc.dart';
import 'package:glam_garb_admin/Application/brand/brand_bloc.dart';
import 'package:glam_garb_admin/Application/cateory/category_bloc.dart';
import 'package:glam_garb_admin/Application/product/product_bloc.dart';
import 'package:glam_garb_admin/Infrastructure/Services/auth/Auth_repo.dart';
import 'package:glam_garb_admin/Infrastructure/Services/brand/brand_repo.dart';
import 'package:glam_garb_admin/Infrastructure/Services/category/category_repo.dart';
import 'package:glam_garb_admin/Infrastructure/Services/product/product_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final repo = AuthRepo();
  final catRepo = CategoryRepo();
  final brandRepo = BrandRepo();
  final productRepo = ProductRepo();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(repo),
        ),
        BlocProvider(
          create: (context) => CategoryBloc(catRepo),
        ),
        BlocProvider(
          create: (context) => BrandBloc(brandRepo),
        ),
        BlocProvider(
          create: (context) => ProductBloc(productRepo),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const splashscreen(),
      ),
    );
  }
}
