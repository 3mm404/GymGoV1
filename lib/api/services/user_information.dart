import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class UserInformationService {
  final String _baseUrl = 'http://127.0.0.1:3000';

  Future<Map<String, dynamic>?> getUserProfile() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      
      if (token == null) {
        return null;
      }

      final response = await http.get(
        Uri.parse('$_baseUrl/users/profile'),
        headers: _getHeaders(token),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print('Datos recibidos de perfil: $data');
        await saveUserProfile(data);
        return data;
      } else {
        print('Error al obtener perfil: ${response.body}');
        return null;
      }
    } catch (e) {
      print('Error en getUserProfile: $e');
      return null;
    }
  }

  Future<Map<String, dynamic>?> getLocalUserProfile() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final email = prefs.getString('email');
      final name = prefs.getString('name');
      final telefono = prefs.getString('telefono');
      final foto = prefs.getString('foto');
      
      if (email != null || name != null || telefono != null || foto != null) {
        print('Datos locales del perfil: {email: $email, name: $name, telefono: $telefono, foto: $foto}');
        return {
          'email': email,
          'name': name,
          'telefono': telefono,
          'foto': foto,
        };
      }
      
      return null;
    } catch (e) {
      print('Error al obtener perfil local: $e');
      return null;
    }
  }

  Future<void> saveUserProfile(Map<String, dynamic> profile) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      final email = profile['email'] as String?;
      final name = profile['name'] as String?;
      final telefono = profile['telefono'] as String?;
      final foto = profile['foto'] as String?;

      if (email != null) await prefs.setString('email', email);
      if (name != null) await prefs.setString('name', name);
      if (telefono != null) await prefs.setString('telefono', telefono);
      if (foto != null) await prefs.setString('foto', foto);

      final savedEmail = prefs.getString('email');
      final savedName = prefs.getString('name');
      final savedTelefono = prefs.getString('telefono');
      final savedFoto = prefs.getString('foto');
      
      print('Datos guardados: {email: $savedEmail, name: $savedName, telefono: $savedTelefono, foto: $savedFoto}');
    } catch (e) {
      print('Error al guardar perfil: $e');
    }
  }

  Map<String, String> _getHeaders(String token) {
    return {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }
}
