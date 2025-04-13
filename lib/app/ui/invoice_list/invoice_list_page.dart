import 'package:flutter/material.dart';
import 'package:listagem/app/ui/invoice_list/controller/list_controller.dart';
import 'package:listagem/app/ui/invoice_list/controller/list_state.dart';
import 'package:listagem/app/ui/invoice_list/view/invoice_error_view.dart';
import 'package:listagem/app/ui/invoice_list/view/invoice_loaded_view.dart';
import '../../../core/view_state.dart';

class InvoiceListPage extends StatefulWidget {
  const InvoiceListPage({super.key});

  @override
  State<InvoiceListPage> createState() => _InvoiceListPageState();
}

class _InvoiceListPageState extends State<InvoiceListPage> {
  final listController = ListController();

  @override
  void initState() {
    listController.init();
    super.initState();
  }

  void _retryLoading() {
    listController.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Invoices"),
      ),
      body: ValueListenableBuilder<ListState>(
        valueListenable: listController,
        builder: (context, value, child) {
          Widget? body;

          if (value.state == ViewState.LOADING) {
            body = const Center(child: CircularProgressIndicator());
          } else if (value.state == ViewState.LOADED) {
            body = InvoiceLoadedView(invoices: value.invoices);
          } else if (value.state == ViewState.ERROR) {
            body = InvoiceErrorView(onRetry: _retryLoading);
          }

          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: body,
          );
        },
      ),
    );
  }
}
