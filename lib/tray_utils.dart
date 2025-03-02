// 初始化系统托盘
import 'package:tray_manager/tray_manager.dart';

Future<void> initSystemTray() async {
  // 设置系统托盘图标
  await trayManager.setIcon("assets/app_icon.ico");
  // 新建菜单
  List<MenuItem> items = [
    MenuItem(
      key: 'open',
      label: "打开",
    ),
    MenuItem(
      key: 'quit',
      label: '退出',
    ),
  ];
  // 设置菜单
  await trayManager.setContextMenu(Menu(items: items));
}