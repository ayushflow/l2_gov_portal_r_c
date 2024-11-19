import '/flutter_flow/flutter_flow_util.dart';
import 'package:l1_gov_portal_input_bb5shm/flutter_flow/flutter_flow_util.dart'
    as l1_gov_portal_input_bb5shm_util show wrapWithModel, createModel;
import 'package:l1_gov_portal_logic_zofii4/flutter_flow/custom_functions.dart'
    as l1_gov_portal_logic_zofii4_functions;
import 'package:l1_gov_portal_presentation_vbnid3/flutter_flow/flutter_flow_util.dart'
    as l1_gov_portal_presentation_vbnid3_util show wrapWithModel, createModel;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:l1_gov_portal_input_bb5shm/components/generic_dropdown_widget.dart';
import 'package:l1_gov_portal_input_bb5shm/components/generic_text_field_widget.dart';
import 'package:l1_gov_portal_presentation_vbnid3/components/primary_button_widget.dart';
import 'package:provider/provider.dart';
import 'form_personal_details_model.dart';
export 'form_personal_details_model.dart';

class FormPersonalDetailsWidget extends StatefulWidget {
  const FormPersonalDetailsWidget({
    super.key,
    required this.keyPrefix,
  });

  final String? keyPrefix;

  @override
  State<FormPersonalDetailsWidget> createState() =>
      _FormPersonalDetailsWidgetState();
}

class _FormPersonalDetailsWidgetState extends State<FormPersonalDetailsWidget> {
  late FormPersonalDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormPersonalDetailsModel());

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
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              key: ValueKey(
                  l1_gov_portal_logic_zofii4_functions.generateL2KeyValuePrefix(
                      widget!.keyPrefix!, 'PersonalDetails', 'FormTitle')),
              'Personal Details',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Inter Tight',
                    letterSpacing: 0.0,
                  ),
            ),
            Wrap(
              spacing: 12.0,
              runSpacing: 12.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                l1_gov_portal_input_bb5shm_util.wrapWithModel(
                  model: _model.genericTextFieldModel0,
                  updateCallback: () => safeSetState(() {}),
                  child: GenericTextFieldWidget(
                    key: ValueKey(l1_gov_portal_logic_zofii4_functions
                        .generateL2KeyValuePrefix(widget!.keyPrefix!,
                            'PersonalDetails', 'FirstName')),
                    width: 300.0,
                    obscureText: false,
                    editable: false,
                    keyPrefix: widget!.keyPrefix!,
                    labelText: 'First Name',
                  ),
                ),
                l1_gov_portal_input_bb5shm_util.wrapWithModel(
                  model: _model.genericTextFieldModel0,
                  updateCallback: () => safeSetState(() {}),
                  child: GenericTextFieldWidget(
                    key: ValueKey(l1_gov_portal_logic_zofii4_functions
                        .generateL2KeyValuePrefix(
                            widget!.keyPrefix!, 'PersonalDetails', 'LastName')),
                    width: 300.0,
                    obscureText: false,
                    editable: false,
                    keyPrefix: widget!.keyPrefix!,
                    labelText: 'Last Name',
                  ),
                ),
                l1_gov_portal_input_bb5shm_util.wrapWithModel(
                  model: _model.genericDropdownModel,
                  updateCallback: () => safeSetState(() {}),
                  child: GenericDropdownWidget(
                    key: ValueKey(l1_gov_portal_logic_zofii4_functions
                        .generateL2KeyValuePrefix(
                            widget!.keyPrefix!, 'PersonalDetails', 'Gender')),
                    width: 300.0,
                    keyPrefix: widget!.keyPrefix!,
                    labelText: 'Gender',
                    height: 44.0,
                    selectable: false,
                    options: ["Male", "Female", "Others"],
                  ),
                ),
              ],
            ),
            l1_gov_portal_presentation_vbnid3_util.wrapWithModel(
              model: _model.primaryButtonModel,
              updateCallback: () => safeSetState(() {}),
              child: PrimaryButtonWidget(
                key: ValueKey(l1_gov_portal_logic_zofii4_functions
                    .generateL2KeyValuePrefix(
                        widget!.keyPrefix!, 'PersonalDetails', 'ApplyButton')),
                width: 300.0,
                height: 44.0,
                buttonLabel: 'Submit',
                keyPrefix: widget!.keyPrefix!,
                buttonTapAction: () async {},
              ),
            ),
          ].divide(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
