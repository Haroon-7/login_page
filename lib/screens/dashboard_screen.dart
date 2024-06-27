import 'package:flutter/material.dart';
import '../data_service.dart';
import '../widgets/list_item.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() {
    return _DashboardScreenState();
  }
}

class _DashboardScreenState extends State<DashboardScreen> {
  final DataService dataService = DataService();
  late Future<List<dynamic>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = dataService.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: FutureBuilder<List<dynamic>>(
        future: futureData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return buildListItem(snapshot.data![index], onTap: () {});
              },
            );
          }
        },
      ),
    );
  }
}
