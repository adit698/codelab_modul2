import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/data/models/db_model.dart';
import '../services/api_service.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  late ApiService apiService;
  Db? dbData;

  @override
  void initState() {
    super.initState();
    apiService = ApiService();
    fetchData();
  }

  Future<void> fetchData() async {
    dbData = await apiService.fetchData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
      ),
      body: dbData == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: dbData!.users.length,
              itemBuilder: (context, index) {
                final user = dbData!.users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              },
            ),
    );
  }
}
