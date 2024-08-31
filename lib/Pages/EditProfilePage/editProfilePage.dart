import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height * 0.8,
          decoration:
              BoxDecoration(color: Theme.of(context).colorScheme.onPrimary),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   "Personal Details",
                        //   style: Theme.of(context)
                        //       .textTheme
                        //       .bodyMedium
                        //       ?.copyWith(color: Colors.grey),
                        // ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Name",
                            style: Theme.of(context).textTheme.bodyLarge),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 20),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "John Deo",
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Email",
                            style: Theme.of(context).textTheme.bodyLarge),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 20),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Example@gmail.com",
                            prefixIcon: Icon(Icons.alternate_email_sharp),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Phone Number",
                            style: Theme.of(context).textTheme.bodyLarge),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 20),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "8456457812",
                            prefixIcon: Icon(Icons.alternate_email_sharp),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Spacer(),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 60,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text("Save"),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
