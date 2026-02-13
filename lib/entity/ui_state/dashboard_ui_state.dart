import 'package:freezed_annotation/freezed_annotation.dart';
import '../dashboard.dart';

part 'dashboard_ui_state.freezed.dart';

@freezed
class DashboardUIState with _$DashboardUIState {
  const DashboardUIState._();
  const factory DashboardUIState({
    @Default(false) bool isLoading,
    @Default('') String error,
    DashboardResponse? data,
    @Default('1w') String selectedRange,
  }) = _DashboardUIState;
}