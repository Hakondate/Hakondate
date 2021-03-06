enum Flavor {
  dev,
  stg,
  prod;
}

class Environment {
  static Flavor get flavor {
    const flavor = String.fromEnvironment('FLAVOR');
    switch (flavor) {
      case 'dev':
        return Flavor.dev;
      case 'stg':
        return Flavor.stg;
      case 'prod':
        return Flavor.prod;
      default:
        throw Exception("'Flavour' must be specified");
    }
  }

  static bool get usingMock => const bool.hasEnvironment('MOCK');
}
