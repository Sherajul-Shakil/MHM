// ignore_for_file: unused_field, unnecessary_null_comparison, unused_element, unnecessary_brace_in_string_interps, await_only_futures, avoid_print

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallProvider extends ChangeNotifier {
  callSend(String phoneNumber) async {
    final url = await Uri.parse('tel:${phoneNumber}');
    if (url != null) {
      launchUrl(url);
    } else {
      throw 'Something is else';
    }
    notifyListeners();
  }
}