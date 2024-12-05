import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});


  String get apiEndpoint => "http://localhost:5005/orders";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vælg borde"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go("/"),
        ),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () => _makeApiRequest(),
          child: const Text("itemTypes ->"),
        ),
      ),
    );
  }


  Future<void> _makeApiRequest() async {
    try {
      final response = await http.get(Uri.parse("http://localhost:5005/orders"));
      if (response.statusCode == 200) {
        throw('Response data: ${response.body}');
      } else {
        throw('Failed to load data');
      }
    } catch (e) {
      throw('Error: $e');
    }
  }
}
