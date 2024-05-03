import 'package:aaaa/Model/Products.dart';
import 'package:aaaa/apiService.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'api_event.dart';
part 'api_state.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  ApiBloc() : super(ApiInitial(productlist: [])) {
    on<ApiEventss>((event, emit) async {

      ApiServices Api = ApiServices();
      var Apis = await Api.fetchProducts();
      emit (ApiState(productlist: Apis));
      // TODO: implement event handler
    });
  }
}
