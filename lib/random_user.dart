import 'dart:math';

class RandomUser {
  final String id;
  final String name;

  RandomUser(this.id, this.name);
}

RandomUser generateRandomUser() {
  final random = Random();
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  const idLength = 10;
  const nameLength = 8;

  String generateRandomString(int length) {
    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(random.nextInt(chars.length))
    ));
  }

  final id = 'user_${generateRandomString(idLength)}';
  final name = 'user_${generateRandomString(nameLength)}';

  return RandomUser(id, name);
}