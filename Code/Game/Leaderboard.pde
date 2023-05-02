import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class Leaderboard {
  ArrayList<ScoreEntry> scores;
  int maxEntries;
  static final String DEFAULT_FILENAME = "leaderboard.txt";

  Leaderboard(int maxEntries) {
    this.maxEntries = maxEntries;
    scores = new ArrayList<ScoreEntry>();
    loadFromFile(DEFAULT_FILENAME); // Load the entries from the file when initializing the leaderboard
  }

  void addScore(String name, int score) {
    ScoreEntry newEntry = new ScoreEntry(name, score);
    scores.add(newEntry);
    Collections.sort(scores, Collections.reverseOrder()); // Sort the scores in descending order

    if (scores.size() > maxEntries) {
      scores.remove(scores.size() - 1); // Remove the lowest score if the leaderboard exceeds max entries
    }

    saveToFile(DEFAULT_FILENAME);
  }

  void display(float x, float y) {
    textSize(20);
    textAlign(LEFT);

    for (int i = 0; i < scores.size(); i++) {
      ScoreEntry entry = scores.get(i);
      text((i + 1) + ". " + entry.name + ": " + entry.score, x, y + i * 25);
    }
  }

  void saveToFile(String filename) {
    String[] lines = new String[scores.size()];

    for (int i = 0; i < scores.size(); i++) {
      ScoreEntry entry = scores.get(i);
      lines[i] = entry.name + "," + entry.score;
    }

    saveStrings(filename, lines);
  }

  void loadFromFile(String filename) {
    String[] lines = loadStrings(filename);

    if (lines != null) {
      scores.clear();

      for (String line : lines) {
        String[] parts = line.split(",");

        if (parts.length == 2) {
          String name = parts[0];
          int score = Integer.parseInt(parts[1]);
          addScore(name, score);
        }
      }
    }
  }
}

class ScoreEntry implements Comparable<ScoreEntry> {
  String name;
  int score;

  ScoreEntry(String name, int score) {
    this.name = name;
    this.score = score;
  }

  @Override
  public int compareTo(ScoreEntry other) {
    return Integer.compare(this.score, other.score);
  }
}
