import 'package:flutter/material.dart';
import 'package:listagem/app/model/invoice.dart';
import 'package:listagem/app/theme/app_colors.dart';
import 'package:listagem/app/ui/invoice_detail/invoice_detail_page.dart';

class InvoiceLoadedView extends StatefulWidget {
  final List<Invoice> invoices;

  const InvoiceLoadedView({super.key, required this.invoices});

  @override
  State<InvoiceLoadedView> createState() => _InvoiceLoadedViewState();
}

class _InvoiceLoadedViewState extends State<InvoiceLoadedView> {
  String query = '';
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void toggleCompleted(int index) {
    setState(() {
      widget.invoices[index] = Invoice(
        userId: widget.invoices[index].userId,
        id: widget.invoices[index].id,
        title: widget.invoices[index].title,
        completed: !widget.invoices[index].completed,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final filtered = widget.invoices.where((inv) {
      return inv.title.toLowerCase().contains(query.toLowerCase());
    }).toList();

    return SafeArea(
      child: Column(
        children: [
          Container(
            color: AppColors.background,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  onChanged: (val) => setState(() => query = val),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    hintText: 'Pesquisar...',
                    prefixIcon: const Icon(Icons.search, color: AppColors.primary),
                    suffixIcon: query.isNotEmpty
                        ? IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => setState(() => query = ''),
                    )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: query.isNotEmpty ? AppColors.danger : AppColors.border,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: query.isNotEmpty ? AppColors.danger : AppColors.primary,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Image.asset('assets/brgaap.png', height: 100),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(scrollbars: false),
              child: Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                radius: const Radius.circular(8),
                thickness: 6,
                child: Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ListView(
                    controller: _scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    children: [
                      Container(
                        color: AppColors.headerBackground,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Text(
                                'Nome',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Completado',
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Detalhes',
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      ...filtered.map((inv) {
                        final index = widget.invoices.indexOf(inv);
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          margin: const EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.divider),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Expanded(child: Text(inv.title)),
                              SizedBox(
                                width: 100,
                                child: Checkbox(
                                  value: inv.completed,
                                  onChanged: (_) => toggleCompleted(index),
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => InvoiceDetailPage(invoice: inv),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.background,
                                    side: const BorderSide(color: AppColors.primary),
                                  ),
                                  icon: const Icon(Icons.description_outlined, color: AppColors.primary),
                                  label: const Text('Abrir', style: TextStyle(color: AppColors.primary)),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
