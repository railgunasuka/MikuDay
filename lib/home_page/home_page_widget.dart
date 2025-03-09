import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

import '/flutter_flow/src/utils/flutter_flow_animations.dart';
import '/flutter_flow/src/utils/flutter_flow_util.dart';
import '/flutter_flow/src/widgets/flutter_flow_widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:flutter/scheduler.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:provider/provider.dart';

import 'package:window_manager/window_manager.dart';

import '/app_state.dart';

import 'dart:async';



class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  DateTime? time;

  List<int> toplist = [];
  void addToToplist(int item) => toplist.add(item);
  void removeFromToplist(int item) => toplist.remove(item);
  void removeAtIndexFromToplist(int index) => toplist.removeAt(index);
  void insertAtIndexInToplist(int index, int item) =>
      toplist.insert(index, item);
  void updateToplistAtIndex(int index, Function(int) updateFn) =>
      toplist[index] = updateFn(toplist[index]);

  List<int> a160 = [];
  void addToA160(int item) => a160.add(item);
  void removeFromA160(int item) => a160.remove(item);
  void removeAtIndexFromA160(int index) => a160.removeAt(index);
  void insertAtIndexInA160(int index, int item) => a160.insert(index, item);
  void updateA160AtIndex(int index, Function(int) updateFn) =>
      a160[index] = updateFn(a160[index]);

  List<int> b160 = [];
  void addToB160(int item) => b160.add(item);
  void removeFromB160(int item) => b160.remove(item);
  void removeAtIndexFromB160(int index) => b160.removeAt(index);
  void insertAtIndexInB160(int index, int item) => b160.insert(index, item);
  void updateB160AtIndex(int index, Function(int) updateFn) =>
      b160[index] = updateFn(b160[index]);

  List<int> endlist = [];
  void addToEndlist(int item) => endlist.add(item);
  void removeFromEndlist(int item) => endlist.remove(item);
  void removeAtIndexFromEndlist(int index) => endlist.removeAt(index);
  void insertAtIndexInEndlist(int index, int item) =>
      endlist.insert(index, item);
  void updateEndlistAtIndex(int index, Function(int) updateFn) =>
      endlist[index] = updateFn(endlist[index]);

  List<int> et = [];
  void addToEt(int item) => et.add(item);
  void removeFromEt(int item) => et.remove(item);
  void removeAtIndexFromEt(int index) => et.removeAt(index);
  void insertAtIndexInEt(int index, int item) => et.insert(index, item);
  void updateEtAtIndex(int index, Function(int) updateFn) =>
      et[index] = updateFn(et[index]);

  List<double> et100 = [];
  void addToEt100(double item) => et100.add(item);
  void removeFromEt100(double item) => et100.remove(item);
  void removeAtIndexFromEt100(int index) => et100.removeAt(index);
  void insertAtIndexInEt100(int index, double item) =>
      et100.insert(index, item);
  void updateEt100AtIndex(int index, Function(double) updateFn) =>
      et100[index] = updateFn(et100[index]);

  List<int> space = [];
  void addToSpace(int item) => space.add(item);
  void removeFromSpace(int item) => space.remove(item);
  void removeAtIndexFromSpace(int index) => space.removeAt(index);
  void insertAtIndexInSpace(int index, int item) => space.insert(index, item);
  void updateSpaceAtIndex(int index, Function(int) updateFn) =>
      space[index] = updateFn(space[index]);

  List<double> space100 = [];
  void addToSpace100(double item) => space100.add(item);
  void removeFromSpace100(double item) => space100.remove(item);
  void removeAtIndexFromSpace100(int index) => space100.removeAt(index);
  void insertAtIndexInSpace100(int index, double item) =>
      space100.insert(index, item);
  void updateSpace100AtIndex(int index, Function(double) updateFn) =>
      space100[index] = updateFn(space100[index]);

  int timechange = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for Carousetimescale widget.
  CarouselSliderController? carousetimescaleController;
  int carousetimescaleCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}


