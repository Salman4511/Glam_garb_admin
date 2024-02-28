import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb_admin/Domain/response_models/sales_report_model/sales_report_model/sales_report_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/sales_report/sales_report_repo.dart';

part 'sales_report_event.dart';
part 'sales_report_state.dart';
part 'sales_report_bloc.freezed.dart';

class SalesReportBloc extends Bloc<SalesReportEvent, SalesReportState> {
  final SalesReportRepo repo;
  SalesReportBloc(this.repo) : super(SalesReportState.initial()) {
    on<_SalesReport>((event, emit) async {
      final salesReport = await repo.salesReport();
      emit(state.copyWith(isLoading: false, salesReport: salesReport));
    });

    on<_SortSales>((event, emit) async {
      final sortSales = await repo.SortSalesReport(event.date);
      emit(state.copyWith(isLoading: false, salesReport: sortSales));
    });
  }
}
