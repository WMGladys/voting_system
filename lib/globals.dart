// globals.dart
class GlobalStorage {
  static final GlobalStorage _instance = GlobalStorage._internal();

  factory GlobalStorage() {
    return _instance;
  }

  GlobalStorage._internal();

  Map<String, int> candidateVotes = {
    'Candidate A': 0,
    'Candidate B': 0,
    'Candidate C': 0,
    'Candidate D': 0,
  };
}
