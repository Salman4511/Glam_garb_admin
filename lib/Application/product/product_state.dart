part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({required bool isloading, ProductModel? product}) =
      _ProductState;

  factory ProductState.initial() {
    return const ProductState(isloading: true);
  }
}
