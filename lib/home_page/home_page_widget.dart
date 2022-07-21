import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../blood_pressure_page/blood_pressure_page_widget.dart';
import '../blood_sugar_page/blood_sugar_page_widget.dart';
import '../components/container_stats_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_charts.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../pressure_analytics_page/pressure_analytics_page_widget.dart';
import '../settings_page/settings_page_widget.dart';
import '../sugar_analytics_page/sugar_analytics_page_widget.dart';
import '../symptoms_page/symptoms_page_widget.dart';
import '../temperature_analyitics_page/temperature_analyitics_page_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerStatsOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      initialState: AnimationState(
        offset: Offset(-100, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerStatsOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 200,
      hideBeforeAnimating: false,
      initialState: AnimationState(
        offset: Offset(-100, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerStatsOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 100,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(-100, -100),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFEBE7E7),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                alignment: AlignmentDirectional(0, -1),
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AuthUserStreamWidget(
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          currentUserPhoto,
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.scale,
                                            alignment: Alignment.bottomCenter,
                                            duration:
                                                Duration(milliseconds: 200),
                                            reverseDuration:
                                                Duration(milliseconds: 200),
                                            child: SettingsPageWidget(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          valueOrDefault<String>(
                                            currentUserPhoto,
                                            'https://firebasestorage.googleapis.com/v0/b/afrolink-62f10.appspot.com/o/default%2Fuser_default_profile.png?alt=media&token=d6a26eb8-3f07-42e4-9f7b-8c0303465b79',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 0, 8, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hello, ',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Noto Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        AuthUserStreamWidget(
                                          child: Text(
                                            valueOrDefault<String>(
                                              currentUserDisplayName,
                                              'Your Username',
                                            ).maybeHandleOverflow(
                                              maxChars: 14,
                                              replacement: '…',
                                            ),
                                            textAlign: TextAlign.start,
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Noto Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Statistics',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Noto Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 12),
                                  child: Text(
                                    ' (Blood Pressure)',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Noto Sans',
                                          fontSize: 12,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 200),
                                    reverseDuration:
                                        Duration(milliseconds: 200),
                                    child: SymptomsPageWidget(),
                                  ),
                                );
                              },
                              text: 'Add Symptom',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Noto Sans',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 200),
                                    reverseDuration:
                                        Duration(milliseconds: 200),
                                    child: BloodPressurePageWidget(),
                                  ),
                                );
                              },
                              text: 'Add Pressure',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Noto Sans',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 200),
                                    reverseDuration:
                                        Duration(milliseconds: 200),
                                    child: BloodSugarPageWidget(),
                                  ),
                                );
                              },
                              text: 'Add Sugar Levels',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Noto Sans',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 240,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: StreamBuilder<
                                          List<BloodPressureRecord>>(
                                        stream: queryBloodPressureRecord(
                                          queryBuilder: (bloodPressureRecord) =>
                                              bloodPressureRecord
                                                  .where('userReference',
                                                      isEqualTo:
                                                          currentUserReference)
                                                  .orderBy('dateCreated'),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 25,
                                                height: 25,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                              ),
                                            );
                                          }
                                          List<BloodPressureRecord>
                                              chartBloodPressureRecordList =
                                              snapshot.data;
                                          return Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1,
                                            child: FlutterFlowLineChart(
                                              data: [
                                                FFLineChartData(
                                                  xData:
                                                      chartBloodPressureRecordList
                                                          .map((d) =>
                                                              d.dateCreated)
                                                          .toList(),
                                                  yData:
                                                      chartBloodPressureRecordList
                                                          .map((d) => d
                                                              .systolicPressure)
                                                          .toList(),
                                                  settings: LineChartBarData(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    barWidth: 2,
                                                    isCurved: true,
                                                    preventCurveOverShooting:
                                                        true,
                                                    dotData:
                                                        FlDotData(show: false),
                                                    belowBarData: BarAreaData(
                                                      show: true,
                                                      color: Color(0x00000000),
                                                    ),
                                                  ),
                                                )
                                              ],
                                              enableTooltip: true,
                                              tooltipBackgroundColor:
                                                  Color(0x00000000),
                                              backgroundColor:
                                                  Color(0x3CFFFFFF),
                                              axisBounds: AxisBounds(),
                                              xAxisLabelInfo: AxisLabelInfo(),
                                              yAxisLabelInfo: AxisLabelInfo(),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Report',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Noto Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: StreamBuilder<List<BodyTemperatureRecord>>(
                              stream: queryBodyTemperatureRecord(
                                queryBuilder: (bodyTemperatureRecord) =>
                                    bodyTemperatureRecord
                                        .where('userReference',
                                            isEqualTo: currentUserReference)
                                        .orderBy('dateCreated',
                                            descending: true),
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
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                    ),
                                  );
                                }
                                List<BodyTemperatureRecord>
                                    containerStatsBodyTemperatureRecordList =
                                    snapshot.data;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data.isEmpty) {
                                  return Container();
                                }
                                final containerStatsBodyTemperatureRecord =
                                    containerStatsBodyTemperatureRecordList
                                            .isNotEmpty
                                        ? containerStatsBodyTemperatureRecordList
                                            .first
                                        : null;
                                return InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.bottomToTop,
                                        duration: Duration(milliseconds: 200),
                                        reverseDuration:
                                            Duration(milliseconds: 200),
                                        child: TemperatureAnalyiticsPageWidget(
                                          temperatureId:
                                              containerStatsBodyTemperatureRecord
                                                  .reference,
                                        ),
                                      ),
                                    );
                                  },
                                  child: ContainerStatsWidget(
                                    color: Color(0xFF8A0062),
                                    title: 'Body Temperature',
                                    value: containerStatsBodyTemperatureRecord
                                        .temperature,
                                    icon: Icon(
                                      Icons.thermostat_outlined,
                                      color: Color(0xFF8A0062),
                                      size: 36,
                                    ),
                                    unit: 'Degrees',
                                  ),
                                ).animated([
                                  animationsMap[
                                      'containerStatsOnPageLoadAnimation1']
                                ]);
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: StreamBuilder<List<BloodPressureRecord>>(
                              stream: queryBloodPressureRecord(
                                queryBuilder: (bloodPressureRecord) =>
                                    bloodPressureRecord
                                        .where('userReference',
                                            isEqualTo: currentUserReference)
                                        .orderBy('dateCreated',
                                            descending: true),
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
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                    ),
                                  );
                                }
                                List<BloodPressureRecord>
                                    containerStatsBloodPressureRecordList =
                                    snapshot.data;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data.isEmpty) {
                                  return Container();
                                }
                                final containerStatsBloodPressureRecord =
                                    containerStatsBloodPressureRecordList
                                            .isNotEmpty
                                        ? containerStatsBloodPressureRecordList
                                            .first
                                        : null;
                                return InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 200),
                                        reverseDuration:
                                            Duration(milliseconds: 200),
                                        child: PressureAnalyticsPageWidget(
                                          pressureId:
                                              containerStatsBloodPressureRecord
                                                  .reference,
                                        ),
                                      ),
                                    );
                                  },
                                  child: ContainerStatsWidget(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    title: 'Blood Pressure',
                                    value: functions.getPressure(
                                        containerStatsBloodPressureRecord
                                            .diastolicPressure,
                                        containerStatsBloodPressureRecord
                                            .systolicPressure),
                                    icon: Icon(
                                      Icons.sick_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      size: 36,
                                    ),
                                    unit: 'mmHg',
                                  ),
                                ).animated([
                                  animationsMap[
                                      'containerStatsOnPageLoadAnimation2']
                                ]);
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: StreamBuilder<List<BloodSugarRecord>>(
                              stream: queryBloodSugarRecord(
                                queryBuilder: (bloodSugarRecord) =>
                                    bloodSugarRecord
                                        .where('userReference',
                                            isEqualTo: currentUserReference)
                                        .orderBy('dateCreated',
                                            descending: true),
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
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                    ),
                                  );
                                }
                                List<BloodSugarRecord>
                                    containerStatsBloodSugarRecordList =
                                    snapshot.data;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data.isEmpty) {
                                  return Container();
                                }
                                final containerStatsBloodSugarRecord =
                                    containerStatsBloodSugarRecordList
                                            .isNotEmpty
                                        ? containerStatsBloodSugarRecordList
                                            .first
                                        : null;
                                return InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.scale,
                                        alignment: Alignment.bottomCenter,
                                        duration: Duration(milliseconds: 200),
                                        reverseDuration:
                                            Duration(milliseconds: 200),
                                        child: SugarAnalyticsPageWidget(
                                          bloodSugarId:
                                              containerStatsBloodSugarRecord
                                                  .reference,
                                        ),
                                      ),
                                    );
                                  },
                                  child: ContainerStatsWidget(
                                    color: FlutterFlowTheme.of(context)
                                        .customColor1,
                                    title: 'Blood Sugar',
                                    value: containerStatsBloodSugarRecord.mgDL,
                                    icon: Icon(
                                      Icons.point_of_sale_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      size: 36,
                                    ),
                                    unit: 'mg/dl',
                                  ),
                                ).animated([
                                  animationsMap[
                                      'containerStatsOnPageLoadAnimation3']
                                ]);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
