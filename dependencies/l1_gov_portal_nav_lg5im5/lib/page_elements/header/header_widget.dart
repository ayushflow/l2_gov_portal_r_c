import '/components/menu_button_primary_widget.dart';
import '/components/menu_button_secondary_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:l1_gov_portal_logic_zofii4/flutter_flow/custom_functions.dart'
    as l1_gov_portal_logic_zofii4_functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    super.key,
    String? leadingTitle,
    required this.keyPrefix,
  }) : this.leadingTitle = leadingTitle ?? 'Title';

  final String leadingTitle;
  final String? keyPrefix;

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());

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
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  key: ValueKey(
                      l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
                          widget!.keyPrefix!, 'Header', 'LeadingTitle')),
                  widget!.leadingTitle,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  wrapWithModel(
                    model: _model.menuButtonSecondaryModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuButtonSecondaryWidget(
                      key: ValueKey(l1_gov_portal_logic_zofii4_functions
                          .generateL1KeyValue(
                              widget!.keyPrefix!, 'Header', 'Home')),
                      label: 'HOME',
                      keyPrefix: widget!.keyPrefix!,
                      buttonOnTap: () async {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Button Tapped!',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      },
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  wrapWithModel(
                    model: _model.menuButtonSecondaryModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuButtonSecondaryWidget(
                      key: ValueKey(l1_gov_portal_logic_zofii4_functions
                          .generateL1KeyValue(
                              widget!.keyPrefix!, 'Header', 'About')),
                      label: 'ABOUT',
                      keyPrefix: widget!.keyPrefix!,
                      buttonOnTap: () async {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Button Tapped!',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      },
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  wrapWithModel(
                    model: _model.menuButtonSecondaryModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuButtonSecondaryWidget(
                      key: ValueKey(l1_gov_portal_logic_zofii4_functions
                          .generateL1KeyValue(
                              widget!.keyPrefix!, 'Header', 'Services')),
                      label: 'SERVICES',
                      keyPrefix: widget!.keyPrefix!,
                      buttonOnTap: () async {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Button Tapped!',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      },
                    ),
                  ),
              ].divide(SizedBox(width: 12.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.menuButtonPrimaryModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: MenuButtonPrimaryWidget(
                    key: ValueKey(
                        l1_gov_portal_logic_zofii4_functions.generateL1KeyValue(
                            widget!.keyPrefix!, 'Header', 'LoginButton')),
                    icon: Icon(
                      key: ValueKey(l1_gov_portal_logic_zofii4_functions
                          .generateL1KeyValue(
                              widget!.keyPrefix!, 'Header', 'LoginButton')),
                      Icons.login,
                    ),
                    label: 'Login',
                    keyPrefix: widget!.keyPrefix!,
                    buttonOnTap: () async {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Button Tapped!',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    },
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  wrapWithModel(
                    model: _model.menuButtonPrimaryModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuButtonPrimaryWidget(
                      key: ValueKey(l1_gov_portal_logic_zofii4_functions
                          .generateL1KeyValue(
                              widget!.keyPrefix!, 'Header', 'GetHelp')),
                      icon: Icon(
                        key: ValueKey(l1_gov_portal_logic_zofii4_functions
                            .generateL1KeyValue(
                                widget!.keyPrefix!, 'Header', 'GetHelp')),
                        Icons.help_outline,
                      ),
                      label: 'Get help',
                      keyPrefix: widget!.keyPrefix!,
                      buttonOnTap: () async {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Button Tapped!',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      },
                    ),
                  ),
              ].divide(SizedBox(width: 12.0)),
            ),
          ],
        ),
      ),
    );
  }
}
