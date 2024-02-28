part of 'sales_report_bloc.dart';

@freezed
class SalesReportEvent with _$SalesReportEvent {
  const factory SalesReportEvent() = _SalesReportEvent;

  factory SalesReportEvent.salesReport() = _SalesReport;

  factory SalesReportEvent.sortSales(String date) = _SortSales;
}
