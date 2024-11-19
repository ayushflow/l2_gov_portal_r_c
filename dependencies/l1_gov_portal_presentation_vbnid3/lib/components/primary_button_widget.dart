import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:l1_gov_portal_logic_zofii4/flutter_flow/custom_functions.dart'
    as l1_gov_portal_logic_zofii4_functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'primary_button_model.dart';
export 'primary_button_model.dart';

class PrimaryButtonWidget extends StatefulWidget {
  const PrimaryButtonWidget({
    super.key,
    required this.buttonTapAction,
    double? width,
    double? height,
    String? buttonLabel,
    required this.keyPrefix,
  })  : this.width = width ?? 200.0,
        this.height = height ?? 40.0,
        this.buttonLabel = buttonLabel ?? 'Button';

  final Future Function()? buttonTapAction;
  final double width;
  final double height;
  final String buttonLabel;
  final String? keyPrefix;

  @override
  State<PrimaryButtonWidget> createState() => _PrimaryButtonWidgetState();
}

class _PrimaryButtonWidgetState extends State<PrimaryButtonWidget> {
  late PrimaryButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      key: ValueKey(l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
          widget!.keyPrefix!, 'PrimaryButton', 'Button')),
      onPressed: () async {
        await widget.buttonTapAction?.call();
      },
      text: widget!.buttonLabel,
      options: FFButtonOptions(
        width: widget!.width,
        height: widget!.height,
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Inter Tight',
              color: Colors.white,
              letterSpacing: 0.0,
            ),
        elevation: 0.0,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
