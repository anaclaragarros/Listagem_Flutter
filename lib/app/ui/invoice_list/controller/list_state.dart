import 'package:listagem/app/model/invoice.dart';
import 'package:listagem/core/view_state.dart';

final class ListState {
  final ViewState state;
  final List<Invoice> invoices;

  const ListState({
    required this.state,
    required this.invoices,
  });

  const ListState.loading() : this(state: ViewState.LOADING, invoices: const <Invoice>[]);

  ListState copyWith({
    ViewState? state,
    List<Invoice>? invoices,
  }) {
    return ListState(
      state: state ?? this.state,
      invoices: invoices ?? this.invoices,
    );
  }
}
