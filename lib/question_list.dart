class Question {
  final int id, answer, difficulty;
  final String question, category;
  final List<String> options;
  final bool imageQuestion;

  Question({required this.id, required this.question, this.answer = 1, this.options = const [], this.difficulty = 1, this.category = "placeholder cat 1", this.imageQuestion = false});

  String ToString(Question question) {
    return "question: ${this.question}";
  }
}

//the difficulty variable in the questions may become obsolete, depending on how I end up handling it.
const List sample_data = [
  {
    "id": 0,
    "question": "CAT 1, EASY: PLACEHOLDER EASY QUESTION #1",
    "options": ['wrong', 'right', 'wrong', 'wrong'],
    "answer_index": 1,
    "difficulty": 1,
    "category": "placeholder cat 1",
    "imageQuestion": true,
  },
  {
    "id": 1,
    "question": "CAT 1, EASY: PLACEHOLDER EASY QUESTION #2",
    "options": ['wrong', 'right', 'wrong', 'wrong'],
    "answer_index": 1,
    "difficulty": 1,
    "category": "placeholder cat 1",
    "imageQuestion": true,
  },
  {
    "id": 2,
    "question": "CAT 3, MEDIUM: PLACEHOLDER MEDIUM QUESTION #1",
    "options": ['wrong', 'wrong', 'right', 'wrong'],
    "answer_index": 2,
    "difficulty": 2,
    "category": "placeholder cat 3",
    "imageQuestion": false,
  },
  {
    "id": 3,
    "question": "CAT 2 HARD: PLACEHOLDER HARD QUESTION #1",
    "options": ['wrong', 'wrong', 'right', 'wrong'],
    "answer_index": 2,
    "difficulty": 3,
    "category": "placeholder cat 2",
    "imageQuestion": false,
  },
  {
    "id": 4,
    "question": " CAT 2 MEDIUM: PLACEHOLDER MEDIUM QUESTION #2",
    "options": ['wrong', 'wrong', 'right', 'wrong'],
    "answer_index": 2,
    "difficulty": 2,
    "category": "placeholder cat 2",
    "imageQuestion": false,
  },
  {
    "id": 5,
    "question": "CAT 3 EASY: PLACEHOLDER EASY QUESTION #2",
    "options": ['wrong', 'right', 'wrong', 'wrong'],
    "answer_index": 1,
    "difficulty": 1,
    "category": "placeholder cat 3",
    "imageQuestion": false,
  },
  {
    "id": 6,
    "question": "CAT 1 HARD: PLACEHOLDER HARD QUESTION #2",
    "options": ['right', 'wrong', 'wrong', 'wrong'],
    "answer_index": 0,
    "difficulty": 3,
    "category": "placeholder cat 1",
    "imageQuestion": false,
  },
  {
    "id": 329,
    "question": "The \"Lantern Festival\" in China marks the end of which celebration?\n",
    "options": [
      "Spring Festival",
      "Harvest Festival",
      "Mid-Autumn Festival",
      "Double Ninth Festival"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": "Medium"
  }

];