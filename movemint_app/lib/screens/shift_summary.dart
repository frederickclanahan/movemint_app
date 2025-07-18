
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import '../themes.dart';

class ShiftSummary extends StatelessWidget {
  final double earnings;
  final double miles;
  final int offers;

  const ShiftSummary({
    Key? key,
    required this.earnings,
    required this.miles,
    required this.offers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rate = earnings / miles;
    final formatter = NumberFormat.currency(symbol: '\$');

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Shift Summary'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSummaryCard(context, 'Total Earnings', formatter.format(earnings)),
            _buildSummaryCard(context, 'Miles Driven', '${miles.toStringAsFixed(1)} mi'),
            _buildSummaryCard(context, 'Offers Taken', offers.toString()),
            _buildSummaryCard(context, 'Earnings per Mile', formatter.format(rate)),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: () => _exportPDF(context, formatter),
              icon: const Icon(Icons.picture_as_pdf, color: Colors.black),
              label: const Text('Export PDF', style: TextStyle(color: Colors.black)),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCard(BuildContext context, String label, String value) {
    return Card(
      color: kCardColor,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(label, style: Theme.of(context).textTheme.subtitle1),
        trailing: Text(value, style: Theme.of(context).textTheme.bodyText1),
      ),
    );
  }

  void _exportPDF(BuildContext context, NumberFormat formatter) async {
    final rate = earnings / miles;
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Padding(
          padding: const pw.EdgeInsets.all(24),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text('MoveMint Shift Summary',
                  style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 20),
              pw.Text('Date: ${DateTime.now()}'),
              pw.SizedBox(height: 12),
              pw.Text('Total Earnings: ${formatter.format(earnings)}'),
              pw.Text('Miles Driven: ${miles.toStringAsFixed(1)} mi'),
              pw.Text('Offers Taken: $offers'),
              pw.Text('Earnings per Mile: ${formatter.format(rate)}'),
            ],
          ),
        ),
      ),
    );

    await Printing.layoutPdf(onLayout: (format) => pdf.save());
  }
}
