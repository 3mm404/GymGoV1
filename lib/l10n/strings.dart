class StringsLanguage {
  static String lang = 'en'; // current language

  static String get home => lang == 'en' ? 'Home' : 'Inicio';
  static String get membership => lang == 'en' ? 'Membership' : 'Membresía';
  static String get myKey => lang == 'en' ? 'My Key' : 'Mi Llave';
  static String get search => lang == 'en' ? 'Search' : 'Buscar';
  static String get profile => lang == 'en' ? 'Profile' : 'Perfil';
}
