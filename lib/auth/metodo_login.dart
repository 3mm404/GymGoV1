import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application_1/api/services/user_information.dart';

// Instancia global del servicio
final userInformationService = UserInformationService();

Future<bool> login(String identificador, String password) async {
  final url = Uri.parse('http://127.0.0.1:3000/users/login');

  try {
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'Identificador': identificador,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      
      // Verificar que la respuesta tiene el formato esperado
      if (data is Map<String, dynamic> && 
          data.containsKey('token') && 
          data.containsKey('email') && 
          data.containsKey('name') && 
          data.containsKey('telefono') && 
          data.containsKey('message')) {
        
        // Guardar token y estado de login
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);
        await prefs.setString('token', data['token']);
        await prefs.setString('email', data['email']);
        await prefs.setString('name', data['name']);
        await prefs.setString('telefono', data['telefono']);
        
        // Obtener el perfil completo del usuario usando el service global
        print('Obteniendo perfil del usuario...');
        final profile = await userInformationService.getUserProfile();
        print('Perfil obtenido: $profile');
        
        return true;
      } else {
        print('Formato de respuesta inválido: $data');
        return false;
      }
    } else {
      final errorData = jsonDecode(response.body);
      print('Error en login: ${errorData['message'] ?? response.body}');
      return false;
    }
  } catch (e) {
    print('Error en login: $e');
    return false;
  }
}
