import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeLoginView()) {
    on<HomeSearchPressed>((event, emit) async {
      emit(HomeLoginView());
      final url = Uri.parse('uri');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        emit(HomeLoadingView());
      } else {
        emit(HomeErrorView());
      }
    });
  }
}
