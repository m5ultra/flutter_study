# Flutter 路由

## Flutter 中路由通俗的来讲就是页面的跳转， 在Flutter中通过Navigator 组建管理路由导航。 并提供了管理堆栈的方法。 如： navigator.push 和 Navigator.pop

### Flutter 中给我们提供了两种配置路由跳转的方式， 1。 基本路由 2。命名路由

## Flutter 基本路由的使用Homepage组建跳转到SearchPage组建。

### 第一步：需要在HomePage 中引入SearchPage。

```dart
 import 'pages/SearchPage.dart';
```

### 第二部：在HomePage中通过下面方法跳转

```dart
onPress() {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (BuildContext context) => const Search(),
    ),
  );
}
```
