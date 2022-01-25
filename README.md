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

### 布局约束
* 上层widget向下层widget传递约束条件。
* 下层widget向上层widget传递大小信息。
* 上层widget决定向下层widget的位置。
* OverflowBox 与UncontrainedBox类似，但不同的是，前者如果其子级超出该空间，它不会显示任何警告。

### 尺寸限制类容器
Flutter 确定组件大小的步骤为：
* 上层组件向下层组件传递约束条件。
* 下层组件确定自己的大小，然后告诉上层组件，且下层组件的大小必须符合父组件的约束。

#### ConstrainedBox
* 用于对子组件添加额外的约束

#### SizedBox
* 用于给子元素指定固定的宽高

#### UnconstrainedBox
* 会消除上层组件的约束，子组件不再收到约束。大小完全取决与自己。
* 并非真正除去约束，父限制在布局中仍然生效，只是不影响子控件的大小。

### 多重限制
* 多个父级ConstrainedBox 限制，minWidth和minHeight 都是取最大值，maxWidth和maxHeight 就是去最小值。
* 保证父限制与子限制不冲突。


####
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

### InheritedWidget
* Fluter内置的，跨组件状态管理的方案。
* 基本逻辑是：
* * 在inheritedWidget 中声明状态数据。
* * 在需要使用状态的inhteritedWidget的子组件中访问，InheritedWidget中的状态数据。

## 生命周期
* initState() 组件对象插入到元素树种时
* didchanged() 当状态对象的以来改变时
* build() 组件渲染时
* setState() 组件对象的内部状态变更时
* didUpdateWidget() 组件配置更新时
* deactivate() 组件对象在元素树种暂时移除时
* dispose() 组件对象在元素树中永远移除时

## 路由
管理多个页面的核心概念和类：Route和Navigator。一个route是一个屏幕或页面的抽象，Navigator是管理route的Widget。Navigator可以通过route入栈和出栈。

* 匿名路由
* 与Android页面跳转一样
```dart
Navigator.push()
Navigator.pop()
```

* 命名路由
* * 给页面起一个别名，然后使用别名就可以打开，使得路由管理更加清晰。
* * 需要提供页面名称映射表，路由表。
* * 路由表是一个Map结构，其中Key对应页面名字，value对应具体页面。
```dart
//路由表
MaterialApp{
    routes{
        'first' (context) => FirstPage(),
        'second' (context) => SecondPage(),
    },
    initialRoute: 'first',
}

//跳转
Navigator.pushNamed(context, 'second');
```

* 未知路由
* * 打开不存在的页面，统一跳到一个错误页面。
```dart
MaterialApp(
    onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(builder: (context) => UnknownPage()),
);
```

* 动态路由
通过onGenerateRoute 属性指定的路由，可以根据访问路径进行动态的匹配和拦截。



