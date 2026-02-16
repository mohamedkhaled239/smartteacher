import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoService {
  final DeviceInfoPlugin _deviceInfoPlugin;

  DeviceInfoService(this._deviceInfoPlugin);

  Future<Map<String, dynamic>> getDeviceInfo() async {
    try {
      if (Platform.isAndroid) {
        final androidInfo = await _deviceInfoPlugin.androidInfo;
        return {
          'device_type': 'mobile',
          'device_id': androidInfo.id,
          'app_version': '1.0.0',
        };
      } else if (Platform.isIOS) {
        final iosInfo = await _deviceInfoPlugin.iosInfo;
        return {
          'device_type': 'mobile',
          'device_id': iosInfo.identifierForVendor ?? 'unknown',
          'app_version': '1.0.0',
        };
      } else {
        return {
          'device_type': 'web',
          'device_id': 'web_device',
          'app_version': '1.0.0',
        };
      }
    } catch (e) {
      return {
        'device_type': 'mobile',
        'device_id': 'unknown',
        'app_version': '1.0.0',
      };
    }
  }
}
