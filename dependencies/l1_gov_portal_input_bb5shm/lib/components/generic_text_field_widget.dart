import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:l1_gov_portal_logic_zofii4/flutter_flow/custom_functions.dart'
    as l1_gov_portal_logic_zofii4_functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'generic_text_field_model.dart';
export 'generic_text_field_model.dart';

class GenericTextFieldWidget extends StatefulWidget {
  const GenericTextFieldWidget({
    super.key,
    required this.width,
    int? maxLines,
    int? minLines,
    this.leadingIcon,
    this.trailingIcon,
    bool? obscureText,
    bool? editable,
    this.initialValue,
    this.validationRegex,
    this.errorMessage,
    required this.keyPrefix,
    this.hintText,
    this.labelText,
  })  : this.maxLines = maxLines ?? 1,
        this.minLines = minLines ?? 1,
        this.obscureText = obscureText ?? false,
        this.editable = editable ?? true;

  final double? width;
  final int maxLines;
  final int minLines;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool obscureText;
  final bool editable;
  final String? initialValue;
  final String? validationRegex;
  final String? errorMessage;
  final String? keyPrefix;
  final String? hintText;
  final String? labelText;

  @override
  State<GenericTextFieldWidget> createState() => _GenericTextFieldWidgetState();
}

class _GenericTextFieldWidgetState extends State<GenericTextFieldWidget> {
  late GenericTextFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GenericTextFieldModel());

    _model.textfieldTextController ??=
        TextEditingController(text: widget!.initialValue);
    _model.textfieldFocusNode ??= FocusNode();
    _model.textfieldFocusNode!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget!.width,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget!.labelText != null && widget!.labelText != '')
            Text(
              key: ValueKey(
                  l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
                      widget!.keyPrefix!, 'GenericTextfield', 'LabelText')),
              widget!.labelText!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
          Container(
            decoration: BoxDecoration(),
            child: TextFormField(
              key: ValueKey(
                  l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
                      widget!.keyPrefix!, 'GenericTextfield', 'Textfield')),
              controller: _model.textfieldTextController,
              focusNode: _model.textfieldFocusNode,
              onChanged: (_) => EasyDebounce.debounce(
                '_model.textfieldTextController',
                Duration(milliseconds: 16),
                () async {
                  var _shouldSetState = false;
                  if (_model.textfieldTextController.text != null &&
                      _model.textfieldTextController.text != '') {
                    // Validate Input
                    _model.isInputValid = await actions.checkInputValidity(
                      _model.textfieldTextController.text,
                      widget!.validationRegex,
                    );
                    _shouldSetState = true;
                    if (_model.isInputValid != null) {
                      if (_model.isInputValid!) {
                        // set isValid = true
                        _model.isValid = true;
                        safeSetState(() {});
                        if (_shouldSetState) safeSetState(() {});
                        return;
                      } else {
                        // set isValid = false
                        _model.isValid = false;
                        safeSetState(() {});
                        if (_shouldSetState) safeSetState(() {});
                        return;
                      }
                    } else {
                      if (_shouldSetState) safeSetState(() {});
                      return;
                    }
                  } else {
                    // set isValid = false
                    _model.isValid = false;
                    safeSetState(() {});
                    if (_shouldSetState) safeSetState(() {});
                    return;
                  }

                  if (_shouldSetState) safeSetState(() {});
                },
              ),
              autofocus: false,
              readOnly: !widget!.editable,
              obscureText: false,
              decoration: InputDecoration(
                isDense: true,
                hintText: widget!.hintText,
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).accent1,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: !widget!.editable
                    ? FlutterFlowTheme.of(context).alternate
                    : FlutterFlowTheme.of(context).secondaryBackground,
                prefixIcon: widget!.leadingIcon,
                suffixIcon: widget!.trailingIcon,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
              maxLines: valueOrDefault<int>(
                widget!.maxLines,
                1,
              ),
              minLines: valueOrDefault<int>(
                widget!.minLines,
                1,
              ),
              cursorColor: FlutterFlowTheme.of(context).primaryText,
              validator:
                  _model.textfieldTextControllerValidator.asValidator(context),
            ),
          ),
          if ((widget!.errorMessage != null && widget!.errorMessage != '') &&
              !_model.isValid!)
            Text(
              widget!.errorMessage!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    color: FlutterFlowTheme.of(context).error,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                  ),
            ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
