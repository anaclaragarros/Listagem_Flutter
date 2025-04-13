import 'package:listagem/app/model/invoice.dart';

abstract class InvoiceRepository {
  Future<List<Invoice>> getInvoice();
}
