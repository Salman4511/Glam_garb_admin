import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_add_model/product_model.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_delete_model/product_delete_model.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_edit_model/product_edit_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/Product/product_repo.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepoo repo;
  ProductBloc(this.repo) : super(ProductState.initial()) {
    on<_AddProduct>((event, emit) async {
      final product = await repo.addProduct(
          event.images,
          event.prodname,
          event.proddesc,
          event.prodcolor,
          event.sizes,
          event.stocks,
          event.prodbrand,
          event.prodcategory,
          event.prodregprice,
          event.prodsprice,
          event.gender);
      emit(state.copyWith(isloading: false, product: product));
    });

    on<_EditProduct>((event, emit) async {
      final editProduct = await repo.editProduct(
          event.images,
          event.prodname,
          event.proddesc,
          event.prodcolor,
          event.sizes,
          event.stocks,
          event.prodbrand,
          event.prodcategory,
          event.prodregprice,
          event.prodsprice,
          event.gender,
          event.id);
      emit(state.copyWith(isloading: false, editProduct: editProduct));
    });

    on<_DeleteProduct>((event, emit) async {
      final delProduct = await repo.deleteProduct(event.id);
      emit(state.copyWith(isloading: false, delProduct: delProduct));
    });
  }
}
