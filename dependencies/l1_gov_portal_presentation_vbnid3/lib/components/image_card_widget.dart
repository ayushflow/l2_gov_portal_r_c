import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:l1_gov_portal_logic_zofii4/flutter_flow/custom_functions.dart'
    as l1_gov_portal_logic_zofii4_functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'image_card_model.dart';
export 'image_card_model.dart';

class ImageCardWidget extends StatefulWidget {
  const ImageCardWidget({
    super.key,
    this.imagePath,
    String? title,
    String? description,
    required this.cardButtonAction,
    this.width,
    this.height,
    required this.keyPrefix,
  })  : this.title = title ?? 'Card Title',
        this.description = description ?? 'Card Description';

  final String? imagePath;
  final String title;
  final String description;
  final Future Function()? cardButtonAction;
  final double? width;
  final double? height;
  final String? keyPrefix;

  @override
  State<ImageCardWidget> createState() => _ImageCardWidgetState();
}

class _ImageCardWidgetState extends State<ImageCardWidget> {
  late ImageCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: widget!.width,
        height: widget!.height,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ClipRRect(
                  key: ValueKey(
                      l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
                          widget!.keyPrefix!, 'ImageCard', 'Image')),
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    key: ValueKey(
                        l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
                            widget!.keyPrefix!, 'ImageCard', 'Image')),
                    widget!.imagePath!,
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                key: ValueKey(
                    l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
                        widget!.keyPrefix!, 'ImageCard', 'Text')),
                widget!.title,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Inter Tight',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                key: ValueKey(
                    l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
                        widget!.keyPrefix!, 'ImageCard', 'Description')),
                widget!.description,
                maxLines: 3,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
              FFButtonWidget(
                key: ValueKey(
                    l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
                        widget!.keyPrefix!, 'ImageCard', 'Button')),
                onPressed: () async {
                  await widget.cardButtonAction?.call();
                },
                text: 'Button',
                options: FFButtonOptions(
                  width: 100.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ].divide(SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
