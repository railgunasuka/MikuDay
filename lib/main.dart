import 'dart:ui';
import 'dart:io';

// import 'package:ex1/pagec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'create/create_widget.dart'; // 导入Widget文件

import 'package:provider/provider.dart';
import '/app_state.dart';

import '/home_page/home_page_widget.dart';

// 只在Windows平台导入相关包
import 'package:window_manager/window_manager.dart'
    if (dart.library.html) 'dart:html';
import 'package:tray_manager/tray_manager.dart'
    if (dart.library.html) 'dart:html';
import 'package:windows_single_instance/windows_single_instance.dart'
    if (dart.library.html) 'dart:html';

import '/tray_utils.dart' if (dart.library.html) 'dart:html';
import '/tray_wather.dart' if (dart.library.html) 'dart:html';

import '/pagec.dart' if (dart.library.html) 'dart:html';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  // 判断平台
  if (Platform.isWindows) {
    await WindowsSingleInstance.ensureSingleInstance(
      args,
      "custom_identifier",
      onSecondWindow: (args) {
        print(args);
      },
    );

    await windowManager.ensureInitialized();
    await windowManager.setAlwaysOnTop(true);
    await windowManager.setResizable(false);

    WindowOptions windowOptions = WindowOptions(
      size: Size(400, 850),
      minimumSize: Size(400, 850),
      skipTaskbar: true,
      titleBarStyle: TitleBarStyle.hidden,
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.setAlignment(Alignment.centerRight);
      await windowManager.show();
      await windowManager.focus();
    });

    // 初始化系统托盘
    await initSystemTray();
    await trayManager.setToolTip('💚MikuDay💚');
  }

  final appState = FFAppState();

  runApp(
    // 根据平台选择不同的顶层Widget
    Platform.isWindows
        ? ChangeNotifierProvider(
          create: (context) => appState..loadItems(),
          child: TrayWatcher(child: MyApp()),
        )
        : ChangeNotifierProvider(
          create: (context) => appState..loadItems(),
          child: MyApp(),
        ),
  );
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],

      locale: const Locale('zh', 'CN'),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: Platform.isWindows ? "微软雅黑" : null,
      ),

      routes: {
        '/': (context) => CreateWidget(),
        '/second': (context) => HomePageWidget(),
        if (Platform.isWindows) '/cc': (context) => PageCWidget(),
      },

      scrollBehavior: MyCustomScrollBehavior(),
    );
  }
}
