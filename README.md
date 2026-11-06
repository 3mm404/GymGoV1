# GymGo V1

Cliente Flutter para una aplicación de gestión de gimnasios. La aplicación organiza el acceso autenticado, la navegación principal, el perfil del usuario y las preferencias visuales.

## Ejecutar

Requisitos: Flutter con Dart 3.8 o posterior y una instancia compatible de la API de GymGo.

```sh
flutter pub get
flutter run
```

El [servicio de perfil](lib/api/services/user_information.dart) usa `http://127.0.0.1:3000`. En un emulador o dispositivo, esa dirección se refiere al propio dispositivo. La configuración de red debe permitir que la app alcance la API antes de probar el flujo autenticado.

## Cómo está organizado

| Ruta | Responsabilidad |
| --- | --- |
| [lib/auth](lib/auth) | Verificación de sesión y pantalla de acceso. |
| [lib/api](lib/api) | Comunicación con la API y servicios de datos. |
| [lib/controllers](lib/controllers) | Estado de presentación, incluido el tema. |
| [lib/screens](lib/screens) | Pantallas de la aplicación. |

## Verificar

```sh
flutter analyze --no-fatal-infos
flutter test
```

La prueba del tema verifica el cambio entre claro y oscuro sin depender de la API.
