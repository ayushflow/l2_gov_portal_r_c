import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'generic_text_field_widget.dart' show GenericTextFieldWidget;
import 'package:l1_gov_portal_logic_zofii4/flutter_flow/custom_functions.dart'
    as l1_gov_portal_logic_zofii4_functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GenericTextFieldModel extends FlutterFlowModel<GenericTextFieldWidget> {
  ///  Local state fields for this component.

  bool? isValid;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Textfield widget.
  FocusNode? textfieldFocusNode;
  TextEditingController? textfieldTextController;
  String? Function(BuildContext, String?)? textfieldTextControllerValidator;
  // Stores action output result for [Custom Action - checkInputValidity] action in Textfield widget.
  bool? isInputValid;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textfieldFocusNode?.dispose();
    textfieldTextController?.dispose();
  }
}
