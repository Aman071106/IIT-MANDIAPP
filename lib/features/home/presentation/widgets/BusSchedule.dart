import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BusPage extends StatefulWidget {
  const BusPage({super.key});

  @override
  State<BusPage> createState() => _BusPage();
}

class _BusPage extends State<BusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title:
            Text("Bus schedule", style: Theme.of(context).textTheme.bodyMedium),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Theme.of(context).colorScheme.onSurface,
                width: 1.5,
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SfPdfViewerTheme(
                data: SfPdfViewerThemeData(
                    backgroundColor: Theme.of(context).cardColor),
                child: SfPdfViewer.asset(
                  'assets/pdf/bus_schedule.pdf',
                  enableTextSelection: false,
                  canShowPaginationDialog: false,
                  canShowTextSelectionMenu: false,
                  canShowHyperlinkDialog: false,
                  interactionMode: PdfInteractionMode.pan,
                  canShowSignaturePadDialog: false,
                  canShowScrollHead: false,
                  maxZoomLevel: double.infinity,
                ),
              ),
            )),
      ),
    );
  }
}
