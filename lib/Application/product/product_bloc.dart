import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb_admin/Domain/body_models/product_model.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_add_model/brand_model.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_add_model/product_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/product/product_repo.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepo repo;
  ProductBloc(this.repo) : super(ProductState.initial()) {
    // on<ProductEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
  }
}
