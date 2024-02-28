part of 'sales_report_bloc.dart';

@freezed
class SalesReportState with _$SalesReportState {
  const factory SalesReportState({
    required bool isLoading,
    SalesReportModel? salesReport,
  }) = _SalesReportState;

  factory SalesReportState.initial() {
    return const SalesReportState(isLoading: false);
  }
}
