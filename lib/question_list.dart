class Question {
  final int id, answer, difficulty;
  final String question, category;
  final List<String> options;

  Question({required this.id, required this.question, this.answer = 1, this.options = const [], this.difficulty = 1, this.category = "placeholder cat 1"});

  String ToString(Question question) {
    return "question: ${this.question}";
  }
}

//the difficulty variable in the questions may become obsolete, depending on how I end up handling it.
const List sample_data = [
  {
    "id": 320,
    "question": "The \"Nowruz\" festival marks the start of the new year in which calendar?\n",
    "options": [
      "Julian Calendar",
      "Persian Calendar",
      "Hebrew Calendar",
      "Islamic Calendar"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2,
  },
  {
    "id": 321,
    "question": "\"Vesak,\" celebrating Buddha's birthday, is primarily observed in which country?\n",
    "options": [
      "Thailand",
      "Sri Lanka",
      "Myanmar",
      "Cambodia"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2,
  },
  {
    "id": 322,
    "question": "The \"Carnival of Binche,\" known for its Gilles performers, is celebrated in which country?\n",
    "options": [
      "Belgium",
      "Netherlands",
      "France",
      "Switzerland"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2,
  },
  {
    "id": 323,
    "question": "\"Bonfire Night\" or \"Guy Fawkes Night\" commemorates an event in which year?\n",
    "options": [
      "1588",
      "1605",
      "1649",
      "1707"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2,
  },
  {
    "id": 324,
    "question": "\"Krampusnacht,\" celebrated in Austria, involves:\n",
    "options": [
      "Gift-giving to children",
      "Scaring naughty children",
      "Decorating trees",
      "Singing carols"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2,
  },
  {
    "id": 325,
    "question": "\"Boryeong Mud Festival\" in South Korea promotes what activity?\n",
    "options": [
      "Mud wrestling",
      "Mud baths",
      "Mud painting",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 2,
  },
  {
    "id": 326,
    "question": "The \"White Nights Festival\" in Russia is primarily celebrated in which city?\n",
    "options": [
      "Moscow",
      "Saint Petersburg",
      "Sochi",
      "Kazan"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2,
  },
  {
    "id": 327,
    "question": "Which dance is iconic during Brazil's Carnival?\n",
    "options": [
      "Samba",
      "Tango",
      "Salsa",
      "Flamenco"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2,
  },
  {
    "id": 328,
    "question": "The \"Golden Eagle Festival\" in Mongolia showcases what traditional activity?\n",
    "options": [
      "Horse racing",
      "Eagle hunting",
      "Archery contests",
      "Wrestling matches"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2,
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
    "difficulty": 2,
  },
  {
    "id": 330,
    "question": "\"Lunar New Year\" originated in which ancient Chinese dynasty?\n",
    "options": [
      "Tang",
      "Han",
      "Zhou",
      "Ming"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3,
  },
  {
    "id": 330,
    "question": "placeholder lamo",
    "options": [
      "Tang",
      "CORRECT",
      "Zhou",
      "Ming"
    ],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 1,
  },
];