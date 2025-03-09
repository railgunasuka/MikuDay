import 'package:flutter/services.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/src/utils/flutter_flow_util.dart';
import '/flutter_flow/src/widgets/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/app_state.dart';
import '/data_schema.dart';




class YusheWidget extends StatefulWidget {
  const YusheWidget({super.key});

  @override
  State<YusheWidget> createState() => _YusheWidgetState();
}

class YusheModel extends FlutterFlowModel<YusheWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for yushename widget.
  FocusNode? yushenameFocusNode;
  TextEditingController? yushenameTextController;
  String? Function(BuildContext, String?)? yushenameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yushenameFocusNode?.dispose();
    yushenameTextController?.dispose();
  }
}

class _YusheWidgetState extends State<YusheWidget> {
  late YusheModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YusheModel());

    _model.yushenameTextController ??= TextEditingController();
    _model.yushenameFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                width: 200,
                child: TextFormField(
                  controller: _model.yushenameTextController,
                  focusNode: _model.yushenameFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                    hintText: 'ヾ( ˃ᴗ˂ )◞ • *✰',
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).alternate,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  textAlign: TextAlign.start,
                  // maxLength: 3,


                  inputFormatters: [
                    _CustomLengthLimitingTextInputFormatter(10), // 限制最终长度为
                  ],


                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator: _model.yushenameTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: '返回',
                    options: FFButtonOptions(
                      width: 80,
                      height: 35,
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      FFAppState().addToMain(DataStruct(
                        ta1: List.from(FFAppState().timelistA1),
                        ta2: List.from(FFAppState().timelistA2),
                        tb1: List.from(FFAppState().timelistB1),
                        tb2: List.from(FFAppState().timelistB2),
                        sTline: List.from(FFAppState().line),
                        cOcolor: List.from(FFAppState().color),
                        name: _model.yushenameTextController.text,
                      ));

                      
                      /* print('当前列表内容：\n${FFAppState().main.join('\n')}'); */
           
                      FFAppState().update(() {});
                      Navigator.pop(context);
                    },
                    text: '添加',
                    options: FFButtonOptions(
                      width: 80,
                      height: 35,
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                fontSize: 14,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ].divide(SizedBox(width: 15)),
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