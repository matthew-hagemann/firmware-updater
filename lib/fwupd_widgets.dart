import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';

import 'fwupd_models.dart';

class DeviceWidget extends StatefulWidget {
  const DeviceWidget({Key? key}) : super(key: key);

  static Widget create(BuildContext context, {required FwupdDevice device}) {
    return ChangeNotifierProvider(
      create: (_) => FwupdDeviceModel(
        device: device,
        client: context.read<FwupdClient>(),
      ),
      child: const DeviceWidget(),
    );
  }

  @override
  _DeviceWidgetState createState() => _DeviceWidgetState();
}

class _DeviceWidgetState extends State<DeviceWidget> {
  @override
  void initState() {
    super.initState();
    context.read<FwupdDeviceModel>().init();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<FwupdDeviceModel>();
    final showAll = context.select<FwupdModel, bool>((m) => m.showAllDevices);
    if (!showAll && model.upgrades.isEmpty) return const SizedBox.shrink();
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Theme.of(context).highlightColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                model.name,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ),
          if (model.upgrades.isNotEmpty)
            ListTile(
              title: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.memory, size: 72),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('${model.name} ${model.upgrades.first.version}'),
                        const SizedBox(height: 8),
                        Text(
                          model.upgrades.first.summary,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    child: const Text('Update'),
                    onPressed: () => model.verifyUpdate(),
                  ),
                ],
              ),
              onTap: () => showUpgradeInfoDialog(context, model),
            ),
        ],
      ),
    );
  }
}

Future<void> showUpgradeInfoDialog(
    BuildContext context, FwupdDeviceModel model) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(model.name),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
        content: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: model.upgrades.map((upgrade) {
              return Flexible(
                child: Html(
                  data: '<h3>${upgrade.version}</h3>${upgrade.description}',
                  shrinkWrap: true,
                ),
              );
            }).toList(),
          ),
        ),
        actionsPadding: const EdgeInsets.all(8.0),
        actions: [
          OutlinedButton(
            onPressed: Navigator.of(context).pop,
            child: const Text('Close'),
          )
        ],
      );
    },
  );
}