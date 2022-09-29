import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'types/get_builder_state.dart';
import 'types/getx_and_obx.dart';
import 'types/provider_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetXAndOBX variable = Get.put(GetXAndOBX());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Using Provider',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  '${Provider.of<ProviderState>(context).providerCounter}',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Provider.of<ProviderState>(context, listen: false)
                        .increaseCounter();
                  },
                  color: Colors.blue,
                  child: const Text(
                    'Increase',
                  ),
                ),
              ],
            ),
          ),
          GetBuilder<GetMyBuilderState>(
            init: GetMyBuilderState(),
            builder: (value) => Expanded(
              child: Column(
                children: [
                  const Text(
                    'Using GetBuilder',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    '${value.getBuilderCounter}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      value.increaseCounter();
                    },
                    color: Colors.blue,
                    child: const Text(
                      'Increase',
                    ),
                  ),
                ],
              ),
            ),
          ),
          GetX<GetXAndOBX>(
            init: GetXAndOBX(),
            builder: (value) => Expanded(
              child: Column(
                children: [
                  const Text(
                    'Using GetX',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    '${value.getXCounter}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      value.increaseGetXCounter();
                    },
                    color: Colors.blue,
                    child: const Text(
                      'Increase',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => Expanded(
              child: Column(
                children: [
                  const Text(
                    'Using OBX',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    '${variable.oBXCounter}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      variable.increaseOBXCounter();
                    },
                    color: Colors.blue,
                    child: const Text(
                      'Increase',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
