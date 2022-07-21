import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class SetReminderWidget extends StatefulWidget {
  const SetReminderWidget({Key key}) : super(key: key);

  @override
  _SetReminderWidgetState createState() => _SetReminderWidgetState();
}

class _SetReminderWidgetState extends State<SetReminderWidget> {
  DateTime datePicked1;
  DateTime datePicked2;
  DateTime datePicked3;
  DateTime datePicked4;
  DateTime datePicked5;
  ReminderRecord vuyelwa;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: StreamBuilder<List<ReminderRecord>>(
        stream: queryReminderRecord(
          queryBuilder: (reminderRecord) => reminderRecord
              .where('user_reference', isEqualTo: currentUserReference)
              .orderBy('date_created', descending: true),
          singleRecord: true,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
            );
          }
          List<ReminderRecord> containerReminderRecordList = snapshot.data;
          final containerReminderRecord = containerReminderRecordList.isNotEmpty
              ? containerReminderRecordList.first
              : null;
          return Material(
            color: Colors.transparent,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    alignment: AlignmentDirectional(0, -1),
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 82.5),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Set Reminder',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                      borderRadius: 25,
                                      borderWidth: 1,
                                      buttonSize: 50,
                                      fillColor: Colors.white,
                                      icon: Icon(
                                        Icons.close,
                                        color: Color(0xFF101010),
                                        size: 24,
                                      ),
                                      onPressed: () async {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Set reminder for when to take medication',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 7.5, 15, 7.5),
                                child: InkWell(
                                  onTap: () async {
                                    await DatePicker.showTimePicker(
                                      context,
                                      showTitleActions: true,
                                      onConfirm: (date) {
                                        setState(() => datePicked1 = date);
                                      },
                                      currentTime: containerReminderRecord
                                          .reminderForPills,
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xA7ECECEC),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7.5, 7.5, 7.5, 7.5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Morning Time',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans',
                                                          fontSize: 12,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    dateTimeFormat(
                                                        'jm', datePicked1),
                                                    'not set',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Noto Sans',
                                                        fontSize: 16,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.calendar_today,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 7.5, 15, 7.5),
                                child: InkWell(
                                  onTap: () async {
                                    await DatePicker.showTimePicker(
                                      context,
                                      showTitleActions: true,
                                      onConfirm: (date) {
                                        setState(() => datePicked2 = date);
                                      },
                                      currentTime: containerReminderRecord
                                          .reminderForPills,
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xA7ECECEC),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7.5, 7.5, 7.5, 7.5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Afternoon Time',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans',
                                                          fontSize: 12,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    dateTimeFormat(
                                                        'jm', datePicked2),
                                                    'not set',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Noto Sans',
                                                        fontSize: 16,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.calendar_today,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 7.5, 15, 7.5),
                                child: InkWell(
                                  onTap: () async {
                                    await DatePicker.showTimePicker(
                                      context,
                                      showTitleActions: true,
                                      onConfirm: (date) {
                                        setState(() => datePicked3 = date);
                                      },
                                      currentTime: containerReminderRecord
                                          .reminderForPills,
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xA7ECECEC),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7.5, 7.5, 7.5, 7.5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Evening Time',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans',
                                                          fontSize: 12,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    dateTimeFormat(
                                                        'jm', datePicked3),
                                                    'not set',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Noto Sans',
                                                        fontSize: 16,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.calendar_today,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 7.5, 15, 7.5),
                                child: InkWell(
                                  onTap: () async {
                                    await DatePicker.showDateTimePicker(
                                      context,
                                      showTitleActions: true,
                                      onConfirm: (date) {
                                        setState(() => datePicked4 = date);
                                      },
                                      currentTime: containerReminderRecord
                                          .reminderForPills,
                                      minTime: DateTime(0, 0, 0),
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xA7ECECEC),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7.5, 7.5, 7.5, 7.5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Reminder for when to get your pills',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans',
                                                          fontSize: 12,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    '${dateTimeFormat('MMMMEEEEd', datePicked4)} ${dateTimeFormat('jm', datePicked4)}',
                                                    'not set',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Noto Sans',
                                                        fontSize: 16,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.calendar_today,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 7.5, 15, 7.5),
                                child: InkWell(
                                  onTap: () async {
                                    await DatePicker.showDateTimePicker(
                                      context,
                                      showTitleActions: true,
                                      onConfirm: (date) {
                                        setState(() => datePicked5 = date);
                                      },
                                      currentTime: containerReminderRecord
                                          .reminderForPills,
                                      minTime: DateTime(0, 0, 0),
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xA7ECECEC),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7.5, 7.5, 7.5, 7.5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Set reminder for checkup',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans',
                                                          fontSize: 12,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    '${dateTimeFormat('MMMMEEEEd', datePicked5)} ${dateTimeFormat('jm', datePicked5)}',
                                                    'not set',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Noto Sans',
                                                        fontSize: 16,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.calendar_today,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 15,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 75,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Color(0x1B000000),
                                  offset: Offset(2, 0),
                                  spreadRadius: 5,
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            alignment: AlignmentDirectional(0, 0),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 8, 15, 8),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (formKey.currentState == null ||
                                        !formKey.currentState.validate()) {
                                      return;
                                    }

                                    final reminderCreateData =
                                        createReminderRecordData(
                                      userReference: currentUserReference,
                                      morningTime:
                                          dateTimeFormat('jm', datePicked1),
                                      afternoonTime:
                                          dateTimeFormat('jm', datePicked2),
                                      eveningTime:
                                          dateTimeFormat('jm', datePicked3),
                                      dateCreated: getCurrentTimestamp,
                                      reminderForPills: datePicked4,
                                      reminderForCheckup: datePicked5,
                                    );
                                    var reminderRecordReference =
                                        ReminderRecord.collection.doc();
                                    await reminderRecordReference
                                        .set(reminderCreateData);
                                    vuyelwa =
                                        ReminderRecord.getDocumentFromData(
                                            reminderCreateData,
                                            reminderRecordReference);

                                    final notificationsCreateData =
                                        createNotificationsRecordData(
                                      userReference: currentUserReference,
                                      message:
                                          'Your morning time ${'Yor morning time ${vuyelwa.morningTime} , and your afternoon time ${vuyelwa.afternoonTime}, your evening reminder for pills is ${vuyelwa.eveningTime}'}',
                                      dateCreated: getCurrentTimestamp,
                                      isRead: false,
                                    );
                                    await NotificationsRecord.collection
                                        .doc()
                                        .set(notificationsCreateData);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Updated succesfully',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Noto Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor,
                                              ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                      ),
                                    );
                                    Navigator.pop(context);

                                    setState(() {});
                                  },
                                  text: 'Save & Submit',
                                  icon: Icon(
                                    Icons.send_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    size: 24,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 50,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Noto Sans',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
