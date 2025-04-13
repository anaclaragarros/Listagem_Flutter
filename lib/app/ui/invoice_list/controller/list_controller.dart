import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:listagem/app/repository/invoice_repository_impl.dart';
import 'package:listagem/app/ui/invoice_list/controller/list_state.dart';
import 'package:listagem/core/value_notifier_extension.dart';
import 'package:listagem/core/view_state.dart';

class ListController extends ValueNotifier<ListState> {
  ListController() : super(const ListState.loading());

  final _repository = InvoiceRepositoryImpl();

  Future<void> init() async {
    try {
      final response = await _repository.getInvoice();
      emit(
        state.copyWith(
          state: ViewState.LOADED,
          invoices: response,
        ),
      );
    } catch (error, stackTrace) {
      log("erro ao buscar invoices", error: error, stackTrace: stackTrace);
      emit(value.copyWith(state: ViewState.ERROR));
    }
  }
}
