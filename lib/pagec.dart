
import '/size_manager.dart';
import 'package:window_manager/window_manager.dart';

import 'package:flutter/material.dart';

class PageC extends StatefulWidget {
  const PageC({super.key});

  @override
  State<PageC> createState() => _PageCState();
}

class _PageCState extends State<PageC> with WindowListener {
  
  
  

  @override
  void initState() {
    super.initState();
    
    

     // 延迟到页面渲染完成后调整窗口
    WidgetsBinding.instance.addPostFrameCallback((_) async {
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

      

      /* String toString() {
        return '''
        windowManager.getSize()
        '''; // 多行字符串更易读
      }
      print('当前列表内容：\n${currentSize}'); */

      
    });
    // 添加窗口变化监听
    windowManager.addListener(this);
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

    super.dispose();
  }


  



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onSecondaryTap: () async {
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
      },
      child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onPanStart: (_) => windowManager.startDragging(),
                child: Scaffold(
                  backgroundColor: Colors.white,
                  body: Center(
                    child: Image.asset('assets/app_icon.ico'),
                  ),
                ),
              ),
    );
  }

  
}