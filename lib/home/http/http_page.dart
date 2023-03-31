import 'package:consumindo_api_flutter/home/http/http_controller.dart';
import 'package:consumindo_api_flutter/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// ignore: duplicate_import
import '../../model/user_model.dart';

class HttpPage extends GetView<HttpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Http'),
        ),
        body: controller.obx(
          (state) {
            return ListView.builder(
              itemCount: state.length,
              itemBuilder: (_, index) {
                final UserModel item = state[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.id),
                );
              },
            );
          },
          onError: (error) {
            return const Center(child: Text('erro parceiro'));
          },
        ));
  }
}
