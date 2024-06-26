import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sama/backend/storage/memories.dart';
import 'package:sama/components/confirm_deletion_widget.dart';
import 'package:sama/flutter_flow/flutter_flow_theme.dart';
import 'package:sama/flutter_flow/flutter_flow_util.dart';
import 'package:sama/onboarding/main_pages/edit_memory/edit_memory_widget.dart';
import 'package:sama/onboarding/main_pages/home_page/home_page_model.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';


class MemoryListItem extends StatefulWidget {
  final MemoryRecord memory;
  final HomePageModel model;

  const MemoryListItem({super.key, required this.memory, required this.model});

  @override
  State<MemoryListItem> createState() => _MemoryListItemState();
}

class _MemoryListItemState extends State<MemoryListItem> {
  // late WebViewController _controller; // Declare a WebViewController

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = WebViewController()
  //     ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //     ..setBackgroundColor(const Color(0x00000000))
  //     ..setNavigationDelegate(
  //       NavigationDelegate(
  //         onProgress: (int progress) {
  //           // Update loading bar.
  //         },
  //         onPageStarted: (String url) {},
  //         onPageFinished: (String url) {},
  //         onWebResourceError: (WebResourceError error) {},
  //         onNavigationRequest: (NavigationRequest request) {
  //           if (request.url.startsWith('https://www.youtube.com/')) {
  //             return NavigationDecision.prevent;
  //           }
  //           return NavigationDecision.navigate;
  //         },
  //       ),
  //     )
  //     ..loadRequest(Uri.parse(widget.memory.structuredMemory)); // Load the tweet URL
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0x1AF7F4F4),
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Align(
                  //   alignment: const AlignmentDirectional(0.0, 0.0),
                  //   child: Padding(
                  //     padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  //     child: Container(
                  //       width: MediaQuery.sizeOf(context).width * 0.5,
                  //       decoration: BoxDecoration(
                  //         color: const Color(0xFF515253),
                  //         borderRadius: BorderRadius.circular(24.0),
                  //       ),
                  //       alignment: const AlignmentDirectional(0.0, 0.0),
                  //       child: Align(
                  //         alignment: const AlignmentDirectional(0.0, 0.0),
                  //         child: Padding(
                  //           padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                  //           child: Row(
                  //             mainAxisSize: MainAxisSize.min,
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               Row(
                  //                 mainAxisSize: MainAxisSize.min,
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 children: [
                  //                   Align(
                  //                     alignment: const AlignmentDirectional(0.0, 0.0),
                  //                     child: Padding(
                  //                       padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 8.0, 4.0),
                  //                       child: Text(
                  //                         dateTimeFormat('M/d h:mm a', widget.memory.date),
                  //                         style: FlutterFlowTheme.of(context).bodyMedium,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Builder(
                  //                     builder: (context) => Padding(
                  //                       padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  //                       child: InkWell(
                  //                         splashColor: Colors.transparent,
                  //                         focusColor: Colors.transparent,
                  //                         hoverColor: Colors.transparent,
                  //                         highlightColor: Colors.transparent,
                  //                         onTap: () async {
                  //                           logFirebaseEvent('HOME_PAGE_PAGE_Icon_354g89my_ON_TAP');
                  //                           logFirebaseEvent('Icon_share');
                  //                           await Share.share(
                  //                             '${widget.memory.structuredMemory}  Created with https://www.aisama.co/',
                  //                             sharePositionOrigin: getWidgetBoundingBox(context),
                  //                           );
                  //                           logFirebaseEvent('Icon_haptic_feedback');
                  //                           HapticFeedback.lightImpact();
                  //                         },
                  //                         child: FaIcon(
                  //                           FontAwesomeIcons.share,
                  //                           color: FlutterFlowTheme.of(context).secondaryText,
                  //                           size: 20.0,
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Builder(
                  //                     builder: (context) => InkWell(
                  //                       splashColor: Colors.transparent,
                  //                       focusColor: Colors.transparent,
                  //                       hoverColor: Colors.transparent,
                  //                       highlightColor: Colors.transparent,
                  //                       onTap: () async {
                  //                         logFirebaseEvent('HOME_PAGE_PAGE_Icon_s7ft79xx_ON_TAP');
                  //                         logFirebaseEvent('Icon_alert_dialog');
                  //                         await showDialog(
                  //                           context: context,
                  //                           builder: (dialogContext) {
                  //                             return Dialog(
                  //                               elevation: 0,
                  //                               insetPadding: EdgeInsets.zero,
                  //                               backgroundColor: Colors.transparent,
                  //                               alignment: const AlignmentDirectional(0.0, 0.0)
                  //                                   .resolve(Directionality.of(context)),
                  //                               child: GestureDetector(
                  //                                 onTap: () => widget.model.unfocusNode.canRequestFocus
                  //                                     ? FocusScope.of(context).requestFocus(widget.model.unfocusNode)
                  //                                     : FocusScope.of(context).unfocus(),
                  //                                 child: EditMemoryWidget(
                  //                                   memory: widget.memory,
                  //                                 ),
                  //                               ),
                  //                             );
                  //                           },
                  //                         ).then((value) => setState(() {}));
                  //                       },
                  //                       child: Icon(
                  //                         Icons.edit,
                  //                         color: FlutterFlowTheme.of(context).secondaryText,
                  //                         size: 20.0,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Builder(
                  //                     builder: (context) => Padding(
                  //                       padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  //                       child: InkWell(
                  //                         splashColor: Colors.transparent,
                  //                         focusColor: Colors.transparent,
                  //                         hoverColor: Colors.transparent,
                  //                         highlightColor: Colors.transparent,
                  //                         onTap: () async {
                  //                           logFirebaseEvent('HOME_PAGE_PAGE_Icon_0n4bjs4f_ON_TAP');
                  //                           logFirebaseEvent('Icon_alert_dialog');
                  //                           await showDialog(
                  //                             context: context,
                  //                             builder: (dialogContext) {
                  //                               return Dialog(
                  //                                 elevation: 0,
                  //                                 insetPadding: EdgeInsets.zero,
                  //                                 backgroundColor: Colors.transparent,
                  //                                 alignment: const AlignmentDirectional(0.0, 0.0)
                  //                                     .resolve(Directionality.of(context)),
                  //                                 child: GestureDetector(
                  //                                   onTap: () => widget.model.unfocusNode.canRequestFocus
                  //                                       ? FocusScope.of(context).requestFocus(widget.model.unfocusNode)
                  //                                       : FocusScope.of(context).unfocus(),
                  //                                   child: ConfirmDeletionWidget(
                  //                                     memory: widget.memory,
                  //                                   ),
                  //                                 ),
                  //                               );
                  //                             },
                  //                           ).then((value) => setState(() {}));
                  //                         },
                  //                         child: Icon(
                  //                           Icons.delete,
                  //                           color: FlutterFlowTheme.of(context).secondaryText,
                  //                           size: 20.0,
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 300, // Specify the height
                    child: WebView(
                      initialUrl: Uri.parse(widget.memory.structuredMemory).toString(),
                      javascriptMode: JavascriptMode.unrestricted,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 0.0, 8.0),
                      child: SelectionArea(
                          child: Text(
                        Uri.parse(widget.memory.structuredMemory).toString(),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                              lineHeight: 1.5,
                            ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
