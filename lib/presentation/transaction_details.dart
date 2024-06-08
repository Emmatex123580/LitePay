import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:litepay/core/copy_function.dart';
import 'package:litepay/theme/theme_helper.dart';
import 'package:litepay/widgets/custom_elevated_button.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class TransactionDetails extends StatefulWidget {
  const TransactionDetails({Key? key}) : super(key: key);

  @override
  State<TransactionDetails> createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {
  late pw.Widget _pdfWidget;

 
  @override
  void initState() {
    super.initState();
    _loadPdfWidget();
  }

  Future<void> _loadPdfWidget() async {
    final pdfWidget = await _detailBodyToPdfWidget();
    setState(() {
      _pdfWidget = pdfWidget;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Transaction Details",
            style: TextStyle(fontSize: 14, fontFamily: "Poppins", fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _DetailBody(context),
              CustomElevatedButton(
                text: "Share pdf",
                margin: EdgeInsets.only(left: 60, right: 60, top: 90),
                onPressed: _sharePDF,
              )
            ],
          ),
        ),
      ),
    );
  }

  // This widget contains transaction details to be displayed
  Widget _DetailBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/img_image19.png"),
            radius: 50,
          ),
          SizedBox(height: 5),
          Text(
            "MTN",
            style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w400, fontSize: 14),
          ),
          SizedBox(height: 5),
          Text(
            "\u20A6500.00",
            style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w700, fontSize: 18),
          ),
          SizedBox(height: 5),
          Text(
            "Successful",
            style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF08DE11)),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recipient Mobile", style: theme.textTheme.displaySmall),
              Text("08059941818", style: theme.textTheme.displaySmall)
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Transaction Type", style: theme.textTheme.displaySmall),
              Text("Airtime", style: theme.textTheme.displaySmall)
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Payment Method", style: theme.textTheme.displaySmall),
              Text("Balance", style: theme.textTheme.displaySmall)
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Transaction Number", style: theme.textTheme.displaySmall),
              Row(
                children: [
                  Text("856709851267431876", style: theme.textTheme.displaySmall),
                  IconButton(
                    icon: Icon(Icons.content_copy, size: 12, color: Color(0xFF9B03D0)),
                    onPressed: () => copyText(context, "856709851267431876", "Copied to clipboard"),
                    tooltip: "Copy number",
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Transaction Date", style: theme.textTheme.displaySmall),
              Text("12th jan, 2024", style: theme.textTheme.displaySmall)
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Transaction Time", style: theme.textTheme.displaySmall),
              Text("12:20:33", style: theme.textTheme.displaySmall)
            ],
          ),
        ],
      ),
    );
  }
 
  Future<pw.Widget> _detailBodyToPdfWidget() async {
    final imageBytes = await rootBundle.load("assets/images/img_image19.png");
    final image = pw.MemoryImage(imageBytes.buffer.asUint8List());

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Container(
          decoration: pw.BoxDecoration(
            shape: pw.BoxShape.circle,
            border: pw.Border.all(color: PdfColors.black, width: 1.0),
          ),
          child: pw.Image(image, width: 100, height: 100),
        ),
        pw.SizedBox(height: 5),
        pw.Text(
          "MTN",
          style: pw.TextStyle(fontWeight: pw.FontWeight.normal, fontSize: 14),
        ),
        pw.SizedBox(height: 5),
        pw.Text(
          "\u20A6500.00",
          style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 18),
        ),
        pw.SizedBox(height: 5),
        pw.Text(
          "Successful",
          style: pw.TextStyle(fontWeight: pw.FontWeight.normal, fontSize: 12, color: PdfColors.green),
        ),
        pw.SizedBox(height: 20),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text("Recipient Mobile", style: pw.TextStyle(fontSize: 12)),
            pw.Text("08059941818", style: pw.TextStyle(fontSize: 12)),
          ],
        ),
        pw.SizedBox(height: 24),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text("Transaction Type", style: pw.TextStyle(fontSize: 12)),
            pw.Text("Airtime", style: pw.TextStyle(fontSize: 12)),
          ],
        ),
        pw.SizedBox(height: 24),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text("Payment Method", style: pw.TextStyle(fontSize: 12)),
            pw.Text("Balance", style: pw.TextStyle(fontSize: 12)),
          ],
        ),
        pw.SizedBox(height: 24),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text("Transaction Number", style: pw.TextStyle(fontSize: 12)),
            pw.Row(
              children: [
                pw.Text("856709851267431876", style: pw.TextStyle(fontSize: 12)),
                pw.Icon(pw.IconData(0xe14d), size: 12, color: PdfColors.purple),
              ],
            ),
          ],
        ),
        pw.SizedBox(height: 24),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text("Transaction Date", style: pw.TextStyle(fontSize: 12)),
            pw.Text("12th jan, 2024", style: pw.TextStyle(fontSize: 12)),
          ],
        ),
        pw.SizedBox(height: 24),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text("Transaction Time", style: pw.TextStyle(fontSize: 12)),
            pw.Text("12:20:33", style: pw.TextStyle(fontSize: 12)),
          ],
        ),
      ],
    );
    }

  ///**
  Future<File> generatePDF() async {
    final pdf = pw.Document();

    //Add content to the PDF
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(child: _pdfWidget); // Center
        }, // Page
      ), // addPage
    );

    //Get the temporary directory path
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;

    //Save the PDF
    final File file = File('$path/example.pdf');
    await file.writeAsBytes(await pdf.save());

    return file;
  }

  Future<void> _sharePDF() async {
    final file = await generatePDF();
    await Share.share("${file.path}");
  }
  //*/
}

