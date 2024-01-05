import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'registrar_usuario_widget.dart' show RegistrarUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrarUsuarioModel extends FlutterFlowModel<RegistrarUsuarioWidget> {
  ///  Local state fields for this page.

  String imagenTemp = 'false';

  ///  State fields for stateful widgets in this page.

  // State field(s) for txtnombre widget.
  FocusNode? txtnombreFocusNode;
  TextEditingController? txtnombreController;
  String? Function(BuildContext, String?)? txtnombreControllerValidator;
  // State field(s) for txtemail widget.
  FocusNode? txtemailFocusNode;
  TextEditingController? txtemailController;
  String? Function(BuildContext, String?)? txtemailControllerValidator;
  // State field(s) for txtpassword widget.
  FocusNode? txtpasswordFocusNode;
  TextEditingController? txtpasswordController;
  late bool txtpasswordVisibility;
  String? Function(BuildContext, String?)? txtpasswordControllerValidator;
  // State field(s) for txtrepassword widget.
  FocusNode? txtrepasswordFocusNode;
  TextEditingController? txtrepasswordController;
  late bool txtrepasswordVisibility;
  String? Function(BuildContext, String?)? txtrepasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtpasswordVisibility = false;
    txtrepasswordVisibility = false;
  }

  void dispose() {
    txtnombreFocusNode?.dispose();
    txtnombreController?.dispose();

    txtemailFocusNode?.dispose();
    txtemailController?.dispose();

    txtpasswordFocusNode?.dispose();
    txtpasswordController?.dispose();

    txtrepasswordFocusNode?.dispose();
    txtrepasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
