import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        centerTitle: true,
        leading: IconButton(
          onPressed: null,
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 160,
            width: double.infinity,
            child: const CircleAvatar(
              backgroundImage: NetworkImage("https://picsum.photos/200/300"),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              _buildInputs(title: "Full Name", hintText: "Aaron Nyamekye"),
              _buildInputs(title: "Username", hintText: "Aaron Nyamekye"),
              _buildInputs(
                  title: "Email Address", hintText: "aaronnyamekye@gmail.com"),
              _buildInputs(title: "Phone Number", hintText: "+13245547676"),
              _buildInputs(title: "Date of Birth", hintText: "12/12/1991"),
              _buildInputs(title: "Gender", hintText: "Gender"),
              SizedBox(height: 24),
              // Cancel button
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // Save button
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildInputs({
    String? title,
    String? hintText,
  }) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            child: Text(title!),
            height: 8,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
            ),
          )
        ],
      ),
    );
  }
}
