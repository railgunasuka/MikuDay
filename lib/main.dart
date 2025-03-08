import 'dart:ui';
import 'dart:io';

// import 'package:ex1/pagec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'create/create_widget.dart'; // 导入Widget文件

import 'package:provider/provider.dart';
import '/app_state.dart';

import '/home_page/home_page_widget.dart';

import 'package:window_manager/window_manager.dart';

import '/tray_utils.dart';
import '/tray_wather.dart';

import '/pagec.dart';




void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  // 必须加上这一行。
  await windowManager.ensureInitialized();
  // 初始化窗口置顶状态（可选）
  await windowManager.setAlwaysOnTop(true);
  await windowManager.setResizable(false);
  

  // originalMinSize = const Size(400, 850); // 替换为你的默认最小值

  WindowOptions windowOptions = WindowOptions(
    size: Size(400, 850),
    minimumSize: Size(400, 850), // 设置最小窗口大小
    // center: true,
    // backgroundColor: Colors.transparent,
    skipTaskbar: true,
    titleBarStyle: TitleBarStyle.hidden,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.setAlignment(Alignment.centerRight);
    await windowManager.show();
    await windowManager.focus();
  });
  

  final appState = FFAppState(); // Initialize FFAppState
  
  runApp(
    ChangeNotifierProvider(
      create: (context) => appState..loadItems(),// 创建全局状态实例
      child: MyApp(),
    ),
  );

  // 初始化系统托盘
  await initSystemTray();

  
}


class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => { 
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(




      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate, // Material组件本地化
        GlobalWidgetsLocalizations.delegate,   // 基础Widget本地化（如文本方向）
        
      ],
      
      locale: const Locale('zh', 'CN'), // 设置默认语言
      // 其他配置...





      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: Platform.isWindows ? "微软雅黑" : null,
      ),

      /* home: const CreateWidget(), // 直接使用拆分后的Widget
            // 命名路由配置 */
      
      routes: {
        '/': (context) => const TrayWatcher(child: CreateWidget(),),
        '/second': (context) => const TrayWatcher(child: HomePageWidget(),),
        '/cc': (context) => const TrayWatcher(child: PageCWidget(),),
      },


      scrollBehavior: MyCustomScrollBehavior(),
    
    
    );
  }
}