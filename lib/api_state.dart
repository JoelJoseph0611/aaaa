part of 'api_bloc.dart';

class ApiState {
  List<Products>? productlist = [];

  ApiState({required this.productlist});
}

final class ApiInitial extends ApiState {
  ApiInitial({required super.productlist});
}
