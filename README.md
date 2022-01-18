# turbo_broccoli

A new Flutter project.

## 初始化项目-App结构
* MaterialApp
* * title(任务管理中的标题)
* * home(主内容)
* * debugShowCechkedModeBanner(是否显示左上角调试标记)
* Scaffold
* * appBar
* * body
* * 

## 基础组件
### Text
* TextDirection,文本方向
* TextStyle，文本样式
* * Color，FontWeight，FontStyle
* TextAlign，文本对其
* TextOverflow，文本溢出
* maxLines，制定显示的行数

### RichText 与 TextSpan
给一段文本声明不同的样式

### Icon
* Icon
* * Flutter 中图标库
* * Icon(Icons.具体图标名称)
* * 在线图标预览： https://material.io/resources/icons


### Color
* Color,自定义颜色
* * 通过ARGB来声明颜色
* * const Color(0xFFFFFFFF);
* * const Color.fromARGB(0xff,0xff,0xff,0xff);
* * const Color.fromARGB(255,66,165,245);
* * cosnt Color.fromRGBO(66,165,245,1.0);//O = opacity


### Container 布局
* child，声明子组件
* padding（maring）边距
* * EdgeInsets（all(), fromLTRB(), only()),设置不同方向的边距。
* decoration，修饰布局
* * BoxDecoration(边框（border），圆角（borderRadius），渐变（gradient），阴影，背景色，背景图)
* * 设置背景后，渐变色会失效。
* alignment，内容对其
* * Alignment(内容对其)
* transform, 变形布局
* * Matrix4（平移-translate、旋转-rotate、缩放-scale、偏斜-skew）

### 线性布局
* Column
* * 主轴方向是垂直方向
* * mainAxisAlignment： 主轴对齐方式
* * crossAxisAlignment: 交叉轴对齐方式
* * children： 内容

### 弹性布局
* Flex
* * direction，声明主轴方向
* * mainAxisAlignment，声明主轴对齐方式
* * textDirection，声明水平方向的排列顺序
* * corssAxisAlignment 声明交叉轴对齐方式
* * verticalDirection，声明垂直方向的排序顺序
* * children 声明子组件
* Expanded 可伸缩组件
* * flex，声明弹性布局所占比例
* * child 声明子组件

### 流式布局
* Wrap 解决内容溢出问题
* * spacing（主轴方向 子组件的间距）
* * alignment (主轴方向对齐方式)
* * runSpacing（纵轴方向子组件的间距）
* * runAlignment（纵轴方向的对齐方式）

* Chip（标签）
* CircleAvatar（圆形头像）

