import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:l1_gov_portal_logic_zofii4/flutter_flow/custom_functions.dart'
    as l1_gov_portal_logic_zofii4_functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'generic_dropdown_model.dart';
export 'generic_dropdown_model.dart';

class GenericDropdownWidget extends StatefulWidget {
  const GenericDropdownWidget({
    super.key,
    required this.width,
    this.initialValue,
    required this.keyPrefix,
    this.hintText,
    this.labelText,
    this.options,
    double? height,
    bool? selectable,
  })  : this.height = height ?? 40.0,
        this.selectable = selectable ?? true;

  final double? width;
  final String? initialValue;
  final String? keyPrefix;
  final String? hintText;
  final String? labelText;
  final List<String>? options;
  final double height;
  final bool selectable;

  @override
  State<GenericDropdownWidget> createState() => _GenericDropdownWidgetState();
}

class _GenericDropdownWidgetState extends State<GenericDropdownWidget> {
  late GenericDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GenericDropdownModel());

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
                      widget!.keyPrefix!, 'GenericDropDown', 'LabelText')),
              widget!.labelText!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
          Container(
            decoration: BoxDecoration(),
            child: FlutterFlowDropDown<String>(
              key: ValueKey(
                  l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
                      widget!.keyPrefix!, 'GenericDropDown', 'DropDown')),
              controller: _model.dropDownValueController ??=
                  FormFieldController<String>(
                _model.dropDownValue ??= widget!.initialValue,
              ),
              options: widget!.options!,
              onChanged: (val) =>
                  safeSetState(() => _model.dropDownValue = val),
              width: widget!.width,
              height: widget!.height,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
              hintText: widget!.hintText,
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).accent1,
              borderWidth: 0.0,
              borderRadius: 8.0,
              margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              hidesUnderline: true,
              disabled: !widget!.selectable,
              isOverButton: false,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
