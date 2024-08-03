class Question {
  final int id, answer, difficulty;
  final String question;
  final List<String> options;

  Question({required this.id, this.question = "what is a default question?", this.answer = 1, this.options = const ["yes", "no", "maybe", "so"], this.difficulty = 1});
}

//the difficulty variable in the questions may become obsolete, depending on how I end up handling it.
const List sample_data = [
  {
    "id": 1,
    "question": "EASY: PLACEHOLDER EASY QUESTION #1",
    "options": ['wrong', 'right', 'wrong', 'wrong'],
    "answer_index": 1,
    "difficulty": 1,
  },
  {
    "id": 2,
    "question": "MEDIUM: PLACEHOLDER MEDIUM QUESTION #1",
    "options": ['wrong', 'wrong', 'right', 'wrong'],
    "answer_index": 2,
    "difficulty": 2,
  },
  {
    "id": 3,
    "question": "HARD: PLACEHOLDER HARD QUESTION #1",
    "options": ['wrong', 'wrong', 'right', 'wrong'],
    "answer_index": 2,
    "difficulty": 3,
  },
  {
    "id": 4,
    "question": "MEDIUM: PLACEHOLDER MEDIUM QUESTION #2",
    "options": ['wrong', 'wrong', 'right', 'wrong'],
    "answer_index": 2,
    "difficulty": 2,
  },
  {
    "id": 5,
    "question": "EASY: PLACEHOLDER EASY QUESTION #2",
    "options": ['wrong', 'right', 'wrong', 'wrong'],
    "answer_index": 1,
    "difficulty": 1,
  },
  {
    "id": 6,
    "question": "HARD: PLACEHOLDER HARD QUESTION #2",
    "options": ['right', 'wrong', 'wrong', 'wrong'],
    "answer_index": 0,
    "difficulty": 3,
  },
];