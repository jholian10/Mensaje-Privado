part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

final class HomeLoginView extends HomeState {}

final class HomeLoadingView extends HomeState {}

final class HomeFriendsView extends HomeState {}

final class HomeErrorView extends HomeState {}

final class HomeMessageView extends HomeState {}
