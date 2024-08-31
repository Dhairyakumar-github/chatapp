import 'package:chatapp/Pages/AuthPage/Tabs/Login.dart';
import 'package:chatapp/Pages/AuthPage/Tabs/SignUp.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

// TabController tabController = TabController(length: 2, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Center(
          child: Container(
            height: 350,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.cente,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    // color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    child: const TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white54,
                      // overlayColor: WidgetStatePropertyAll(Colors.white),
                      dividerHeight: 0,
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      tabs: [
                        Tab(
                          text: "Login",
                        ),
                        Tab(
                          text: "SignUp",
                        )
                        // Text("scscsd"),
                        // Text("qqqqqqd"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Expanded(
                  child: TabBarView(
                    children: [Login(), SignUp()],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
