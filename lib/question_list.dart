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
    "question":
    "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
    "difficulty": 1,
  },
  {
    "id": 2,
    "question": "When did Google release Flutter",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
    "difficulty": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
    "difficulty": 3,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
    "difficulty": 2,
  },
];