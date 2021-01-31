enum KEY_WORDS { Vacation, Sea, Fireworks, Sky, Aurora, Clouds, Sunset }

extension KeyWordExtension on KEY_WORDS {
  static final values = {
    KEY_WORDS.Vacation: "Vacation",
    KEY_WORDS.Sea: "Sea",
    KEY_WORDS.Fireworks: "Fireworks",
    KEY_WORDS.Sky: "Sky",
    KEY_WORDS.Aurora: "Aurora",
    KEY_WORDS.Clouds: "Clouds",
    KEY_WORDS.Sunset: "Sunset"
  };
  String get value => values[this];
}
