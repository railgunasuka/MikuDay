import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';

class TrayWatcher extends StatefulWidget {
  final Widget child;
  const TrayWatcher({super.key, required this.child});

  @override
  State<TrayWatcher> createState() => _TrayWatcherState();
}

class _TrayWatcherState extends State<TrayWatcher> with TrayListener {
  @override
  void initState() {
    super.initState();
    trayManager.addListener(this);
  }

  @override
  void dispose() {
    trayManager.removeListener(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void onTrayIconRightMouseDown() async {
    // 右键点击，打开菜单
    await trayManager.popUpContextMenu();
  }

  @override
  Future<void> onTrayMenuItemClick(MenuItem menuItem) async {
    switch (menuItem.key) {
      
      case 'toggle_top':
        bool isAlwaysOnTop = await windowManager.isAlwaysOnTop();
        await windowManager.setAlwaysOnTop(!isAlwaysOnTop);
        break;
     
      case 'quit':
        exit(0);
      
      default:
        break;
    }
  }
}