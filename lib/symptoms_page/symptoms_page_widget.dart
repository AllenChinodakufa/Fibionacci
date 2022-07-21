import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SymptomsPageWidget extends StatefulWidget {
  const SymptomsPageWidget({Key key}) : super(key: key);

  @override
  _SymptomsPageWidgetState createState() => _SymptomsPageWidgetState();
}

class _SymptomsPageWidgetState extends State<SymptomsPageWidget> {
  String conditionCheckValue;
  String healthCheckValue;
  TextEditingController temperatureFieldController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    temperatureFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 50,
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Text(
                          'Back',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Noto Sans',
                                fontSize: 16,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Text(
                            'How are you feeling, l hope we can get a chance to help you.',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 14, 24, 0),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x4D101213),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      controller: temperatureFieldController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Symptoms',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintText: 'Do you have any consistent symptoms',
                        hintStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).tertiaryColor,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Symptoms are required';
                        }

                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 14, 24, 0),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x4D101213),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: FlutterFlowDropDown(
                        options: [
                          'Headache',
                          'Frequent urination',
                          'Hunger',
                          'Unexplained fatigue',
                          'Sweating',
                          'Dizziness',
                          'Shortness of breath'
                        ],
                        onChanged: (val) =>
                            setState(() => healthCheckValue = val),
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Noto Sans',
                                  color: Colors.black,
                                ),
                        hintText: 'How do you currently feel...',
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20,
                        ),
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 14, 24, 0),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x4D101213),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: FlutterFlowDropDown(
                        options: [
                          'Pale Skin',
                          'Skin Tingling',
                          'Chest pain',
                          'Vision Problems',
                          'SweatBloood In Urine'
                        ],
                        onChanged: (val) =>
                            setState(() => conditionCheckValue = val),
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Noto Sans',
                                  color: Colors.black,
                                ),
                        hintText: 'Lets look at your skin condition...',
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20,
                        ),
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final symptomsCreateData = createSymptomsRecordData(
                        userReference: currentUserReference,
                        dateCreated: getCurrentTimestamp,
                        consistentSymptoms: temperatureFieldController.text,
                        healthCheck: conditionCheckValue,
                        conditionCheck: conditionCheckValue,
                      );
                      await SymptomsRecord.collection
                          .doc()
                          .set(symptomsCreateData);

                      final notificationsCreateData =
                          createNotificationsRecordData(
                        userReference: currentUserReference,
                        message:
                            'Symptoms added succesfully, please check them from the main menu.',
                        dateCreated: getCurrentTimestamp,
                        isRead: false,
                      );
                      await NotificationsRecord.collection
                          .doc()
                          .set(notificationsCreateData);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Symptoms was succesfully submitted.',
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Noto Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                    ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryText,
                        ),
                      );
                      Navigator.pop(context);
                    },
                    text: 'Submit',
                    options: FFButtonOptions(
                      width: 270,
                      height: 60,
                      color: FlutterFlowTheme.of(context).primaryText,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyText2
                          .override(
                            fontFamily: 'Noto Sans',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            fontSize: 15,
                          ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
