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
  static Future<void> updateTopMenuItem(bool isTop) async {
    final items = [
      MenuItem(key: 'hide', label: '隐藏'),
      MenuItem.checkbox(key: 'toggle_top', label: '置顶', checked: isTop),
      MenuItem(key: 'quit', label: '退出'),
    ];
    await trayManager.setContextMenu(Menu(items: items));
  }

  @override
  void initState() {
    super.initState();
    trayManager.addListener(this);
    _initTopState();
  }

  Future<void> _initTopState() async {
    final isTop = await windowManager.isAlwaysOnTop();
    await updateTopMenuItem(isTop);
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
    await trayManager.popUpContextMenu(bringAppToFront: true);
  }

  @override
  void onTrayIconMouseDown() {
    windowManager.show(); // 该方法来自window_manager插件
  }

  @override
  Future<void> onTrayMenuItemClick(MenuItem menuItem) async {
    switch (menuItem.key) {
      case 'hide':
        windowManager.hide();
        break;

      case 'toggle_top':
        bool isAlwaysOnTop = await windowManager.isAlwaysOnTop();
        await windowManager.setAlwaysOnTop(!isAlwaysOnTop);
        await updateTopMenuItem(!isAlwaysOnTop);
        break;

      case 'quit':
        exit(0);

      default:
        break;
    }
  }
}