class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;


  Timer? _timer;
  int _counter = 0;




  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();


    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.a160 = (List<int> a1) {
        return a1.map((item) => item * 60).toList();
      }(FFAppState().timelistA1.toList())
          .toList()
          .cast<int>();
      safeSetState(() {});
      _model.b160 = (List<int> b1) {
        return b1.map((item) => item * 60).toList();
      }(FFAppState().timelistB1.toList())
          .toList()
          .cast<int>();
      safeSetState(() {});
      _model.toplist = (List<int> a160, List<int> a2) {
        return List.generate(a160.length, (index) => a160[index] + a2[index]);
      }(_model.a160.toList(), FFAppState().timelistA2.toList())
          .toList()
          .cast<int>();
      safeSetState(() {});
      _model.endlist = (List<int> b160, List<int> b2) {
        return List.generate(b160.length, (index) => b160[index] + b2[index]);
      }(_model.b160.toList(), FFAppState().timelistB2.toList())
          .toList()
          .cast<int>();
      safeSetState(() {});
      _model.et = (List<int> toplist, List<int> endlist) {
        return List.generate(
            toplist.length, (index) => endlist[index] - toplist[index]);
      }(_model.toplist.toList(), _model.endlist.toList())
          .toList()
          .cast<int>();
      safeSetState(() {});
      _model.et100 = (List<int> et) {
        return et.map((item) => item / 1440).toList();
      }(_model.et.toList())
          .toList()
          .cast<double>();
      safeSetState(() {});
      _model.space = (List<int> toplist, List<int> endlist) {
        return List.generate(toplist.length,
            (i) => i == 0 ? toplist[i] : toplist[i] - endlist[i - 1]);
      }(_model.toplist.toList(), _model.endlist.toList())
          .toList()
          .cast<int>();
      safeSetState(() {});
      _model.space100 = (List<int> space) {
        return space.map((item) => item / 1440).toList();
      }(_model.space.toList())
          .toList()
          .cast<double>();
      safeSetState(() {});
      _model.timechange = (DateTime.fromMillisecondsSinceEpoch(
                      getCurrentTimestamp.secondsSinceEpoch * 1000)
                  .hour *
              60) +
          DateTime.fromMillisecondsSinceEpoch(
                  getCurrentTimestamp.secondsSinceEpoch * 1000)
              .minute -
          720;
      safeSetState(() {});
      Future<void> _executeAction() async {
        setState(() => _counter++);
        // print('执行操作，当前计数: $_counter');


        _model.time = getCurrentTimestamp;
        safeSetState(() {});
        if (_model.toplist.toList().contains(((DateTime.fromMillisecondsSinceEpoch(
                            getCurrentTimestamp.secondsSinceEpoch * 1000)
                        .hour *
                    60) +
                DateTime.fromMillisecondsSinceEpoch(getCurrentTimestamp.secondsSinceEpoch * 1000)
                    .minute))) {
          if (animationsMap['containerOnActionTriggerAnimation1'] != null) {
            await animationsMap['containerOnActionTriggerAnimation1']!
                .controller
                .forward(from: 0.0);
          }
          await Future.delayed(const Duration(milliseconds: 2500));
          if (animationsMap['containerOnActionTriggerAnimation1'] != null) {
            await animationsMap['containerOnActionTriggerAnimation1']!
                .controller
                .reverse();
          }
        } else if (_model.endlist.toList().contains(
                ((DateTime.fromMillisecondsSinceEpoch(
                                getCurrentTimestamp.secondsSinceEpoch * 1000)
                            .hour *
                        60) +
                    DateTime.fromMillisecondsSinceEpoch(
                            getCurrentTimestamp.secondsSinceEpoch * 1000)
                        .minute))) {
          if (animationsMap['containerOnActionTriggerAnimation2'] != null) {
            await animationsMap['containerOnActionTriggerAnimation2']!
                .controller
                .forward(from: 0.0);
          }
          await Future.delayed(const Duration(milliseconds: 2500));
          if (animationsMap['containerOnActionTriggerAnimation2'] != null) {
            await animationsMap['containerOnActionTriggerAnimation2']!
                .controller
                .reverse();
          }
        }
      }
      _executeAction();
      // 定时器复用同一函数
      _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
        if (mounted) _executeAction();
      });
    });

    animationsMap.addAll({
      'containerOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }



  @override
  void dispose() {
    _model.dispose();

    _timer?.cancel(); // 销毁定时器

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },


      onSecondaryTap: () => Navigator.pushNamed(context, '/cc'),



      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [




            Positioned.fill(
              child: Image.asset(
                'assets/TEST.png',
                fit: BoxFit.cover,
              ),
            ),





            Align(
              alignment: AlignmentDirectional(1, 0),
              child: Container(
                width: 120,
                height: MediaQuery.sizeOf(context).height,
                child: CarouselSlider(
                  items: [
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(1, 0),
                          child: Transform.translate(
                            offset: Offset(
                                0,
                                -_model.timechange /
                                        1440 *
                                        MediaQuery.sizeOf(context).height +
                                    MediaQuery.sizeOf(context).height),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              child: Builder(
                                builder: (context) {
                                  final timelist =
                                      FFAppState().timelistA1.toList();

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(timelist.length,
                                        (timelistIndex) {
                                      final timelistItem =
                                          timelist[timelistIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5,
                                            valueOrDefault<double>(
                                              ((double sheight,
                                                          List<double> space100) {
                                                return space100
                                                    .map((item) =>
                                                        item * sheight)
                                                    .toList();
                                              }(
                                                      MediaQuery.sizeOf(context)
                                                          .height,
                                                      _model.space100.toList()))
                                                  .elementAtOrNull(
                                                      timelistIndex),
                                              0.0,
                                            ),
                                            5,
                                            0),
                                        child: Container(
                                          width: 100,
                                          height: ((double sheight,
                                                      List<double> et100) {
                                            return et100
                                                .map((item) => item * sheight)
                                                .toList();
                                          }(MediaQuery.sizeOf(context).height,
                                                  _model.et100.toList()))
                                              .elementAtOrNull(timelistIndex),
                                          decoration: BoxDecoration(
                                            color: ((List<Color> var1) {
                                              return var1
                                                  .map((color) =>
                                                      color.withOpacity(
                                                          color.opacity * 0.5))
                                                  .toList();
                                            }(FFAppState().color.toList()))
                                                .elementAtOrNull(timelistIndex),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: valueOrDefault<Color>(
                                                FFAppState()
                                                    .color
                                                    .elementAtOrNull(
                                                        timelistIndex),
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 0, 2, 0),
                                              child: AutoSizeText(
                                                valueOrDefault<String>(
                                                  FFAppState()
                                                      .line
                                                      .elementAtOrNull(
                                                          timelistIndex),
                                                  '空',
                                                ),
                                                textAlign: TextAlign.center,
                                                minFontSize: 5,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1, 0),
                          child: Transform.translate(
                            offset: Offset(
                                0,
                                -_model.timechange /
                                        1440 *
                                        MediaQuery.sizeOf(context).height -
                                    MediaQuery.sizeOf(context).height),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              child: Builder(
                                builder: (context) {
                                  final timelist =
                                      FFAppState().timelistA1.toList();

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(timelist.length,
                                        (timelistIndex) {
                                      final timelistItem =
                                          timelist[timelistIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5,
                                            valueOrDefault<double>(
                                              ((double sheight,
                                                          List<double> space100) {
                                                return space100
                                                    .map((item) =>
                                                        item * sheight)
                                                    .toList();
                                              }(
                                                      MediaQuery.sizeOf(context)
                                                          .height,
                                                      _model.space100.toList()))
                                                  .elementAtOrNull(
                                                      timelistIndex),
                                              0.0,
                                            ),
                                            5,
                                            0),
                                        child: Container(
                                          width: 100,
                                          height: ((double sheight,
                                                      List<double> et100) {
                                            return et100
                                                .map((item) => item * sheight)
                                                .toList();
                                          }(MediaQuery.sizeOf(context).height,
                                                  _model.et100.toList()))
                                              .elementAtOrNull(timelistIndex),
                                          decoration: BoxDecoration(
                                            color: ((List<Color> var1) {
                                              return var1
                                                  .map((color) =>
                                                      color.withOpacity(
                                                          color.opacity * 0.5))
                                                  .toList();
                                            }(FFAppState().color.toList()))
                                                .elementAtOrNull(timelistIndex),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: valueOrDefault<Color>(
                                                FFAppState()
                                                    .color
                                                    .elementAtOrNull(
                                                        timelistIndex),
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 0, 2, 0),
                                              child: AutoSizeText(
                                                valueOrDefault<String>(
                                                  FFAppState()
                                                      .line
                                                      .elementAtOrNull(
                                                          timelistIndex),
                                                  '空',
                                                ),
                                                textAlign: TextAlign.center,
                                                minFontSize: 5,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1, 0),
                          child: Transform.translate(
                            offset: Offset(
                                0,
                                -_model.timechange /
                                    1440 *
                                    MediaQuery.sizeOf(context).height),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              child: Builder(
                                builder: (context) {
                                  final timelist =
                                      FFAppState().timelistA1.toList();

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(timelist.length,
                                        (timelistIndex) {
                                      final timelistItem =
                                          timelist[timelistIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5,
                                            valueOrDefault<double>(
                                              ((double sheight,
                                                          List<double> space100) {
                                                return space100
                                                    .map((item) =>
                                                        item * sheight)
                                                    .toList();
                                              }(
                                                      MediaQuery.sizeOf(context)
                                                          .height,
                                                      _model.space100.toList()))
                                                  .elementAtOrNull(
                                                      timelistIndex),
                                              0.0,
                                            ),
                                            5,
                                            0),
                                        child: Container(
                                          width: 100,
                                          height: ((double sheight,
                                                      List<double> et100) {
                                            return et100
                                                .map((item) => item * sheight)
                                                .toList();
                                          }(MediaQuery.sizeOf(context).height,
                                                  _model.et100.toList()))
                                              .elementAtOrNull(timelistIndex),
                                          decoration: BoxDecoration(
                                            color: ((List<Color> var1) {
                                              return var1
                                                  .map((color) =>
                                                      color.withOpacity(
                                                          color.opacity * 0.5))
                                                  .toList();
                                            }(FFAppState().color.toList()))
                                                .elementAtOrNull(timelistIndex),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: valueOrDefault<Color>(
                                                FFAppState()
                                                    .color
                                                    .elementAtOrNull(
                                                        timelistIndex),
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 0, 2, 0),
                                              child: AutoSizeText(
                                                valueOrDefault<String>(
                                                  FFAppState()
                                                      .line
                                                      .elementAtOrNull(
                                                          timelistIndex),
                                                  '空',
                                                ),
                                                textAlign: TextAlign.center,
                                                minFontSize: 5,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  carouselController: _model.carouselController ??=
                      CarouselSliderController(),
                  options: CarouselOptions(
                    initialPage: 0,
                    viewportFraction: 1,
                    disableCenter: true,
                    enlargeCenterPage: false,
                    enlargeFactor: 0,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.vertical,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 86400000),
                    autoPlayInterval: Duration(milliseconds: (86400000 + 0)),
                    autoPlayCurve: Curves.linear,
                    pauseAutoPlayInFiniteScroll: true,
                    onPageChanged: (index, _) =>
                        _model.carouselCurrentIndex = index,
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 1,
              child: Align(
                alignment: AlignmentDirectional(1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 120, 0),
                  child: Container(
                    width: 120,
                    height: MediaQuery.sizeOf(context).height,
                    child: CarouselSlider(
                      items: [
                        Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(1, 0),
                              child: Transform.translate(
                                offset: Offset(
                                    0,
                                    -_model.timechange /
                                            1440 *
                                            MediaQuery.sizeOf(context).height +
                                        MediaQuery.sizeOf(context).height),
                                child: Builder(
                                  builder: (context) {
                                    final timescalnum =
                                        FFAppState().timescale.toList();

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children:
                                          List.generate(timescalnum.length,
                                              (timescalnumIndex) {
                                        final timescalnumItem =
                                            timescalnum[timescalnumIndex];
                                        return Text(
                                          valueOrDefault<String>(
                                            FFAppState()
                                                .timescale
                                                .elementAtOrNull(
                                                    timescalnumIndex),
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 7.5,
                                                letterSpacing: 0.0,
                                              ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1, 0),
                              child: Transform.translate(
                                offset: Offset(
                                    0,
                                    -_model.timechange /
                                            1440 *
                                            MediaQuery.sizeOf(context).height -
                                        MediaQuery.sizeOf(context).height),
                                child: Builder(
                                  builder: (context) {
                                    final timescalnum =
                                        FFAppState().timescale.toList();

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children:
                                          List.generate(timescalnum.length,
                                              (timescalnumIndex) {
                                        final timescalnumItem =
                                            timescalnum[timescalnumIndex];
                                        return Text(
                                          valueOrDefault<String>(
                                            FFAppState()
                                                .timescale
                                                .elementAtOrNull(
                                                    timescalnumIndex),
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 7.5,
                                                letterSpacing: 0.0,
                                              ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1, 0),
                              child: Transform.translate(
                                offset: Offset(
                                    0,
                                    -_model.timechange /
                                        1440 *
                                        MediaQuery.sizeOf(context).height),
                                child: Builder(
                                  builder: (context) {
                                    final timescalnum =
                                        FFAppState().timescale.toList();

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children:
                                          List.generate(timescalnum.length,
                                              (timescalnumIndex) {
                                        final timescalnumItem =
                                            timescalnum[timescalnumIndex];
                                        return Text(
                                          valueOrDefault<String>(
                                            FFAppState()
                                                .timescale
                                                .elementAtOrNull(
                                                    timescalnumIndex),
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 7.5,
                                                letterSpacing: 0.0,
                                              ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      carouselController: _model.carousetimescaleController ??=
                          CarouselSliderController(),
                      options: CarouselOptions(
                        initialPage: 0,
                        viewportFraction: 1,
                        disableCenter: true,
                        enlargeCenterPage: false,
                        enlargeFactor: 0,
                        enableInfiniteScroll: true,
                        scrollDirection: Axis.vertical,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 86400000),
                        autoPlayInterval: Duration(milliseconds: (86400000 + 0)),
                        autoPlayCurve: Curves.linear,
                        pauseAutoPlayInFiniteScroll: true,
                        onPageChanged: (index, _) =>
                            _model.carousetimescaleCurrentIndex = index,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      dateTimeFormat("Hm", _model.time),
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Inter Tight',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                  Text(
                    '     --------------------→                                ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            Opacity(
              opacity: 0,
              child: Align(
                alignment: AlignmentDirectional(1, 0),
                child: FFButtonWidget(
                  onPressed: true
                      ? null
                      : () {
                          print('Button pressed ...');
                        },
                  text: 'Button',
                  options: FFButtonOptions(
                    width: 250,
                    height: MediaQuery.sizeOf(context).height,
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 290, 65),
                child: Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'start',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ).animateOnActionTrigger(
                  animationsMap['containerOnActionTriggerAnimation1']!,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 290, 65),
                child: Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'end',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ).animateOnActionTrigger(
                  animationsMap['containerOnActionTriggerAnimation2']!,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, 1),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).error,
                    borderRadius: BorderRadius.circular(8),



                    image: DecorationImage(
                      image: AssetImage(
                          'assets/A02.gif'),
                      fit: BoxFit.cover,
                    ),





                  ),
                  child: FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: '设置',
                    icon: Icon(
                      Icons.settings_rounded,
                      size: 24,
                      color: Color.fromRGBO(253, 255, 241, 1),
                    ),
                    options: FFButtonOptions(
                      height: 40,
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: Color.fromRGBO(125, 209, 212, 0),
                      textStyle:TextStyle(fontWeight:FontWeight.bold,
                      color: Color.fromRGBO(253, 255, 241, 1)),
                      /* textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            color: Colors.white,
                            letterSpacing: 0.0,
                          ), */
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          
          
            // 顶部边缘拖动条
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 10, // 仅10px高度的触发区域
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onPanStart: (_) => windowManager.startDragging(),
                child: Container(color: Color.fromRGBO(125, 209, 212, 1)),
              ),
            ),
          
            /* Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 40, 16),
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                  
                    image: DecorationImage(                  
                      image: AssetImage('assets/B02.ico'), 
                      fit: BoxFit.cover,
                    ),
                  ),

                ),
              ),
            ) */


          ],
        ),
      ),
    );
  }
}

