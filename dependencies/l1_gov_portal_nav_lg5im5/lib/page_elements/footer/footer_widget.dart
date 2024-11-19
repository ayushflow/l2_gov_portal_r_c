import '/components/icon_button_widget.dart';
import '/components/menu_button_secondary_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:l1_gov_portal_logic_zofii4/flutter_flow/custom_functions.dart'
    as l1_gov_portal_logic_zofii4_functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'footer_model.dart';
export 'footer_model.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({
    super.key,
    String? title,
    required this.keyPrefix,
  }) : this.title = title ?? 'Title';

  final String title;
  final String? keyPrefix;

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  late FooterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FooterModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                key: ValueKey(l1_gov_portal_logic_zofii4_functions
                    .generateL1KeyValue(widget!.keyPrefix!, 'Footer', 'Title')),
                widget!.title,
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily: 'Inter Tight',
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                    ),
              ),
              Wrap(
                spacing: 24.0,
                runSpacing: 12.0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  wrapWithModel(
                    model: _model.menuButtonSecondaryModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuButtonSecondaryWidget(
                      key: ValueKey(l1_gov_portal_logic_zofii4_functions
                          .generateL1KeyValue(
                              widget!.keyPrefix!, 'Footer', 'HomeButton')),
                      label: 'Home',
                      keyPrefix: widget!.keyPrefix!,
                      buttonOnTap: () async {},
                    ),
                  ),
                  wrapWithModel(
                    model: _model.menuButtonSecondaryModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuButtonSecondaryWidget(
                      key: ValueKey(l1_gov_portal_logic_zofii4_functions
                          .generateL1KeyValue(
                              widget!.keyPrefix!, 'Footer', 'AboutButton')),
                      label: 'About',
                      keyPrefix: widget!.keyPrefix!,
                      buttonOnTap: () async {},
                    ),
                  ),
                  wrapWithModel(
                    model: _model.menuButtonSecondaryModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuButtonSecondaryWidget(
                      key: ValueKey(l1_gov_portal_logic_zofii4_functions
                          .generateL1KeyValue(
                              widget!.keyPrefix!, 'Footer', 'ServicesButton')),
                      label: 'Services',
                      keyPrefix: widget!.keyPrefix!,
                      buttonOnTap: () async {},
                    ),
                  ),
                ],
              ),
              Wrap(
                spacing: 24.0,
                runSpacing: 12.0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  wrapWithModel(
                    model: _model.iconButtonModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: IconButtonWidget(
                      key: ValueKey(l1_gov_portal_logic_zofii4_functions
                          .generateL1KeyValue(
                              widget!.keyPrefix!, 'Footer', 'FacebookButton')),
                      keyPrefix: widget!.keyPrefix!,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.iconButtonModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: IconButtonWidget(
                      key: ValueKey(l1_gov_portal_logic_zofii4_functions
                          .generateL1KeyValue(
                              widget!.keyPrefix!, 'Footer', 'InstagramButton')),
                      icon: FaIcon(
                        key: ValueKey(l1_gov_portal_logic_zofii4_functions
                            .generateL1KeyValue(widget!.keyPrefix!, 'Footer',
                                'InstagramButton')),
                        FontAwesomeIcons.instagram,
                      ),
                      keyPrefix: widget!.keyPrefix!,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.iconButtonModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: IconButtonWidget(
                      key: ValueKey(l1_gov_portal_logic_zofii4_functions
                          .generateL1KeyValue(
                              widget!.keyPrefix!, 'Footer', 'LinkedinButton')),
                      icon: FaIcon(
                        key: ValueKey(l1_gov_portal_logic_zofii4_functions
                            .generateL1KeyValue(widget!.keyPrefix!, 'Footer',
                                'LinkedinButton')),
                        FontAwesomeIcons.linkedin,
                      ),
                      keyPrefix: widget!.keyPrefix!,
                    ),
                  ),
                ],
              ),
              RichText(
                textScaler: MediaQuery.of(context).textScaler,
                key: ValueKey(
                    l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
                        widget!.keyPrefix!, 'Footer', 'RightsReservedText')),
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '© 2024 All rights reserved. ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                    TextSpan(
                      text: widget!.title,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
