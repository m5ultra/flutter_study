import "package:flutter/material.dart";

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "列表",
        home: Scaffold(
            appBar: AppBar(
              title: const Text('列表'),
            ),
            body: const Center(
              child: HomeContent(),
            )));
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text('明天天气', style: TextStyle(fontSize: 20)),
          subtitle: Text(
              'Window下只支持为Android设备构建并运行Flutter应用，而macOS同时支持iOS和Android设备。下面分别介绍如何连接Android和iOS设备来运行flutter应用。'),
        ),
        ListTile(
          title: Text('明天天气'),
          subtitle: Text(
              'Window下只支持为Android设备构建并运行Flutter应用，而macOS同时支持iOS和Android设备。下面分别介绍如何连接Android和iOS设备来运行flutter应用。'),
        ),
        ListTile(
          title: Text('明天天气'),
          subtitle: Text(
              'Window下只支持为Android设备构建并运行Flutter应用，而macOS同时支持iOS和Android设备。下面分别介绍如何连接Android和iOS设备来运行flutter应用。'),
        ),
        ListTile(
          title: Text('明天天气'),
          subtitle: Text(
              'Window下只支持为Android设备构建并运行Flutter应用，而macOS同时支持iOS和Android设备。下面分别介绍如何连接Android和iOS设备来运行flutter应用。'),
        ),
        ListTile(
          title: Text('明天天气'),
          subtitle: Text(
              'Window下只支持为Android设备构建并运行Flutter应用，而macOS同时支持iOS和Android设备。下面分别介绍如何连接Android和iOS设备来运行flutter应用。'),
        ),
        ListTile(
          title: Text('明天天气'),
          subtitle: Text(
              'Window下只支持为Android设备构建并运行Flutter应用，而macOS同时支持iOS和Android设备。下面分别介绍如何连接Android和iOS设备来运行flutter应用。'),
        ),
        ListTile(
          title: Text('明天天气'),
          subtitle: Text(
              'Window下只支持为Android设备构建并运行Flutter应用，而macOS同时支持iOS和Android设备。下面分别介绍如何连接Android和iOS设备来运行flutter应用。'),
        ),
        ListTile(
          title: Text('明天天气'),
          subtitle: Text(
              'Window下只支持为Android设备构建并运行Flutter应用，而macOS同时支持iOS和Android设备。下面分别介绍如何连接Android和iOS设备来运行flutter应用。'),
        ),
        ListTile(
          title: Text('明天天气'),
          subtitle: Text(
              'Window下只支持为Android设备构建并运行Flutter应用，而macOS同时支持iOS和Android设备。下面分别介绍如何连接Android和iOS设备来运行flutter应用。'),
        ),
        ListTile(
          title: Text('明天天气'),
          subtitle: Text(
              'Window下只支持为Android设备构建并运行Flutter应用，而macOS同时支持iOS和Android设备。下面分别介绍如何连接Android和iOS设备来运行flutter应用。'),
        ),
        ListTile(
          title: Text('明天天气'),
          subtitle: Text(
              'Window下只支持为Android设备构建并运行Flutter应用，而macOS同时支持iOS和Android设备。下面分别介绍如何连接Android和iOS设备来运行flutter应用。'),
        ),
        ListTile(
          title: Text('明天天气'),
          subtitle: Text(
              'Window下只支持为Android设备构建并运行Flutter应用，而macOS同时支持iOS和Android设备。下面分别介绍如何连接Android和iOS设备来运行flutter应用。'),
        ),
      ],
    );
  }
}
