import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'contributions_widget.dart' show ContributionsWidget;
import 'package:flutter/material.dart';

class ContributionsModel extends FlutterFlowModel<ContributionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
