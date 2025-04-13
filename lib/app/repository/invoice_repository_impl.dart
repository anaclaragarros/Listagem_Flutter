import 'package:listagem/app/model/invoice.dart';
import 'package:listagem/app/repository/invoice_repository.dart';
import 'package:dio/dio.dart';

class InvoiceRepositoryImpl implements InvoiceRepository {
  final _client = Dio();

  @override
  Future<List<Invoice>> getInvoice() async {
    await Future.delayed(const Duration(seconds: 3)); //fake delay

    final response = await _client.get('https://jsonplaceholder.typicode.com/todos');
    final invoices = List.from(response.data as List<dynamic>).map((e) => Invoice.fromMap(e)).toList();
    return invoices;
  }
}
