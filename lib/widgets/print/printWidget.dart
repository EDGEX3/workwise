import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;

class PrintWidget extends StatelessWidget {
  final dynamic data; // Can be HTML, PDF, etc.

  PrintWidget({required this.data});

  // The method to handle printing
  void PinterWork(BuildContext context) {
    if (data is String) {
      // Assuming it's HTML content
      _printHtml(data);
    } else if (data is pw.Document) {
      // If it's a PDF document
      _printPdf(data);
    } else {
      // Handle other types of data if needed
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Unsupported data format")),
      );
    }
  }

  // Method to print HTML content
  void _printHtml(String htmlContent) {
    Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async {
        final pdf = pw.Document();
        pdf.addPage(
          pw.Page(
            build: (pw.Context context) => pw.Center(
              child: pw.Text(htmlContent),
            ),
          ),
        );
        return pdf.save();
      },
    );
  }

  // Method to print PDF document
  void _printPdf(pw.Document pdfDocument) {
    Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async {
        return pdfDocument.save();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => PinterWork(context),
      child: Text('Print'),
    );
  }
}
