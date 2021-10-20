import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';

import 'fwupd_dialogs.dart';
import 'fwupd_models.dart';
import 'fwupd_icons.dart';

class DeviceHeader extends StatefulWidget {
  const DeviceHeader({Key? key}) : super(key: key);

  static Widget create(BuildContext context, FwupdDevice device) {
    final client = context.read<FwupdClient>();
    return ChangeNotifierProvider(
      create: (_) => FwupdDeviceModel(device, client: client),
      child: const DeviceHeader(),
    );
  }

  @override
  State<DeviceHeader> createState() => _DeviceHeaderState();
}

class _DeviceHeaderState extends State<DeviceHeader> {
  @override
  void initState() {
    super.initState();
    context.read<FwupdDeviceModel>().init();
  }

  @override
  Widget build(BuildContext context) {
    final device = context.watch<FwupdDeviceModel>();
    final highlight = Theme.of(context).colorScheme.primary;
    return ListTile(
      textColor: device.hasUpgrades ? highlight : null,
      iconColor: device.hasUpgrades ? highlight : null,
      title: Text(device.name),
      subtitle: Text(device.summary),
      leading: device.icon.firstOrNull?.toDeviceIcon(),
    );
  }
}

class DeviceBody extends StatefulWidget {
  const DeviceBody({Key? key}) : super(key: key);

  static Widget create(BuildContext context, FwupdDevice device) {
    final client = context.read<FwupdClient>();
    return ChangeNotifierProvider(
      create: (_) => FwupdDeviceModel(device, client: client),
      child: const DeviceBody(),
    );
  }

  static Widget _buildPadding(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: child,
    );
  }

  static Widget _buildHeader(BuildContext context, String text) {
    return _buildPadding(
      Text(
        text,
        textAlign: TextAlign.end,
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }

  static Widget _buildLabel(BuildContext context, String text) {
    return _buildPadding(Text(text));
  }

  @override
  State<DeviceBody> createState() => _DeviceBodyState();
}

class _DeviceBodyState extends State<DeviceBody> {
  @override
  void initState() {
    super.initState();
    context.read<FwupdDeviceModel>().init();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<FwupdDeviceModel>();
    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Table(
              columnWidths: const {
                0: IntrinsicColumnWidth(),
                1: FixedColumnWidth(16),
                2: FlexColumnWidth(),
              },
              children: [
                if (model.device.version != null)
                  TableRow(children: [
                    DeviceBody._buildHeader(context, 'Version'),
                    const SizedBox.shrink(),
                    DeviceBody._buildLabel(context, model.device.version!),
                  ]),
                if (model.device.vendor != null)
                  TableRow(children: [
                    DeviceBody._buildHeader(context, 'Vendor'),
                    const SizedBox.shrink(),
                    DeviceBody._buildLabel(context, model.device.vendor!),
                  ]),
                if (model.device.guid.isNotEmpty)
                  TableRow(children: [
                    DeviceBody._buildHeader(context, 'GUID'),
                    const SizedBox.shrink(),
                    DeviceBody._buildPadding(
                        SelectableText(model.device.guid.first)),
                  ]),
                if (model.device.guid.length > 1)
                  for (final guid in model.device.guid.skip(1))
                    TableRow(children: [
                      DeviceBody._buildHeader(context, ''),
                      const SizedBox.shrink(),
                      DeviceBody._buildPadding(SelectableText(guid)),
                    ]),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: model.hasUpgrades
                ? () => showUpdateDialog(context, model)
                : null,
            child: const Text('Update'),
          ),
        ],
      ),
    );
  }
}

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<FwupdModel>(context);
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text('Status: ${model.status.toString().split('.').last}'),
            const Spacer(),
            Text('fwupd ${model.daemonVersion}'),
          ],
        ),
      ),
    );
  }
}

class RefreshButton extends StatelessWidget {
  const RefreshButton({
    Key? key,
    required this.isBusy,
    required this.onPressed,
  }) : super(key: key);

  final bool isBusy;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 24,
      icon: isBusy
          ? const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(),
            )
          : const Icon(Icons.refresh),
      onPressed: isBusy ? null : onPressed,
    );
  }
}
