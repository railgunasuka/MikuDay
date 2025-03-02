import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tray_manager/tray_manager.dart';

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
  void onTrayMenuItemClick(MenuItem menuItem) {
    switch (menuItem.key) {
      case 'open':
        print("点击了打开菜单！");
        break;
      case 'quit':
        exit(0);
      default:
        break;
    }
  }
}