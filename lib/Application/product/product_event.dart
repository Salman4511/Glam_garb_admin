part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent() = _ProductEvent;

  factory ProductEvent.addProduct(ProductPassModel newProduct)=_AddProduct;
}
