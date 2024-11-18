import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'controllers/user_tab_controller.dart';

class UserPage extends GetView<UserTabController> {
  const UserPage({super.key});

  Widget _headTabs() {
    return Center(
      child: Container(
        width: 320,
        height: 48,
        margin: const EdgeInsets.only(bottom: 0),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.5),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              child: Container(
                width: 150,
                height: 40,
                margin: const EdgeInsets.only(bottom: 0),
                padding: const EdgeInsets.all(0),
                decoration: controller.tabStatus.value
                    ? BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.1),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: const Offset(0, 2))
                        ],
                      )
                    : const BoxDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Text(
                        "Chat",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                controller.toggleTabs(true);
              },
            ),
            GestureDetector(
              child: Container(
                width: 150,
                height: 40,
                margin: const EdgeInsets.only(bottom: 0),
                padding: const EdgeInsets.all(0),
                decoration: controller.tabStatus.value
                    ? const BoxDecoration()
                    : BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.1),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: const Offset(0, 2))
                        ],
                      ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Text(
                        "Call",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                controller.toggleTabs(false);
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _headTabs(),
                Expanded(
                  child: controller.products.isNotEmpty
                      ? userList(context)
                      : const Center(
                          child: Text(
                            "No users available",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (_, i) {
            final product = controller.products[i];
            return Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(.5),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(2, 5),
                        color: Colors.grey.withOpacity(.3))
                  ]),
              child: ListTile(
                title: Text(
                  product.name ?? "",
                  style: const TextStyle(color: Colors.indigo),
                ),
                subtitle: Text(
                  product.description ?? "",
                ),
              ),
            );
          }),
    );
  }
}
