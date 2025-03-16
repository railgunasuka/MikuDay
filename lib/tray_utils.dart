// 初始化系统托盘
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';


Future<void> initSystemTray() async {
  // 设置系统托盘图标
  await trayManager.setIcon("assets/cong.ico");
  // 新建菜单
  List<MenuItem> items = [


    MenuItem(
      key: 'hide',
      label: '隐藏',
    ),
    
    


    MenuItem.checkbox(
      key: 'toggle_top',
      label: '置顶',
      
      checked: await windowManager.isAlwaysOnTop(),
      onClick: (MenuItem menuItem) {menuItem.checked = !(menuItem.checked == true);},
    ),

    MenuItem(
      key: 'quit',
      label: '退出',
    ),



  ];
  // 设置菜单
  await trayManager.setContextMenu(Menu(items: items));
}