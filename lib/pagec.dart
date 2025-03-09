import 'dart:async';

import 'package:intl/intl.dart';

import 'package:ex1/flutter_flow/flutter_flow_theme.dart';



import '/size_manager.dart';
import 'package:window_manager/window_manager.dart';

import 'package:flutter/material.dart';

import '/flutter_flow/src/utils/flutter_flow_util.dart';


class PageCWidget extends StatefulWidget {
  const PageCWidget({super.key});

  @override
  State<PageCWidget> createState() => _PageCWidgtState();
}


class PageCModel extends FlutterFlowModel<PageCWidget> {



  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}




class _PageCWidgtState extends State<PageCWidget> with WindowListener{



  String _timeString = '--:--';
  String _dateString = '--/-- --';
  late Timer _timer;

  





  late PageCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  
  

  @override
  void initState() {
    super.initState();

    // 立即执行第一次更新
    _updateTime(); // 新增这行


    // 每5秒更新一次时间
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      _updateTime();
    });
    
    

     // 延迟到页面渲染完成后调整窗口
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await windowManager.hide();
      // 1. 强制窗口至少为 AB 的最小尺寸（确保跳转后初始安全）
      final currentSize = await windowManager.getSize();
      if (currentSize.width < WindowConstants.abMinSize.width || 
          currentSize.height < WindowConstants.abMinSize.height) {
        await windowManager.setSize(WindowConstants.abMinSize);
      }
      // 1. 修改窗口最小尺寸为 C 的 minSize
      
      await windowManager.setMinimumSize(WindowConstants.cMinSize);
      
      // 3. 缩小窗口到 C 的目标尺寸（如果当前窗口较大）
      final newSize = await windowManager.getSize();
      if (newSize.width > WindowConstants.cTargetSize.width ||
          newSize.height > WindowConstants.cTargetSize.height) {
        await windowManager.setSize(WindowConstants.cTargetSize);
      }
      await windowManager.setAlignment(Alignment.centerRight);
      await windowManager.show();

      

      /* String toString() {
        return '''
        windowManager.getSize()
        '''; // 多行字符串更易读
      }
      print('当前列表内容：\n${currentSize}'); */

      
    });
    // 添加窗口变化监听
    windowManager.addListener(this);




    _model = createModel(context, () => PageCModel());

    




  }

  void _updateTime() {
    final now = DateTime.now();
    setState(() {
      _timeString = DateFormat('HH:mm').format(now);
      _dateString = DateFormat('MM/dd EEEE', 'zh_CN').format(now);
    });
  }



  @override
  void dispose() {
    
    // 即使未通过返回按钮离开（如直接关闭窗口），也恢复设置
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await windowManager.setMinimumSize(WindowConstants.abMinSize);
      final currentSize = await windowManager.getSize();
      if (currentSize.width < WindowConstants.abMinSize.width || 
          currentSize.height < WindowConstants.abMinSize.height) {
        await windowManager.setSize(WindowConstants.abMinSize);
      }
    });
    windowManager.removeListener(this);



    _model.dispose();

    _timer.cancel();

    super.dispose();
  }


  



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onSecondaryTap: () async {
        await windowManager.hide();
        // 1. 恢复窗口最小尺寸为 AB 的 minSize
        await windowManager.setSize(WindowConstants.abMinSize);
        
        await windowManager.setMinimumSize(WindowConstants.abMinSize);


        /* // 2. 如果当前窗口小于 AB 的 minSize，扩大到 AB 的 minSize
        final currentSize = await windowManager.getSize();
        if (currentSize.width < WindowConstants.abMinSize.width || 
            currentSize.height < WindowConstants.abMinSize.height) {
          await windowManager.setSize(WindowConstants.abMinSize);
        } */

        // 3. 执行返回导航
        await windowManager.setAlignment(Alignment.centerRight);
        Navigator.pop(context);
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          await windowManager.show();
        });

      },
      
      
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      
      
      child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onPanStart: (_) => windowManager.startDragging(),
                /* child: Scaffold(
                  backgroundColor: Colors.white,
                  body: Center(
                    child: Image.asset('assets/app_icon.ico'),
                  ),
                ), */
                child: Scaffold(
                  key: scaffoldKey,
                  backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                  body: Stack(
                    children: [

                      Container(
                        width: 100,
                        height: 100,
                        constraints: BoxConstraints(
                          minWidth: double.infinity,
                          minHeight: double.infinity,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 255, 241, 1),


                          image: DecorationImage(
                            
                            image: AssetImage('assets/TEST.png'), 
                            fit: BoxFit.fitHeight,
                          ),




                        ),
                      ),


                      Container(
                        width: 100,
                        height: 100,
                        constraints: BoxConstraints(
                          minWidth: double.infinity,
                          minHeight: double.infinity,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,


                          image: DecorationImage(
                            
                            image: AssetImage('assets/C1.gif'), 
                            fit: BoxFit.cover,
                          ),




                        ),
                      ),
                      Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  _timeString,

                                  style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    fontSize: 41,
                                    letterSpacing: 0.1,
                                  ),

                                  /* style:TextStyle(fontWeight:FontWeight.bold,
                                      color: Color.fromRGBO(125, 209, 212, 1),
                                      fontSize: 30), */



                                  /* style: FlutterFlowTheme.of(context).displayLarge.override(
                                        fontFamily: 'Inter Tight',
                                        color: FlutterFlowTheme.of(context).primary,
                                        fontSize: 40,
                                        letterSpacing: 0.0,
                                      ), */
                                ),
                                Text(
                                  _dateString,

                                  style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 14.5,
                                    letterSpacing: 0.0,
                                  ),

                                  /* style:TextStyle(fontWeight:FontWeight.bold,
                                      color: Color.fromRGBO(125, 209, 212, 1),
                                      fontSize: 12), */


                                  /* style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context).primary,
                                        fontSize: 12,
                                        letterSpacing: 0.0,
                                      ), */

                                ),

                                Container(
                                  width: 100,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                ),

                                Text(
                                  'ヾ( ˃ᴗ˂ )◞ • *✰',
                                  style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Color.fromRGBO(0, 0, 0, 0.7),
                                    fontSize: 14.5,
                                    letterSpacing: 0.0,
                                  ),
                                ),


                                /* Text(
                                  '▶• ılıılıılıılıılıılı. 🥬',
                                  style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                    fontSize: 12,
                                    letterSpacing: 0.0,
                                  ),
                                ) */
                            




                            ].divide(SizedBox(height: 0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),





              ),
    );
  }

  
}