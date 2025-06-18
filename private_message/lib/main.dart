import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_message/my_views/bloc/bloc/home_bloc.dart';
import 'package:private_message/my_views/friends_view.dart';
import 'package:private_message/my_views/loading_view.dart';
import 'package:private_message/my_views/login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My App",
        home: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoginView) {
              return const LoginView();
            } else if (state is HomeLoadingView) {
              return const LoadingView();
            } else {
              (HomeFriendsView) {
                return const FriendsView();
              };
            }
            return Text('Algo no era verdadero');
          },
        ),
      ),
    );
  }
}
