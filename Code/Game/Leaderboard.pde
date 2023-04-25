import java.util.Collections;
import java.util.List;

class Leaderboard {
  ArrayList<ScoreEntry> scores;
  int maxEntries;

  Leaderboard(int maxEntries) {
    this.maxEntries = maxEntries;
    scores = new ArrayList<ScoreEntry>();
  }

  void addScore(String name, int score) {
    ScoreEntry newEntry = new ScoreEntry(name, score);
    scores.add(newEntry);
    Collections.sort(scores, Collections.reverseOrder()); // Sort the scores in descending order

    if (scores.size() > maxEntries) {
      scores.remove(scores.size() - 1); // Remove the lowest score if the leaderboard exceeds max entries
    }
  }

  void display(float x, float y) {
  textSize(20);
  textAlign(LEFT);

  for (int i = 0; i < scores.size(); i++) {
    ScoreEntry entry = scores.get(i);
    text((i + 1) + ". " + entry.name + ": " + entry.score, x, y + i * 25);
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
