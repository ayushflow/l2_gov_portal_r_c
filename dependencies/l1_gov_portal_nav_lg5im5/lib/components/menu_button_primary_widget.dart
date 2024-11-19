import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:l1_gov_portal_logic_zofii4/flutter_flow/custom_functions.dart'
    as l1_gov_portal_logic_zofii4_functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_button_primary_model.dart';
export 'menu_button_primary_model.dart';

class MenuButtonPrimaryWidget extends StatefulWidget {
  const MenuButtonPrimaryWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.buttonOnTap,
    required this.keyPrefix,
  });

  final Widget? icon;
  final String? label;
  final Future Function()? buttonOnTap;
  final String? keyPrefix;

  @override
  State<MenuButtonPrimaryWidget> createState() =>
      _MenuButtonPrimaryWidgetState();
}

class _MenuButtonPrimaryWidgetState extends State<MenuButtonPrimaryWidget> {
  late MenuButtonPrimaryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuButtonPrimaryModel());

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
          widget!.keyPrefix!, 'MenuButton_Primary', 'Button')),
      onPressed: () async {
        await widget.buttonOnTap?.call();
      },
      text: widget!.label!,
      icon: widget!.icon,
      options: FFButtonOptions(
        height: 40.0,
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Inter Tight',
              color: Colors.white,
              letterSpacing: 0.0,
            ),
        elevation: 0.0,
        borderRadius: BorderRadius.circular(24.0),
      ),
    );
  }
}
