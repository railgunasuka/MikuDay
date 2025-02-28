import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '/flutter_flow/src/utils/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/src/utils/flutter_flow_util.dart';
import '/flutter_flow/src/widgets/flutter_flow_widgets.dart';
import '/comps/yushe/yushe_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '/app_state.dart';



class CreateWidget extends StatefulWidget {
  const CreateWidget({super.key});

  static String routeName = 'create';
  static String routePath = '/create';

  @override
  State<CreateWidget> createState() => _CreateWidgetState();
}



class CreateModel extends FlutterFlowModel<CreateWidget> {
  ///  Local state fields for this page.

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

  List<int> toplist = [];
  void addToToplist(int item) => toplist.add(item);
  void removeFromToplist(int item) => toplist.remove(item);
  void removeAtIndexFromToplist(int index) => toplist.removeAt(index);
  void insertAtIndexInToplist(int index, int item) =>
      toplist.insert(index, item);
  void updateToplistAtIndex(int index, Function(int) updateFn) =>
      toplist[index] = updateFn(toplist[index]);

  List<int> endlist = [];
  void addToEndlist(int item) => endlist.add(item);
  void removeFromEndlist(int item) => endlist.remove(item);
  void removeAtIndexFromEndlist(int index) => endlist.removeAt(index);
  void insertAtIndexInEndlist(int index, int item) =>
      endlist.insert(index, item);
  void updateEndlistAtIndex(int index, Function(int) updateFn) =>
      endlist[index] = updateFn(endlist[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel1 widget.
  CarouselSliderController? carousel1Controller;
  int carousel1CurrentIndex = 0;

  // State field(s) for Carousel2 widget.
  CarouselSliderController? carousel2Controller;
  int carousel2CurrentIndex = 0;

  // State field(s) for Carousel3 widget.
  CarouselSliderController? carousel3Controller;
  int carousel3CurrentIndex = 0;

  // State field(s) for Carousel4 widget.
  CarouselSliderController? carousel4Controller;
  int carousel4CurrentIndex = 0;

  // State field(s) for Carousel5 widget.
  CarouselSliderController? carousel5Controller;
  int carousel5CurrentIndex = 0;

  // State field(s) for Carousel6 widget.
  CarouselSliderController? carousel6Controller;
  int carousel6CurrentIndex = 0;

  // State field(s) for Carousel7 widget.
  CarouselSliderController? carousel7Controller;
  int carousel7CurrentIndex = 0;

  // State field(s) for Carousel8 widget.
  CarouselSliderController? carousel8Controller;
  int carousel8CurrentIndex = 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Color? colorPicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}



class _CreateWidgetState extends State<CreateWidget>
    with TickerProviderStateMixin {
  late CreateModel _model;


  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();


    _model = createModel(context, () => CreateModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 100, 20, 0),
                child: Container(
                  width: 400,
                  height: 186.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Container(
                                width: 35,
                                height: 100,
                                child: CarouselSlider(
                                  items: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '1',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '2',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                  carouselController:
                                      _model.carousel1Controller ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: 0,
                                    viewportFraction: 0.3,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.5,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.vertical,
                                    autoPlay: false,
                                    onPageChanged: (index, _) =>
                                        _model.carousel1CurrentIndex = index,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Container(
                                width: 35,
                                height: 100,
                                child: CarouselSlider(
                                  items: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '1',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '2',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '3',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '4',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '5',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '6',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '7',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '8',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '9',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                  carouselController:
                                      _model.carousel2Controller ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: 0,
                                    viewportFraction: 0.3,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.5,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.vertical,
                                    autoPlay: false,
                                    onPageChanged: (index, _) =>
                                        _model.carousel2CurrentIndex = index,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '：',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Container(
                                width: 35,
                                height: 100,
                                child: CarouselSlider(
                                  items: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '1',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '2',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '3',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '4',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '5',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                  carouselController:
                                      _model.carousel3Controller ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: 0,
                                    viewportFraction: 0.3,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.5,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.vertical,
                                    autoPlay: false,
                                    onPageChanged: (index, _) =>
                                        _model.carousel3CurrentIndex = index,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Container(
                                width: 35,
                                height: 100,
                                child: CarouselSlider(
                                  items: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '1',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '2',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '3',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '4',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '5',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '6',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '7',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '8',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '9',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                  carouselController:
                                      _model.carousel4Controller ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: 0,
                                    viewportFraction: 0.3,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.5,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.vertical,
                                    autoPlay: false,
                                    onPageChanged: (index, _) =>
                                        _model.carousel4CurrentIndex = index,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '~',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Container(
                                width: 35,
                                height: 100,
                                child: CarouselSlider(
                                  items: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '1',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '2',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                  carouselController:
                                      _model.carousel5Controller ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: 0,
                                    viewportFraction: 0.3,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.5,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.vertical,
                                    autoPlay: false,
                                    onPageChanged: (index, _) =>
                                        _model.carousel5CurrentIndex = index,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Container(
                                width: 35,
                                height: 100,
                                child: CarouselSlider(
                                  items: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '1',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '2',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '3',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '4',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '5',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '6',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '7',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '8',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '9',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                  carouselController:
                                      _model.carousel6Controller ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: 0,
                                    viewportFraction: 0.3,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.5,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.vertical,
                                    autoPlay: false,
                                    onPageChanged: (index, _) =>
                                        _model.carousel6CurrentIndex = index,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '：',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Container(
                                width: 35,
                                height: 100,
                                child: CarouselSlider(
                                  items: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '1',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '2',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '3',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '4',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '5',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                  carouselController:
                                      _model.carousel7Controller ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: 0,
                                    viewportFraction: 0.3,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.5,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.vertical,
                                    autoPlay: false,
                                    onPageChanged: (index, _) =>
                                        _model.carousel7CurrentIndex = index,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Container(
                                width: 35,
                                height: 100,
                                child: CarouselSlider(
                                  items: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '1',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '2',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '3',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '4',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '5',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '6',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '7',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '8',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '9',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                  carouselController:
                                      _model.carousel8Controller ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: 0,
                                    viewportFraction: 0.3,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.5,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.vertical,
                                    autoPlay: false,
                                    onPageChanged: (index, _) =>
                                        _model.carousel8CurrentIndex = index,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 210,
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'TextField',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              // maxLength: 20,


                              inputFormatters: [
                                _CustomLengthLimitingTextInputFormatter(20), // 限制最终长度为
                              ],





                              buildCounter: (context,
                                      {required currentLength,
                                      required isFocused,
                                      maxLength}) =>
                                  null,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              FFAppState()
                                  .addToLine(_model.textController.text);
                              safeSetState(() {});
                              FFAppState().addToTimelistA1(
                                  _model.carousel1CurrentIndex * 10 +
                                      _model.carousel2CurrentIndex);
                              FFAppState().addToTimelistA2(
                                  _model.carousel3CurrentIndex * 10 +
                                      _model.carousel4CurrentIndex);
                              FFAppState().addToTimelistB1(
                                  _model.carousel5CurrentIndex * 10 +
                                      _model.carousel6CurrentIndex);
                              FFAppState().addToTimelistB2(
                                  _model.carousel7CurrentIndex * 10 +
                                      _model.carousel8CurrentIndex);
                              safeSetState(() {});
                              FFAppState().addToColor(Color(0x00000000));
                              safeSetState(() {});
                              safeSetState(() {
                                _model.textController?.clear();
                              });
                            },
                            text: '添加',
                            icon: Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.white,
                            ),
                            options: FFButtonOptions(
                              height: 40,
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              iconPadding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle:TextStyle(fontWeight:FontWeight.bold),
                              /* textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ), */
                              elevation: 0,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 300, 20, 80),
              child: Builder(
                builder: (context) {
                  final listnumber = FFAppState().line.toList();

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listnumber.length,
                    itemBuilder: (context, listnumberIndex) {
                      final listnumberItem = listnumber[listnumberIndex];
                      return Slidable(
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          extentRatio: 0.75,
                          children: [
                            SlidableAction(
                              label: 'Color',
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                              icon: Icons.color_lens,
                              onPressed: (_) async {
                                final _colorPickedColor =
                                    await showFFColorPicker(
                                  context,
                                  currentColor: _model.colorPicked ??=
                                      FlutterFlowTheme.of(context).primary,
                                  showRecentColors: true,
                                  allowOpacity: true,
                                  textColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  secondaryTextColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  primaryButtonBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  primaryButtonTextColor: Colors.white,
                                  primaryButtonBorderColor: Colors.transparent,
                                  displayAsBottomSheet: isMobileWidth(context),
                                );

                                if (_colorPickedColor != null) {
                                  safeSetState(() =>
                                      _model.colorPicked = _colorPickedColor);
                                }

                                FFAppState().updateColorAtIndex(
                                  listnumberIndex,
                                  (_) => _model.colorPicked!,
                                );
                                safeSetState(() {});
                              },
                            ),
                            SlidableAction(
                              label: 'Update',
                              backgroundColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              icon: Icons.mode,
                              onPressed: (_) async {
                                FFAppState().updateLineAtIndex(
                                  listnumberIndex,
                                  (_) => _model.textController.text,
                                );
                                safeSetState(() {});
                                FFAppState().updateTimelistA1AtIndex(
                                  listnumberIndex,
                                  (_) =>
                                      _model.carousel1CurrentIndex * 10 +
                                      _model.carousel2CurrentIndex,
                                );
                                FFAppState().updateTimelistA2AtIndex(
                                  listnumberIndex,
                                  (_) =>
                                      _model.carousel3CurrentIndex * 10 +
                                      _model.carousel4CurrentIndex,
                                );
                                FFAppState().updateTimelistB1AtIndex(
                                  listnumberIndex,
                                  (_) =>
                                      _model.carousel5CurrentIndex * 10 +
                                      _model.carousel6CurrentIndex,
                                );
                                FFAppState().updateTimelistB2AtIndex(
                                  listnumberIndex,
                                  (_) =>
                                      _model.carousel7CurrentIndex * 10 +
                                      _model.carousel8CurrentIndex,
                                );
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.clear();
                                });
                              },
                            ),
                            SlidableAction(
                              label: 'Delete',
                              backgroundColor:
                                  FlutterFlowTheme.of(context).error,
                              icon: Icons.delete_outline_rounded,
                              onPressed: (_) async {
                                FFAppState().removeFromLine(listnumberItem);
                                FFAppState().removeAtIndexFromTimelistA1(
                                    listnumberIndex);
                                FFAppState().removeAtIndexFromTimelistA2(
                                    listnumberIndex);
                                FFAppState().removeAtIndexFromTimelistB1(
                                    listnumberIndex);
                                FFAppState().removeAtIndexFromTimelistB2(
                                    listnumberIndex);
                                FFAppState()
                                    .removeAtIndexFromColor(listnumberIndex);
                                safeSetState(() {});
                              },
                            ),
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: ListTile(
                            title: Text(
                              (int var1, int var2, int var3, int var4) {
                                return '${var1.toString().padLeft(2, '0')} ：${var2.toString().padLeft(2, '0')}  ~  ${var3.toString().padLeft(2, '0')} ：${var4.toString().padLeft(2, '0')}';
                              }(
                                  FFAppState()
                                      .timelistA1
                                      .elementAtOrNull(listnumberIndex)!,
                                  FFAppState()
                                      .timelistA2
                                      .elementAtOrNull(listnumberIndex)!,
                                  FFAppState()
                                      .timelistB1
                                      .elementAtOrNull(listnumberIndex)!,
                                  FFAppState()
                                      .timelistB2
                                      .elementAtOrNull(listnumberIndex)!),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            subtitle: Text(
                              valueOrDefault<String>(
                                FFAppState()
                                    .line
                                    .elementAtOrNull(listnumberIndex),
                                '空',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            trailing: Icon(
                              Icons.lens_rounded,
                              color: FFAppState()
                                  .color
                                  .elementAtOrNull(listnumberIndex),
                              size: 35,
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: Container(
                  width: 400,
                  height: 65,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0, 0)
                                        .resolve(Directionality.of(context)),
                                    child: GestureDetector(
                                      onTap: () {
                                        FocusScope.of(dialogContext).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: YusheWidget(),
                                    ),
                                  );
                                },
                              );
                            },
                            text: '存预设',
                            options: FFButtonOptions(
                              width: 50,
                              height: 50,
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              
                              iconPadding: EdgeInsets.all(0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle:TextStyle(fontWeight:FontWeight.bold),
                              /* textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    fontSize: 12,
                                    letterSpacing: 0.0,
                                  ), */
                              elevation: 0,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            showLoadingIndicator: false,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 7),
                          child: Builder(
                            builder: (context) {
                              final prelist = FFAppState().main.toList();

                              return ListView.separated(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                scrollDirection: Axis.horizontal,
                                itemCount: prelist.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(width: 10),
                                itemBuilder: (context, prelistIndex) {
                                  final prelistItem = prelist[prelistIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onLongPress: () async {
                                      FFAppState().removeFromMain(prelistItem);
                                      safeSetState(() {});
                                    },
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        FFAppState().timelistA1 = prelistItem
                                            .ta1
                                            .toList()
                                            .cast<int>();
                                        FFAppState().timelistA2 = prelistItem
                                            .ta2
                                            .toList()
                                            .cast<int>();
                                        FFAppState().timelistB1 = prelistItem
                                            .tb1
                                            .toList()
                                            .cast<int>();
                                        FFAppState().timelistB2 = prelistItem
                                            .tb2
                                            .toList()
                                            .cast<int>();
                                        FFAppState().line = prelistItem.sTline
                                            .toList()
                                            .cast<String>();
                                        FFAppState().color = prelistItem.cOcolor
                                            .toList()
                                            .cast<Color>();
                                        safeSetState(() {});
                                      
                                      },
                                      text: prelistItem.name,
                                      options: FFButtonOptions(
                                        width: 50,
                                        height: 50,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        
                                        iconPadding: EdgeInsets.all(0),
                                        color: Colors.white,
                                        textStyle:TextStyle(
                                          fontWeight:FontWeight.bold,
                                          color:FlutterFlowTheme.of(context).primary,),
                                        /* textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 10,
                                              letterSpacing: 0.0,
                                            ), */
                                        elevation: 0,
                                        borderRadius: BorderRadius.circular(24),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        hoverTextColor: Colors.white,
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, 1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 75),
                child: Container(
                  width: 200,
                  height: 20,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).error,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      '请输入正确的时间顺序且勿重叠',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ).animateOnActionTrigger(
                  animationsMap['containerOnActionTriggerAnimation']!,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, 1),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: FFButtonWidget(
                  onPressed: () async {
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
                      return List.generate(
                          a160.length, (index) => a160[index] + a2[index]);
                    }(_model.a160.toList(), FFAppState().timelistA2.toList())
                        .toList()
                        .cast<int>();
                    safeSetState(() {});
                    _model.endlist = (List<int> b160, List<int> b2) {
                      return List.generate(
                          b160.length, (index) => b160[index] + b2[index]);
                    }(_model.b160.toList(), FFAppState().timelistB2.toList())
                        .toList()
                        .cast<int>();
                    safeSetState(() {});
                    if ((List<int> toplist, List<int> endlist) {
                      return List.generate(
                              toplist.length,
                              (i) =>
                                  toplist[i] <= endlist[i] &&
                                  (i == toplist.length - 1 ||
                                      endlist[i] <= toplist[i + 1]))
                          .every((e) => e);
                    }(_model.toplist.toList(), _model.endlist.toList())) {
                      Navigator.pushNamed(context, '/second');
                    } else {
                      if (animationsMap['containerOnActionTriggerAnimation'] !=
                          null) {
                        await animationsMap[
                                'containerOnActionTriggerAnimation']!
                            .controller
                            .forward(from: 0.0);
                      }
                      await Future.delayed(const Duration(milliseconds: 2500));
                      if (animationsMap['containerOnActionTriggerAnimation'] !=
                          null) {
                        await animationsMap[
                                'containerOnActionTriggerAnimation']!
                            .controller
                            .reverse();
                      }
                    }
                  },
                  text: '主页',
                  icon: Icon(
                    Icons.home_rounded,
                    size: 24,
                    color: Colors.white,
                  ),
                  options: FFButtonOptions(
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle:TextStyle(fontWeight:FontWeight.bold),
                    /* textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ), */
                    elevation: 0,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  showLoadingIndicator: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class _CustomLengthLimitingTextInputFormatter extends TextInputFormatter {
  _CustomLengthLimitingTextInputFormatter(this.maxLength);

  final int maxLength;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // 当用户正在输入拼音（如 Composing 范围有效）时，不限制长度
    if (newValue.composing.isValid) {
      return newValue;
    }

    // 输入完成时，检查长度并截断
    if (newValue.text.length > maxLength) {
      return TextEditingValue(
        text: newValue.text.substring(0, maxLength),
        selection: TextSelection.collapsed(offset: maxLength),
      );
    }
    return newValue;
  }
}
