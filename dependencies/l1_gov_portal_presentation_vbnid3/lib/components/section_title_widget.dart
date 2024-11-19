import '/flutter_flow/flutter_flow_util.dart';
import 'package:l1_gov_portal_logic_zofii4/flutter_flow/custom_functions.dart'
    as l1_gov_portal_logic_zofii4_functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'section_title_model.dart';
export 'section_title_model.dart';

class SectionTitleWidget extends StatefulWidget {
  const SectionTitleWidget({
    super.key,
    String? text,
    required this.keyPrefix,
  }) : this.text = text ?? 'Section Title';

  final String text;
  final String? keyPrefix;

  @override
  State<SectionTitleWidget> createState() => _SectionTitleWidgetState();
}

class _SectionTitleWidgetState extends State<SectionTitleWidget> {
  late SectionTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SectionTitleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      key: ValueKey(l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
          widget!.keyPrefix!, 'SectionTitle', 'Text')),
      widget!.text,
      style: FlutterFlowTheme.of(context).headlineLarge.override(
            fontFamily: 'Inter Tight',
            letterSpacing: 0.0,
            fontStyle: FontStyle.italic,
          ),
    );
  }
}
