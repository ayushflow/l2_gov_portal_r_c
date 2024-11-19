import '/flutter_flow/flutter_flow_util.dart';
import 'form_vehicle_registration_widget.dart'
    show FormVehicleRegistrationWidget;
import 'package:l1_gov_portal_input_bb5shm/flutter_flow/flutter_flow_util.dart'
    as l1_gov_portal_input_bb5shm_util show wrapWithModel, createModel;
import 'package:l1_gov_portal_logic_zofii4/flutter_flow/custom_functions.dart'
    as l1_gov_portal_logic_zofii4_functions;
import 'package:l1_gov_portal_presentation_vbnid3/flutter_flow/flutter_flow_util.dart'
    as l1_gov_portal_presentation_vbnid3_util show wrapWithModel, createModel;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:l1_gov_portal_input_bb5shm/components/generic_text_field_widget.dart';
import 'package:l1_gov_portal_presentation_vbnid3/components/primary_button_widget.dart';
import 'package:provider/provider.dart';

class FormVehicleRegistrationModel
    extends FlutterFlowModel<FormVehicleRegistrationWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FirstName.
  late GenericTextFieldModel genericTextFieldModel0;
  // Model for LastName.
  late GenericTextFieldModel genericTextFieldModel0;
  // Model for PrimaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    genericTextFieldModel0 = l1_gov_portal_input_bb5shm_util.createModel(
        context, () => GenericTextFieldModel());
    genericTextFieldModel0 = l1_gov_portal_input_bb5shm_util.createModel(
        context, () => GenericTextFieldModel());
    primaryButtonModel = l1_gov_portal_presentation_vbnid3_util.createModel(
        context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    genericTextFieldModel0.dispose();
    genericTextFieldModel0.dispose();
    primaryButtonModel.dispose();
  }
}
