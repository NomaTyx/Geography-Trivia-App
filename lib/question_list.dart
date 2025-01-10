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
    "id": 0,
    "question": "What is the capital of France?\n",
    "options": ["Rome", "Nice", "Paris", "Venice"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 1,
    "question": "What is the capital of Germany?\n",
    "options": ["Munich", "Zurich", "Berlin", "Frankfurt"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 2,
    "question": "What is the capital of Italy?\n",
    "options": ["Milan", "Rome", "Naples", "Venice"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 3,
    "question": "What is the capital of Japan?\n",
    "options": ["Tokyo", "Hiroshima", "Kyoto", "Seoul"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 4,
    "question": "What is the capital of the United States?",
    "options": ["New York", "Los Angeles", "Chicago", "Washington D.C."],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 5,
    "question": "What is the capital of the United Kingdom?",
    "options": ["Manchester", "London", "Edinburgh", "Birmingham"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 6,
    "question": "What is the capital of Canada?\n",
    "options": ["Toronto", "Vancouver", "Ottawa", "Montreal"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 7,
    "question": "What is the capital of China?\n",
    "options": ["Beijing", "Shanghai", "Guangzhou", "Hong Kong"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 8,
    "question": "What is the capital of Egypt?\n",
    "options": ["Alexandria", "Giza", "Cairo", "Abu Dhabi"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 9,
    "question": "What is the capital of Russia?\n",
    "options": ["Oslo", "Moscow", "Novosibirsk", "Kazan"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 10,
    "question": "What is the capital of Australia?\n",
    "options": ["Sydney", "Melbourne", "Canberra", "Brisbane"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 11,
    "question": "What is the capital of Brazil?",
    "options": ["Rio de Janeiro", "São Paulo", "Salvador", "Brasilia"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 12,
    "question": "What is the capital of Mexico?\n",
    "options": [
      "Cabo San Lucas",
      "San Miguel de Allende",
      "Mexico City",
      "Cancún"
    ],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 13,
    "question": "What is the capital of Argentina?\n",
    "options": ["Buenos Aires", "Rosario", "Córdoba", "Mendoza"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 14,
    "question": "What is the capital of South Korea?\n",
    "options": ["Daegu", "Tokyo", "Busan", "Seoul"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 15,
    "question": "What is the capital of Turkey?\n",
    "options": ["Ankara", "Budapest", "Istanbul", "Izmir"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 16,
    "question": "What is the capital of South Africa?\n",
    "options": ["Cape Town", "Johannesburg", "Pretoria", "Durban"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 17,
    "question": "What is the capital of India?\n",
    "options": ["New Delhi", "Mumbai", "Bengaluru", "Kolkata"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 18,
    "question": "What is the capital of Thailand?\n\n",
    "options": ["Chiang Mai", "Bangkok", "Pattaya", "Phuket"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 19,
    "question": "What is the capital of Spain?\n",
    "options": ["Barcelona", "Valencia", "Seville", "Madrid"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 20,
    "question": "What is the capital of Greece?",
    "options": ["Santorini", "Athens", "Patras", "Thessaloniki"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 21,
    "question": "What is the capital of the Netherlands?\n",
    "options": ["Rotterdam", "Utrecht", "The Hague", "Amsterdam"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 22,
    "question": "What is the capital of Sweden?",
    "options": ["Stockholm", "Malmö", "Gothenburg", "Uppsala"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 23,
    "question": "What is the capital of Norway?",
    "options": ["Stavanger", "Oslo", " Bergen", "Larvik"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 24,
    "question": "What is the capital of Denmark?",
    "options": ["Salzburg", "Graz", "Linz", "Vienna"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 25,
    "question": "What is the capital of Denmark?",
    "options": ["Copenhagen", "Aarhus", "Odense", "Aalborg"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 26,
    "question": "What is the capital of Belgium?",
    "options": ["Dublin", "Galway", "Cork", "Limerick"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 27,
    "question": "What is the capital of Belgium?",
    "options": ["Brussels", "Antwerp", "Bruges", "Ghent"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 28,
    "question": "What is the capital of Switzerland?",
    "options": ["Zurich", "Geneva", "Bern", "Basel"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 29,
    "question": "What is the capital of Portugal?",
    "options": ["Porto", "Lisbon", "Faro", "Coimbra"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 30,
    "question": "What is the capital of Hungary?\n",
    "options": ["Debrecen", "Budapest", "Szeged", "Pécs"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 31,
    "question": "What is the capital of Israel?",
    "options": ["Haifa", "Tel Aviv", "Beersheba", "Jerusalem"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 32,
    "question": "What is the capital of the Philippines?",
    "options": ["Manila", "Davao", "Cebu City", "Quezon City"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 33,
    "question": "What is the capital of Singapore?",
    "options": ["Sentosa", "Singapore City*", "Marina Bay", "Pulau Ujong"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 34,
    "question": "What is the capital of New Zealand?",
    "options": ["Valparaíso", "Concepción", "Santiago", "Antofagasta"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 35,
    "question": "What is the capital of Peru?",
    "options": ["Trujillo", "Lima", "Arequipa", "Cusco"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 36,
    "question": "What is the capital of Chile?",
    "options": ["Santiago", "Antofagasta", "Concepción", "Valparaíso"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 37,
    "question": "What is the capital of Colombia?",
    "options": ["Barranquilla", "Cali", "Medellín", "Bogotá"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 38,
    "question": "What is the capital of Panama?",
    "options": ["David", "Colón", "Panama City", "Santiago"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 39,
    "question": "What is the capital of Kenya?",
    "options": ["Nairobi", "Mombasa", "Nakuru", "Kisumu"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 40,
    "question": "What is the capital of Namibia?",
    "options": ["Swakopmund", "Walvis Bay", "Rundu", "Windhoek"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 41,
    "question": "What is the capital of Mozambique?\n\n",
    "options": ["Maputo", "Pemba", "Nampula", "Beira"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 42,
    "question": "What is the capital of Botswana?\n",
    "options": ["Lobatse", "Francistown", "Maun", "Gaborone"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 43,
    "question": "What is the capital of Qatar?\nA) \nB) \nC) \nD) *\n",
    "options": ["Lusail", "Doha", "Al Rayyan", "Al Wakrah"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 44,
    "question": "What is the capital of Venezuela?\n",
    "options": ["Caracas", "Maracaibo", "Valencia", "Barquisimeto"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 45,
    "question": "What is the capital of Finland?",
    "options": ["Helsinki", "Oulu", "Turku", "Tampere"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 46,
    "question": "What is the capital of Ecuador?\n",
    "options": ["Manta", "Quito", "Cuenca", "Guayaquil"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 47,
    "question": "What is the capital of Paraguay?",
    "options": ["Ciudad del Este", "San Lorenzo", "Encarnación", "Asunción"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 48,
    "question": "What is the capital of Uruguay?\n",
    "options": ["Montevideo", "Maldonado", "Salto", "Punta del Este"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 49,
    "question": "What is the capital of Bolivia?\n\n",
    "options": ["La Paz", "Cochabamba", "Santa Cruz", "Sucre"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 50,
    "question": "What is the capital of Algeria?\n",
    "options": ["Annaba", "Algiers", "Constantine", "Oran"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 51,
    "question": "What is the capital of Morocco?",
    "options": ["Tangier", "Marrakesh", "Casablanca", "Rabat"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 52,
    "question": "What is the capital of Vietnam?\n\n",
    "options": ["Hanoi", "Da Nang", "Ho Chi Minh City", "Hue"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 53,
    "question": "What is the capital of Indonesia?\n\n",
    "options": ["Bandung", "Beijing", "Surabaya", "Jakarta"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 54,
    "question": "What is the capital of Malaysia?\nA) \nB) *\nC) \nD) \n",
    "options": ["Bangkok", "Johor Bahru", "Kuala Lumpur", "George Town"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 55,
    "question": "What is the capital of Bahrain?\n\n",
    "options": ["Manama", "Paris", "Muharraq", "Riffa"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 56,
    "question": "What is the capital of Oman?\n\n",
    "options": ["Shanghai", "Salalah", "Nizwa", "Muscat"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 57,
    "question": "What is the capital of Maldives?\n",
    "options": ["Addu City", "Malé", "Fuvahmulah", "Kulhudhuffushi"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 58,
    "question": "What is the capital of Uzbekistan?\n\n",
    "options": ["Tashkent", "Washington DC", "Bukhara", "Andijan"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 59,
    "question": "What is the capital of Kazakhstan?\n",
    "options": ["Nur-Sultan", "Karaganda", "Columbia", "Almaty"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 60,
    "question": "What is the capital of Kyrgyzstan?\n\n",
    "options": ["Osh", "San Diego", "Jalal-Abad", "Bishkek"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 61,
    "question": "What is the capital of Tajikistan?\n\n",
    "options": ["Khujand", "Dushanbe", "Kulob", "Bokhtar"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 62,
    "question": "What is the capital of Turkmenistan?\n",
    "options": ["Mary", "Turkmenbashi", "Dashoguz", "Ashgabat"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 63,
    "question": "What is the capital of Armenia?\n",
    "options": ["Vagharshapat", "Yerevan", "Gyumri", "Vanadzor"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 64,
    "question": "What is the capital of Azerbaijan?\n\n",
    "options": ["Ganja", "Lankaran", "Sumqayit", "Baku"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 65,
    "question": "What is the capital of Moldova?\n\n",
    "options": ["Chisinau", "Bălți", "Bender", "Tighina"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 66,
    "question": "What is the capital of Belarus?\n\n",
    "options": ["Brest", "Gomel", "Minsk", "Vitebsk"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 67,
    "question": "What is the capital of Ukraine?\n\n",
    "options": ["Kyiv", "Kharkiv", "Lviv", "Odessa"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 1
  },
  {
    "id": 68,
    "question": "What is the capital of Latvia?\n\n",
    "options": ["Daugavpils", "Liepaja", "Riga", "Jelgava"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 69,
    "question": "What is the capital of Lithuania?\n\n",
    "options": ["Šiauliai", "Vilnius", "Kaunas", "Klaipeda"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 70,
    "question": "What is the capital of Estonia?\n\n",
    "options": ["Tallinn", "Tartu", "Narva", "Pärnu"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 71,
    "question": "What is the capital of Slovakia?\n",
    "options": ["Košice", "Prešov", "Bratislava", "Nitra"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 72,
    "question": "What is the capital of Slovenia?\n\n",
    "options": ["Ljubljana", "Maribor", "Celje", "Kranj"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 73,
    "question": "What is the capital of Croatia?\n\n",
    "options": ["Split", "Zagreb", "Rijeka", "Osijek"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 74,
    "question": "What is the capital of Serbia?\n\n",
    "options": ["Belgrade", "Novi Sad", "Niš", "Kragujevac"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 75,
    "question": "What is the capital of Bosnia and Herzegovina?\n\n",
    "options": ["Banja Luka", "Tuzla", "Zenica", "Sarajevo"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 76,
    "question": "What is the capital of Montenegro?\n",
    "options": ["Bijelo Polje", "Nikšić", "Podgorica", "Herceg Novi"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 77,
    "question": "What is the capital of North Macedonia?\n",
    "options": ["Bitola", "Skopje", "Ohrid", "Tetovo"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 78,
    "question": "What is the capital of Iceland?\n\n",
    "options": ["Akureyri", "Keflavik", "Reykjavik", "Egilsstaðir"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 79,
    "question": "What is the capital of Malta?\n",
    "options": ["Valletta", "Birkirkara", "Sliema", "St. Julian's"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 80,
    "question": "What is the capital of Cyprus?\n\n",
    "options": ["Larnaca", "Famagusta", "Limassol", "Nicosia"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 81,
    "question": "What is the capital of Luxembourg?\n\n",
    "options": [
      "Esch-sur-Alzette",
      "Differdange",
      "Luxembourg City",
      "Ettelbruck"
    ],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 82,
    "question": "What is the capital of Andorra?\n\n",
    "options": [
      "Sant Julià de Lòri",
      "Escaldes-Engordany",
      "Encamp",
      "Andorra la Vella"
    ],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 83,
    "question": "What is the capital of San Marino?\n\n",
    "options": ["Serravalle", "Domagnano", "San Marino City", "Borgo Maggiore"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 84,
    "question": "What is the capital of Greenland?\n\n",
    "options": ["Sisimiut", "Ilulissat", "Nuuk", "Qaqortoq"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 85,
    "question": "What is the capital of Bermuda?\n\n",
    "options": ["Hamilton", "St. George's", "Somerset", "Dockyard"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 86,
    "question": "What is the capital of Faroe Islands?\n\n",
    "options": ["Klaksvik", "Runavík", "Tórshavn", "Sandavágur"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 87,
    "question": "What is the capital of the Cook Islands?\n\n",
    "options": ["Rarotonga", "Aitutaki", "Avarua", "Atiu"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 88,
    "question": "What is the capital of the Marshall Islands?\n",
    "options": ["Ebeye", "Majuro", "Kwajalein", "Arno"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 89,
    "question": "What is the capital of Palau?\n\n",
    "options": ["Koror", "Airai", "Ngerulmud", "Peleliu"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 90,
    "question": "What is the capital of Tuvalu?\n\n",
    "options": ["Nui", "Funafuti", "Vaitupu", "Nukufetau"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 91,
    "question": "What is the capital of Nauru?\n\n",
    "options": ["Aiwo", "Nauru", "Buada", "Yaren District"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 92,
    "question": "What is the capital of American Samoa?\n",
    "options": ["Tafuna", "Leone", "Pago Pago", "Fagatogo"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 93,
    "question": "What is the capital of Guam?",
    "options": [" Hagåtña", "Dededo", "Mangilao", "Yigo"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 94,
    "question": "What is the capital of Puerto Rico?",
    "options": ["Ponce", "Bayamón", "San Juan", "Mayagüez"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 95,
    "question": "What is the capital of the U.S. Virgin Islands?",
    "options": [
      "Cruz Bay",
      "Charlotte Amalie",
      "Frederiksted",
      "Christiansted"
    ],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 96,
    "question": "What is the capital of the Northern Mariana Islands?\n",
    "options": ["Tinian", "Rota", "Guam", "Saipan"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 2
  },
  {
    "id": 97,
    "question": "What is the capital of Lesotho?",
    "options": ["Maputo", "Maseru", "Gaborone", "Mbabane"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 98,
    "question": "What is the capital of Eswatini (Swaziland)?",
    "options": ["Manzini", "Mbabane", "Siteki", "Hlatikulu"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 99,
    "question": "What is the capital of Comoros?\n",
    "options": ["Moutsamoudou", "Domoni", "Moroni", "Mitsamiouli"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 100,
    "question": "What is the capital of Seychelles?",
    "options": ["Praslin", "Mahé", "La Digue", "Victoria"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 101,
    "question": "What is the capital of Saint Kitts and Nevis?\n",
    "options": ["Sandy Point", "Basseterre", "Charlestown", "Nevis"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 102,
    "question": "What is the capital of Saint Vincent and the Grenadines?",
    "options": ["Georgetown", "Arnos Vale", "Calliaqua", "Kingstown"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 103,
    "question": "What is the capital of the Solomon Islands?",
    "options": ["Gizo", "Honiara", "Auki", "Tulagi"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 104,
    "question": "What is the capital of Vanuatu?",
    "options": ["Port Vila", "Luganville", "Santo", "Tanna"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 105,
    "question": "What is the capital of Micronesia?",
    "options": ["Yap", "Chuuk", "Palikir", "Pohnpei"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 106,
    "question": "What is the capital of the Central African Republic?",
    "options": ["Berbérati", "Bambari", "Birao", "Bangui"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 107,
    "question": "What is the capital of Chad?",
    "options": ["Abéché", "Moundou", "N'Djamena*", "Sarh"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 108,
    "question": "What is the capital of Equatorial Guinea?",
    "options": [" Aconibe", "Ebebiyin", "Bata", "Malabo"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 109,
    "question": "What is the capital of São Tomé and Príncipe?",
    "options": ["Principe", "Santo Amaro", "Neves", "São Tomé"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 110,
    "question": "What is the capital of Guinea-Bissau?",
    "options": ["Gabú", "Bafata", "Bissau", "Bolama"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 111,
    "question": "What is the capital of Cabo Verde (Cape Verde)?",
    "options": ["Mindelo", "Praia", "Porto Novo", "Santa Maria"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 112,
    "question": "What is the capital of Libya?",
    "options": ["Benghazi", "Misrata", "Tripoli", "Tobruk"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 113,
    "question": "What is the capital of the Democratic Republic of the Congo?",
    "options": ["Mbuji-Mayi", "Kisangani", "Lubumbashi", "Kinshasa"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 114,
    "question": "What is the capital of Angola?",
    "options": ["Luanda", "Benguela", "Lubango", "Huambo"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 115,
    "question": "What is the capital of Somalia?",
    "options": ["Kismayo", "Baidoa", "Mogadishu", "Hargeisa"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 116,
    "question": "What is the capital of Eritrea?",
    "options": ["Massawa", "Asmara", "Assab", "Keren"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 117,
    "question": "What is the capital of Sudan?",
    "options": ["Kassala", "Port Sudan", "Omdurman", "Khartoum"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 118,
    "question": "What is the capital of South Sudan?",
    "options": ["Malakal", "Bentiu", "Juba", "Wau"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 119,
    "question": "What is the capital of Mali?",
    "options": ["Gao", "Kayes", "Sikasso", "Bamako"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 120,
    "question": "What is the capital of Niger?\n",
    "options": ["Maradi", "Niamey", "Zinder", "Agadez"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 121,
    "question": "What is the capital of Burkina Faso?",
    "options": ["Bobo-Dioulasso", "Ouahigouya", "Ouagadougou", "Koudougou"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 122,
    "question": "What is the capital of Benin?",
    "options": ["Parakou", "Porto-Novo", "Abomey", "Cotonou"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 123,
    "question": "What is the capital of Togo?",
    "options": ["Atakpamé", "Kpalimé", "Sokodé", "Lomé"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 124,
    "question": "What is the capital of Papua New Guinea?",
    "options": ["Port Moresby", "Lae", "Mount Hagen", "Madang"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 125,
    "question": "What is the capital of Timor-Leste?\n",
    "options": ["Ainaro", "Dili", "Liquiçá", "Baucau"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 126,
    "question": "What is the capital of the British Virgin Islands?\n",
    "options": ["Tortola", "Virgin Gorda", "Road Town", "Jost Van Dyke"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 127,
    "question": "What is the capital of Montserrat?\n",
    "options": ["Plymouth", "Brades", "Little Bay", "Gerald's"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 128,
    "question": "What is the capital of the Turks and Caicos Islands?",
    "options": ["North Caicos", "South Caicos", "Providenciales", "Grand Turk"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 129,
    "question": "What is the capital of Anguilla?",
    "options": ["Blowing Point", "The Valley", "South Hill", "North Side"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 130,
    "question": "What is the capital of the Falkland Islands?",
    "options": ["Port Stanley", "East Falkland", "West Falkland", "Stanley"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 131,
    "question": "What is the capital of Dominica?",
    "options": ["Portsmouth", "Salisbury", "Roseau", " Marigot"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 132,
    "question": "What is the capital of the Cayman Islands?",
    "options": ["West Bay", "Bodden Town", "George Town", "North Side"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 133,
    "question": "What is the capital of French Polynesia?",
    "options": ["Tahiti", "Bora Bora", "Moorea", "Papeete"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 134,
    "question": "What is the capital of the Pitcairn Islands?\n",
    "options": ["Bounty Bay", "Adamstown", "Down Rope", "London"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 135,
    "question": "What is the capital of Antarctica?",
    "options": [
      "Scott Base",
      "Palmer Station",
      "McMurdo Station",
      "No capital"
    ],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 136,
    "question": "What is the capital of Western Sahara?",
    "options": ["Tindouf", " Dakhla", "Laayoune", "Smara"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 137,
    "question": "What is the capital of the Republic of the Congo?\n",
    "options": ["Nkayi", "Brazzaville", "Dolisie", "Pointe-Noire"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 138,
    "question": "What is the capital of Abkhazia?",
    "options": ["Tbilisi", "Gori", "Sukhumi", "Tskhinvali"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 139,
    "question": "What is the capital of Suriname?",
    "options": ["Moengo", "Lelydorp", "Nieuw Nickerie", "Paramaribo"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 140,
    "question": "What is the capital of Guyana?",
    "options": ["Linden", " Anna Regina", "Georgetown", "New Amsterdam"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 141,
    "question": "What is the capital of Belize?\n",
    "options": ["Belize City", "San Ignacio", "Belmopan", "Orange Walk"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 142,
    "question": "What is the capital of Honduras?",
    "options": ["Tegucigalpa", "San Pedro Sula", "La Ceiba", "Choloma"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 143,
    "question": "What is the capital of El Salvador?",
    "options": ["La Libertad", "San Salvador", "San Miguel", "Santa Ana"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 144,
    "question": "What is the capital of Costa Rica?",
    "options": ["Alajuela", "Liberia", "San José", "Cartago"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 145,
    "question": "What is the capital of Cuba?",
    "options": ["Santiago de Cuba", " Camagüey", "Havana", "Holguín"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 146,
    "question": "What is the capital of the Dominican Republic?",
    "options": ["Santiago", "San Cristóbal", "La Romana", "Santo Domingo"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 147,
    "question": "What is the capital of Nicaragua?",
    "options": ["Granada", "Managua", "Masaya", "León"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 148,
    "question": "What is the capital of Bhutan?",
    "options": ["Punakha", "Paro", "Wangdue Phodrang", "Thimphu"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 149,
    "question": "What is the capital of Georgia?",
    "options": ["Batumi", "Kutaisi", "Rustavi", "Tbilisi"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 150,
    "question": "What is the capital of Kosovo?",
    "options": ["Mitrovica", "Ferizaj", "Pristina", "Peja"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 151,
    "question": "What is the capital of the Bahamas?",
    "options": ["Freeport", "Nassau", "Marsh Harbour", "Lucaya"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 152,
    "question": "What is the capital of Jamaica?",
    "options": ["Montego Bay", "Ocho Rios", "Negril", "Kingston"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 153,
    "question": "What is the capital of Trinidad and Tobago?",
    "options": ["Port of Spain", "Scarborough", "San Fernando", "Chaguanas"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 154,
    "question": "What is the capital of Saint Lucia?",
    "options": ["Rodney Bay", "Soufrière", "Vieux Fort", "Castries"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 155,
    "question": "What is the capital of Afghanistan?",
    "options": ["Kandahar", "Kabul", "Herat", "Mazar-i-Sharif"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 156,
    "question": "What is the capital of Albania?\n",
    "options": ["Durrës", "Tirana", "Vlorë", " Shkodër"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 157,
    "question": "What is the capital of Bangladesh?\n",
    "options": ["Chittagong", "Dhaka", "Rajshahi", "Khulna"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 158,
    "question": "What is the capital of Bhutan?",
    "options": ["Thimphu", "Paro", "Phuentsholing", "Punakha"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 159,
    "question": "What is the capital of Burundi?",
    "options": ["Ngozi", "Bujumbura", "Rumonge", "Gitega"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 160,
    "question": "What is the capital of Cambodia?",
    "options": ["Sihanoukville", "Battambang", "Phnom Penh", "Siem Reap"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 161,
    "question": "What is the capital of Djibouti?\n",
    "options": ["Tadjoura", "Ali Sabieh", "Djibouti", "Dikhil"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 162,
    "question": "What is the capital of Gabon?",
    "options": [" Franceville", "Oyem", "Port-Gentil", "Libreville"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 163,
    "question": "What is the capital of The Gambia?",
    "options": ["Banjul", "Serrekunda", "Brikama", "Farafenni"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 164,
    "question": "What is the capital of Ghana?",
    "options": ["Takoradi", "Accra", "Kumasi", "Tamale"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 165,
    "question": "What is the capital of Grenada?\n",
    "options": ["Hillsborough", "Grenville", "St. George’s", "Carriacou"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 166,
    "question": "What is the capital of Haiti?",
    "options": ["Cap-Haïtien", "Jacmel", "Les Cayes", "Port-au-Prince"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 167,
    "question": "What is the capital of Iraq?",
    "options": ["Basra", "Mosul", "Erbil", "Baghdad"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 168,
    "question": "What is the capital of Jordan?",
    "options": ["Amman", "Aqaba", "Irbid", "Madaba"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 169,
    "question": "What is the capital of Kiribati?",
    "options": ["Kiritimati", "Betio", "Tarawa", "Abemama"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 170,
    "question": "What is the capital of Laos?",
    "options": ["Luang Prabang", "Savannakhet", "Paksé", "Vientiane"],
    "answer_index": 3,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 171,
    "question": "What is the capital of Lebanon?\n",
    "options": ["Tripoli", "Sidon", "Beirut", "Tyre"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 172,
    "question": "What is the capital of Liberia?",
    "options": ["Buchanan", "Gbarnga", "Monrovia", "Robertsport"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 173,
    "question": "What is the capital of Madagascar?",
    "options": ["Antananarivo", "Toamasina", "Mahajanga", "Toliara"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 174,
    "question": "What is the capital of Malawi?\n",
    "options": ["Blantyre", "Mzuzu", "Lilongwe", "Zomba"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 175,
    "question": "What is the capital of Mauritania?",
    "options": ["Kiffa", "Nouadhibou", "Nouakchott", "Rosso"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 176,
    "question": "What is the capital of Monaco?",
    "options": ["Monte Carlo", "Monaco", "La Condamine", "Moneghetti"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 177,
    "question": "What is the capital of Nepal?\n",
    "options": ["Bhaktapur", "Lalitpur", "Kathmandu", "Pokhara"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 178,
    "question": "What is the capital of Nicaragua?",
    "options": ["Granada", "León", "Managua", "Matagalpa"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 179,
    "question": "What is the capital of Rwanda?",
    "options": ["Butare", "Gisenyi", "Kigali", "Ruhengeri"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 180,
    "question": "What is the capital of Senegal?\n",
    "options": ["Dakar", "Saint-Louis", "Thiès", "Ziguinchor"],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 181,
    "question": "What is the capital of Sierra Leone?\n",
    "options": ["Bo", "Freetown", "Kenema", "Makeni"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 182,
    "question": "What is the capital of Sri Lanka?\n",
    "options": [
      "Colombo (official)",
      "Sri Jayawardenepura Kotte (legislative)*",
      "Kandy",
      "Galle"
    ],
    "answer_index": 0,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 183,
    "question": "What is the capital of Syria?\n",
    "options": ["Aleppo", "Damascus", "Homs", "Latakia"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 184,
    "question": "What is the capital of Tanzania?",
    "options": ["Arusha", "Dar es Salaam", "Dodoma", "Mwanza"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 185,
    "question": "What is the capital of Trinidad and Tobago?",
    "options": ["Arima", "Scarborough", " Port of Spain", "San Fernando"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 186,
    "question": "What is the capital of Uganda?",
    "options": ["Entebbe", "Jinja", "Kampala", "Gulu"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 187,
    "question": "What is the capital of Yemen?\n",
    "options": ["Aden", "Al Hudaydah", "Sana’a", "Taiz"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 188,
    "question": "What is the capital of Zambia?\n",
    "options": ["Livingstone", "Lusaka", "Ndola", "Kitwe"],
    "answer_index": 1,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 189,
    "question": "What is the capital of Zimbabwe?",
    "options": ["Bulawayo", "Gweru", "Harare", "Mutare"],
    "answer_index": 2,
    "category": "Capitals",
    "difficulty": 3
  },
  {
    "id": 190,
    "question": "In which country is the festival \"Holi\" widely celebrated?",
    "options": ["Nepal", "Pakistan", "Bangladesh", "India"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 191,
    "question": "Which country has the largest Christian population?",
    "options": ["Brazil", "Mexico", "Russia", "United States"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 192,
    "question":
    "The \"Carnival of Venice\" is an iconic festival in which country?",
    "options": ["France", "Italy", "Portugal", "Spain"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 193,
    "question":
    "\"Hanukkah,\" a Jewish holiday, is primarily observed in which country?",
    "options": ["Argentina", "Canada", "Israel", "United States"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 194,
    "question":
    "Where is the festival \"Oktoberfest\" traditionally celebrated?",
    "options": ["Austria", "Denmark", "Germany", "Switzerland"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 195,
    "question":
    "The \"Cherry Blossom Festival\" is most famously celebrated in which country?",
    "options": ["China", "Japan", "South Korea", "Vietnam"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 196,
    "question":
    "Which country is known for the \"Carnival\" in Rio de Janeiro?",
    "options": ["Argentina", "Brazil", "Colombia", "Venezuela"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 197,
    "question":
    "The \"Thanksgiving\" holiday is most closely associated with which country?",
    "options": ["Australia", " Canada", "United Kingdom", "United States"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 198,
    "question":
    "\"La Tomatina,\" a tomato-throwing festival, takes place in which country?",
    "options": ["Greece", "Italy", "Portugal", "Spain"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 199,
    "question":
    "\"St. Patrick's Day\" is a celebration originating from which country?",
    "options": ["England", "Ireland", "Scotland", "Wales"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 200,
    "question": "\"Eid al-Fitr\" is celebrated in which religion?",
    "options": ["Christianity", "Islam", "Hinduism", "Judaism"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 201,
    "question":
    "Where is the festival \"Durga Puja\" predominantly celebrated?",
    "options": ["Bangladesh", "Bhutan", "India", "Nepal"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 202,
    "question":
    "The \"Day of the Dead\" or \"Día de los Muertos\" originates from which country?",
    "options": ["Argentina", "Mexico", "Peru", "Spain"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 203,
    "question": "Which country is famous for the \"Dragon Boat Festival\"?",
    "options": ["China", "Japan", "South Korea", "Vietnam"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 204,
    "question": "Which country celebrates \"Thanksgiving\" in October?",
    "options": ["Australia", "Canada", "United Kingdom", "United States"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 205,
    "question": "\"Obon\" is a traditional festival in which country?",
    "options": ["China", " Japan", "South Korea", "Vietnam"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 206,
    "question":
    "In which country is the festival \"Carnaval de Oruro\" celebrated?\n",
    "options": ["Argentina", "Bolivia", "Ecuador", "Peru"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 207,
    "question":
    "Where did the tradition of the \"Christmas tree\" originate?\n",
    "options": ["Germany", "France", "United Kingdom", "Italy"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 208,
    "question": "Which country is famous for its \"Diwali\" festival?\n",
    "options": ["Bangladesh", "India", "Nepal", "Sri Lanka"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 209,
    "question": "The Fourth of July is represented by which three colors?\n",
    "options": [
      "Red, black, and green",
      "White, blue, and red",
      "Green, white, and blue",
      "Red, white, and black"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 210,
    "question":
    "\"Tet,\" the Vietnamese New Year, marks the start of which calendar?",
    "options": [
      "Solar Calendar",
      "Lunar Calendar",
      "Gregorian Calendar",
      "Mayan Calendar"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 211,
    "question":
    "Which country is known for its traditional \"Highland Games\"?",
    "options": ["England", "Ireland", "Scotland", "Wales"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 212,
    "question":
    "Where is the \"Mardi Gras\" festival most famously celebrated in the United States?",
    "options": ["California", "Florida", "Louisiana", "Texas"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 213,
    "question": "\"Hogmanay\" is a New Year's celebration in which country?\n",
    "options": ["Australia", "Ireland", "Scotland", "Wales"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 214,
    "question": "\"Bastille Day\" is a national holiday in which country?",
    "options": ["Belgium", "France", " Luxembourg", "Switzerland"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 215,
    "question":
    "The \"Lantern Festival\" marks the end of which country's New Year celebrations?\n",
    "options": ["China", "Japan", "South Korea", "Thailand"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 216,
    "question":
    "\"Boxing Day\" is traditionally celebrated in which country?\n",
    "options": ["United Kingdom", "United States", " Canada", "Australia"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 217,
    "question": "The \"Rose Festival\" is an annual event in which country?",
    "options": ["Greece", "Turkey", " Italy", "Bulgaria"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 218,
    "question": "Where is the \"Moors and Christians Festival\" celebrated?",
    "options": ["Morocco", "Algeria", " Spain", "Portugal"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 219,
    "question":
    "In which country is the \"Songkran\" water festival celebrated?\n",
    "options": [" Laos", "Vietnam", "Thailand", "Cambodia"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 220,
    "question": "\"Golden Week\" is a major holiday period in which country?\n",
    "options": ["South Korea", " Japan", "China", "Vietnam"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 221,
    "question": "Which country celebrates the harvest festival \"Lughnasadh\"?",
    "options": [" Ireland", "Scotland", "Wales", " England"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 222,
    "question":
    "The \"Samba Parade\" is a key event in which country's Carnival celebrations?",
    "options": ["Argentina", "Brazil", "Colombia", "Venezuela"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 223,
    "question": "Which country celebrates the \"Battle of Flowers\"?\n",
    "options": ["Chile", "Colombia", "Ecuador", "Venezuela"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 224,
    "question":
    "The \"Song Festival\" is a cultural event in which Baltic country?",
    "options": [" Latvia", "Estonia", "Lithuania", "Poland"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 225,
    "question":
    "Which country hosts the annual \"Tulip Festival\" in Keukenhof Gardens?",
    "options": ["Belgium", "Netherlands", "France", "Germany"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 226,
    "question":
    "The \"Day of Silence\" or \"Nyepi\" is celebrated in which country?",
    "options": ["Philippines", "Thailand", "Malaysia", "Indonesia"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 227,
    "question":
    "\"Carnaval de Negros y Blancos\" is celebrated in which South American country?",
    "options": ["Venezuela", "Colombia", " Ecuador", "Peru"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 228,
    "question": "Where is the \"Up Helly Aa\" fire festival held?",
    "options": ["Ireland", "Norway", "Scotland", "Wales"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 229,
    "question":
    "Gion Matsuri\" is a famous festival held in which Japanese city?",
    "options": ["Tokyo", "Osaka", "Kyoto", "Nagoya"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 230,
    "question": "Which country celebrates the \"Obando Fertility Rites\"?",
    "options": ["Indonesia", " Philippines", "Malaysia", "Thailand"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 231,
    "question":
    "\"Inti Raymi\" is a sun festival celebrated in which country?\n",
    "options": ["Bolivia", "Chile", "Ecuador", "Peru"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 232,
    "question": "The \"Golden Eagle Festival\" is celebrated in which country?",
    "options": [" Kazakhstan", "Mongolia", "Russia", "China"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 233,
    "question": "\"Nowruz\" marks the New Year in which region?\n",
    "options": ["East Asia", "Central Asia", " South Asia", "Middle East"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 234,
    "question": "Which country celebrates the \"Sinulog Festival\"?",
    "options": ["Malaysia", "Philippines", " Indonesia", "Singapore"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 235,
    "question": "Where is the \"Maslenitsa\" festival celebrated?",
    "options": ["Poland", "Belarus", "Ukraine", " Russia"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 236,
    "question":
    "\"Boryeong Mud Festival,\" a unique summer event, takes place in which country?",
    "options": ["Japan", "South Korea", "China", "Vietnam"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 237,
    "question":
    "\"Semana Santa\" (Holy Week) is widely celebrated in which country?",
    "options": ["Spain", "Italy", "Mexico", "Brazil"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 238,
    "question": "The \"Pushkar Camel Fair\" is held annually in which country?",
    "options": ["India ", "Pakistan", "Bangladesh", "Nepal"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 239,
    "question":
    "\"Carnival of Ivrea,\" known for its Battle of Oranges, is celebrated in which country?",
    "options": ["France", "Spain", "Portugal", "Italy"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 240,
    "question":
    "Which country celebrates the \"Bonfire Night\" or \"Guy Fawkes Night\"?",
    "options": ["United States", "Canada", "United Kingdom", "Ireland"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 241,
    "question":
    "The \"Fallas Festival,\" famous for its massive sculptures, takes place in which city?",
    "options": ["Madrid", "Barcelona", "Valencia", "Seville"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 242,
    "question":
    "\"Carnival of Quebec\" is a winter festival celebrated in which country?",
    "options": ["Canada", "United States", "France", "Belgium"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 243,
    "question": "Which country celebrates the \"National Day of Norway\"?",
    "options": ["Denmark", "Sweden", "Finland", "Norway"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 244,
    "question":
    "\"Hanami\" is the tradition of flower viewing in which country?",
    "options": ["Japan", "China", "South Korea", "Vietnam"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 245,
    "question": "Which country celebrates \"Carnaval de Barranquilla\"?",
    "options": ["Brazil", "Colombia", "Venezuela", "Ecuador"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 246,
    "question":
    "The \"Song and Dance Festival\" is held every five years in which Baltic country?",
    "options": ["Estonia", "Lithuania", "Latvia", "Poland"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 247,
    "question":
    "\"Día de la Raza\" or \"Day of the Race\" is celebrated in which region?",
    "options": ["North America", "Europe", "Latin America", "Southeast Asia"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 248,
    "question":
    "Which country celebrates the \"Spring Festival,\" also known as Chinese New Year?\n",
    "options": ["Japan", "China", "South Korea", "Taiwan"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 249,
    "question":
    "The \"Lòi Krathong\" festival of lights is celebrated in which country?",
    "options": ["Laos", "Vietnam", "Thailand", "Cambodia"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 250,
    "question": "Where is the \"Spoleto Festival\" held, focusing on the arts?",
    "options": [" France", "Italy", "Spain", "Portugal"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 251,
    "question":
    "The \"Čechia Harvest Festival\" celebrates autumn traditions in which country?\n",
    "options": [" Czech Republic", "Slovakia", "Hungary", "Austria"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 252,
    "question":
    "Which country celebrates \"White Nights Festival,\" a summer event?",
    "options": ["Norway", "Sweden", "Russia", "Finland"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 253,
    "question":
    "\"Venice Film Festival,\" the oldest of its kind, is held in which country?",
    "options": ["France", "Italy", "Spain", "Germany"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 1
  },
  {
    "id": 254,
    "question": "Which country celebrates the harvest festival \"Chuseok\"?",
    "options": ["Japan", "South Korea", "China", "Vietnam"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 255,
    "question":
    "\"Inti Raymi,\" the Festival of the Sun, is celebrated in which country?",
    "options": ["Bolivia", "Peru", "Ecuador", "Chile"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 256,
    "question":
    "\"Junkanoo,\" a traditional street parade, is celebrated in which country?",
    "options": ["Jamaica", "Trinidad and Tobago", "Bahamas", "Barbados"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 257,
    "question":
    "The \"Timkat Festival\" celebrates Epiphany in which African country?",
    "options": ["Sudan", "Kenya", "Ethiopia", "Eritrea"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 258,
    "question": "Which country is known for the festival \"Nowruz\"?",
    "options": ["Afghanistan", "Iran", "Iraq", "Turkey"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 259,
    "question":
    "\"Pahiyas Festival,\" known for its colorful displays, is celebrated in which country?",
    "options": ["Malaysia", "Philippines", "Indonesia", "Thailand"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 260,
    "question":
    "The \"Obando Fertility Rites\" is a unique festival in which country?",
    "options": [" India", "Sri Lanka", "Philippines", "Indonesia"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 261,
    "question":
    "The \"Harbin Ice Festival\" is held annually in which country?",
    "options": ["South Korea", "Japan", "Russia", "China"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 262,
    "question": "\"Songkran\" is associated with which traditional New Year?",
    "options": [
      "Burmese New Year",
      "Khmer New Year",
      "Lao New Year",
      "Thai New Year"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 263,
    "question":
    "\"Carnival Tuesday\" is most famously celebrated in which country?",
    "options": ["Trinidad and Tobago", "Venezuela", "Brazil", "Colombia"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 264,
    "question": "The \"Pushkar Camel Fair\" is celebrated in which country?",
    "options": ["Afghanistan", "India", "Pakistan", "Iran"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 265,
    "question":
    "Which country celebrates the \"Holi Hai Festival of Colors\"?\n",
    "options": ["India", "Bangladesh", "Nepal", "Sri Lanka"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 266,
    "question":
    "\"Golden Eagle Festival\" is an event that celebrates hunting traditions in which country?",
    "options": ["Kazakhstan", "Russia", "Mongolia", "Kyrgyzstan"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 267,
    "question":
    "The 'Loi Krathong' festival is celebrated by floating what on water?\n",
    "options": ["Boats", "Lanterns", "Candles", "Flowers"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 268,
    "question":
    "The 'Day of Silence' or 'Nyepi' is observed in which country?\n",
    "options": ["Malaysia", "Thailand", "Indonesia", "Philippines"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 269,
    "question": "Where is the 'Maslenitsa Festival' held?\n",
    "options": ["Ukraine", "Poland", "Russia", "Belarus"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 270,
    "question": "Which country celebrates 'Carnival de Barranquilla'?\n",
    "options": ["Ecuador", "Venezuela", "Brazil", "Colombia"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 271,
    "question":
    "'Seollal,' the Lunar New Year, is a major holiday in which country?\n",
    "options": ["Vietnam", "China", "Japan", "South Korea"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 272,
    "question":
    "'Vesak,' the celebration of Buddha's birth, is celebrated in which country?\n",
    "options": ["Sri Lanka", "Myanmar", "Thailand", "India"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 273,
    "question": "The 'Obon Festival' in Japan celebrates what?\n",
    "options": [
      "Harvest",
      "Ancestral spirits",
      "Cherry blossoms",
      "Buddha's enlightenment"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 274,
    "question": "'Carnival of Venice' is famous for its:\n",
    "options": [
      "Masked balls",
      "Fireworks displays",
      "Boat races",
      "Dance competitions"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 275,
    "question": "The 'Oktoberfest' festival originated in which German city?\n",
    "options": ["Berlin", "Hamburg", "Munich", "Frankfurt"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 276,
    "question":
    "'Lunar New Year' is widely celebrated in East Asia. Which zodiac animal starts the cycle?\n",
    "options": ["Rat", "Ox", "Tiger", "Rabbit"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 277,
    "question":
    "'Seollal,' the Lunar New Year festival, is celebrated in which country?\n",
    "options": ["South Korea", "China", "Vietnam", "Japan"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 278,
    "question":
    "'Golden Week' is a collection of holidays celebrated in which country?\n",
    "options": ["Japan", "South Korea", "China", "Taiwan"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 279,
    "question":
    "Which festival involves the tradition of building and floating large paper lanterns on water?\n",
    "options": [
      "Loi Krathong",
      "Carnival of Venice",
      "Day of the Dead",
      "Oktoberfest"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 280,
    "question":
    "'Feria de Abril,' a spring fair, is celebrated in which Spanish city?\n",
    "options": ["Barcelona", "Valencia", "Madrid", "Seville"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 281,
    "question": "'Carnival of Quebec' is famous for featuring which mascot?\n",
    "options": ["Snowman", "Fire dragon", "Ice queen", "Lantern bearer"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 282,
    "question": "The 'Boryeong Mud Festival' is held in which country?\n",
    "options": ["South Korea", "China", "Japan", "Vietnam"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 283,
    "question":
    "Which South American country celebrates the 'Fiesta de la Vendimia,' a festival focused on grape harvest?\n",
    "options": ["Argentina", "Chile", "Peru", "Brazil"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 284,
    "question":
    "The 'Baisakhi Festival' is associated with the harvest in which country?\n",
    "options": ["Pakistan", "India", "Nepal", "Bangladesh"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 285,
    "question": "The 'Bastille Day' is celebrated annually in which country?\n",
    "options": ["Spain", "Italy", "Germany", "France"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 286,
    "question":
    "The 'Diwali' festival, known as the festival of lights, is celebrated primarily by which religion?\n",
    "options": ["Islam", "Hinduism", "Buddhism", "Sikhism"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 287,
    "question": "The 'Obon Festival,' a Japanese tradition, celebrates what?\n",
    "options": [
      "Harvest season",
      "Ancestral spirits",
      "Cherry blossoms",
      "Buddha's enlightenment"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 288,
    "question":
    "'Semana Santa' or Holy Week is most elaborately celebrated in which country?\n",
    "options": ["Brazil", "Mexico", "Spain", "Argentina"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 289,
    "question":
    "The 'Lunar New Year' is widely celebrated in East Asia. Which zodiac animal starts the cycle?\n",
    "options": ["Rat", "Ox", "Tiger", "Rabbit"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 290,
    "question": "'Carnival of Venice' is famous for its:\n",
    "options": [
      "Fireworks displays",
      "Masked balls",
      "Boat races",
      "Dance competitions"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 291,
    "question":
    "The 'Sapporo Snow Festival' is held annually in which country?\n",
    "options": ["Japan", "South Korea", "China", "Mongolia"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 292,
    "question": "The 'Carnival of Quebec' features which iconic figure?\n",
    "options": ["Snowman mascot", "Fire dragon", "Ice queen", "Lantern bearer"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 293,
    "question":
    "'Feria de Abril,' a spring fair, is celebrated in which Spanish city?\n",
    "options": ["Barcelona", "Valencia", "Madrid", "Seville"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 294,
    "question":
    "Which country celebrates the 'Spring Festival' as its most significant holiday?\n",
    "options": ["Japan", "Vietnam", "China", "South Korea"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 295,
    "question": "'Golden Week' holiday period occurs in which country?\n",
    "options": ["Vietnam", "South Korea", "Japan", "Taiwan"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 296,
    "question":
    "'Lożi Krathong' involves floating small boats made of what material?\n",
    "options": ["Wood", "Banana leaves", "Paper", "Plastic"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 297,
    "question":
    "The 'Carnival of Barranquilla' is a UNESCO-recognized festival in which country?\n",
    "options": ["Venezuela", "Ecuador", "Colombia", "Peru"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 298,
    "question":
    "'Inti Raymi,' celebrated in Cusco, pays homage to which deity?\n",
    "options": ["Rain god", "Sun god", "Earth goddess", "Sky god"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 299,
    "question":
    "The 'Song Festival' is a national event in which Baltic country?\n",
    "options": ["Estonia", "Lithuania", "Latvia", "Finland"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 300,
    "question": "The 'Pushkar Camel Fair' in India is known for:\n",
    "options": [
      "Racing camels",
      "Camel trading",
      "Camel beauty contests",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 301,
    "question": "The 'Fallas Festival' in Valencia ends with:\n",
    "options": [
      "A grand parade",
      "A fireworks display",
      "Burning of sculptures",
      "A music concert"
    ],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 302,
    "question": "'Hanami' in Japan refers to viewing what?\n",
    "options": ["Fireworks", "Cherry blossoms", "Lanterns", "Birds"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 303,
    "question":
    "The 'Midsummer Festival' is prominently celebrated in which Scandinavian country?\n",
    "options": ["Norway", "Sweden", "Denmark", "Finland"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 304,
    "question": "Which country celebrates 'Bastille Day' on July 14th?\n",
    "options": ["Belgium", "Luxembourg", "France", "Monaco"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 305,
    "question":
    "'Krampusnacht,' a unique tradition, originated in which country?\n",
    "options": ["Austria", "Germany", "Switzerland", "Hungary"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 306,
    "question":
    "Which country celebrates 'White Nights Festival' during the summer solstice?\n",
    "options": ["Russia", "Norway", "Sweden", "Finland"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 307,
    "question":
    "'Tet Nguyen Dan,' the Vietnamese New Year, is celebrated with:\n",
    "options": [
      "Fireworks and lanterns",
      "Water fights",
      "Kite flying",
      "Camel racing"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 308,
    "question":
    "The 'Highland Games' are a traditional festival in which country?\n",
    "options": ["Scotland", "Ireland", "Wales", "England"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 309,
    "question":
    "'Junkanoo' parades in the Bahamas are traditionally held on:\n",
    "options": [
      "Christmas Day and New Year’s Day",
      "Easter Sunday",
      "Carnival Monday",
      "Independence Day"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 310,
    "question": "The 'Carnival of Rio' is famous for its:\n",
    "options": [
      "Samba parades",
      "Food stalls",
      "Sports competitions",
      "Street performances"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 311,
    "question":
    "\"Golden Week\" in Japan combines multiple holidays. Which is NOT one of them?\n",
    "options": [
      "Showa Day",
      "Constitution Memorial Day",
      "Mountain Day",
      "Greenery Day"
    ],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 312,
    "question":
    "The \"Día de la Raza\" or \"Day of the Race\" celebrates cultural diversity in which region?\n",
    "options": [
      "Southeast Asia",
      "Latin America",
      "Eastern Europe",
      "North America"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 313,
    "question":
    "The \"Mid-Autumn Festival\" in China traditionally involves eating what?\n",
    "options": ["Dumplings", "Noodles", "Mooncakes", "Spring rolls"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 314,
    "question":
    "The \"Carnival of Venice\" traditionally ends before which religious observance?\n",
    "options": ["Easter", "Lent", "Advent", "Pentecost"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 315,
    "question":
    "\"Songkran,\" the Thai New Year, involves what unique activity?\n",
    "options": [
      "Throwing water",
      "Releasing lanterns",
      "Fireworks",
      "Planting trees"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 316,
    "question":
    "\"Sinulog Festival,\" held in Cebu, honors which Christian figure?\n",
    "options": [
      "Virgin Mary",
      "Santo Niño (Child Jesus)",
      "Saint Peter",
      "Saint Francis"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 317,
    "question":
    "The \"Dragon Boat Festival\" in China commemorates which historical figure?\n",
    "options": ["Confucius", "Qu Yuan", "Sun Tzu", "Liu Bang"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 318,
    "question":
    "Which flower is a symbol of the Japanese \"Hanami\" festival?\n",
    "options": ["Chrysanthemum", "Cherry blossom", "Lotus", "Plum blossom"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 319,
    "question":
    "The \"Midsummer Festival\" in Sweden typically features what activity?\n",
    "options": [
      "Dancing around a maypole",
      "Building bonfires",
      "Lantern lighting",
      "Eating mooncakes"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 320,
    "question":
    "The \"Nowruz\" festival marks the start of the new year in which calendar?\n",
    "options": [
      "Julian Calendar",
      "Persian Calendar",
      "Hebrew Calendar",
      "Islamic Calendar"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 321,
    "question":
    "\"Vesak,\" celebrating Buddha's birthday, is primarily observed in which country?\n",
    "options": ["Thailand", "Sri Lanka", "Myanmar", "Cambodia"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 322,
    "question":
    "The \"Carnival of Binche,\" known for its Gilles performers, is celebrated in which country?\n",
    "options": ["Belgium", "Netherlands", "France", "Switzerland"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 323,
    "question":
    "\"Bonfire Night\" or \"Guy Fawkes Night\" commemorates an event in which year?\n",
    "options": ["1588", "1605", "1649", "1707"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
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
    "difficulty": 2
  },
  {
    "id": 325,
    "question":
    "\"Boryeong Mud Festival\" in South Korea promotes what activity?\n",
    "options": [
      "Mud wrestling",
      "Mud baths",
      "Mud painting",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 326,
    "question":
    "The \"White Nights Festival\" in Russia is primarily celebrated in which city?\n",
    "options": ["Moscow", "Saint Petersburg", "Sochi", "Kazan"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 327,
    "question": "Which dance is iconic during Brazil's Carnival?\n",
    "options": ["Samba", "Tango", "Salsa", "Flamenco"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 328,
    "question":
    "The \"Golden Eagle Festival\" in Mongolia showcases what traditional activity?\n",
    "options": [
      "Horse racing",
      "Eagle hunting",
      "Archery contests",
      "Wrestling matches"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 329,
    "question":
    "The \"Lantern Festival\" in China marks the end of which celebration?\n",
    "options": [
      "Spring Festival",
      "Harvest Festival",
      "Mid-Autumn Festival",
      "Double Ninth Festival"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 2
  },
  {
    "id": 330,
    "question":
    "\"Lunar New Year\" originated in which ancient Chinese dynasty?\n",
    "options": ["Tang", "Han", "Zhou", "Ming"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 331,
    "question":
    "The \"Thaipusam\" festival, involving body piercings as a form of devotion, is celebrated in which country?\n",
    "options": ["India", "Malaysia", "Sri Lanka", "Singapore"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 332,
    "question":
    "The \"Kalash Festival,\" honoring deities in Greek-inspired rituals, is celebrated in which region?\n",
    "options": ["Pakistan", "Afghanistan", "India", "Iran"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 333,
    "question":
    "The \"Día de San Fermín,\" which includes bull running, is celebrated in which city?\n",
    "options": ["Seville", "Valencia", "Pamplona", "Madrid"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 334,
    "question":
    "The \"Pushkar Camel Fair\" in India is held in which Indian state?\n",
    "options": ["Rajasthan", "Gujarat", "Uttar Pradesh", "Madhya Pradesh"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 335,
    "question":
    "\"Inti Raymi,\" the Incan Festival of the Sun, is held at which historic site?\n",
    "options": [
      "Machu Picchu",
      "Sacsayhuamán",
      "Cusco Cathedral",
      "Sacred Valley"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 336,
    "question":
    "Which Persian king is associated with the origins of \"Nowruz\"?\n",
    "options": ["Darius the Great", "Cyrus the Great", "Xerxes", "Artaxerxes"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 337,
    "question":
    "\"Carnival of Ivrea,\" a festival involving an orange-throwing battle, is held in which region of Italy?\n",
    "options": ["Lombardy", "Piedmont", "Veneto", "Emilia-Romagna"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 338,
    "question":
    "The \"Golden Eagle Festival\" is celebrated by which ethnic group in Mongolia?\n",
    "options": ["Khalkha Mongols", "Kazakhs", "Uzbeks", "Buryats"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 339,
    "question":
    "\"Bon Om Touk,\" Cambodia's Water Festival, celebrates what natural phenomenon?\n",
    "options": [
      "Reverse flow of the Tonle Sap River",
      "Monsoon season ending",
      "Mekong River flooding",
      "Lunar eclipse"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 340,
    "question":
    "Which ancient Mayan city is the focal point of the \"Equinox Festival\"?\n",
    "options": ["Tikal", "Chichen Itza", "Copan", "Palenque"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 341,
    "question": "\"Krampusnacht\" is celebrated on which date?\n",
    "options": ["December 5", "December 6", "December 24", "January 6"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 342,
    "question":
    "The \"Midsummer Festival\" in Latvia is traditionally called:\n",
    "options": ["Jani", "Kupala", "Ligo", "Saulgriezi"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 343,
    "question":
    "The \"Timkat Festival\" in Ethiopia reenacts which biblical event?\n",
    "options": ["Baptism of Jesus", "Last Supper", "Resurrection", "Exodus"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 344,
    "question":
    "\"Tet,\" the Vietnamese Lunar New Year, features which traditional food?\n",
    "options": [
      "Banh Tet (sticky rice cake)",
      "Pho (noodle soup)",
      "Goi Cuon (spring rolls)",
      "Xoi (sticky rice)"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 345,
    "question":
    "\"Gion Matsuri\" in Kyoto is celebrated with large floats called:\n",
    "options": ["Yamaboko", "Mikoshi", "Dashi", "Omikoshi"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 346,
    "question":
    "The \"Rose Festival\" in Bulgaria is celebrated in which valley?\n",
    "options": [
      "Thracian Valley",
      "Valley of Roses",
      "Danube Plain",
      "Maritsa Basin"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 347,
    "question": "The \"Obon Festival\" in Japan includes the custom of:\n",
    "options": [
      "Lighting lanterns to guide spirits",
      "Firewalking",
      "Kite flying",
      "Releasing water lilies"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 348,
    "question":
    "\"Carnaval de Negros y Blancos\" in Colombia originated in which city?\n",
    "options": ["Pasto", "Cali", "Medellin", "Bogota"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 349,
    "question":
    "\"White Nights Festival,\" celebrated during the summer solstice, occurs in which city?\n",
    "options": ["Moscow", "Helsinki", "Saint Petersburg", "Oslo"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 350,
    "question": "The \"Lozi Kuomboka Festival\" in Zambia celebrates what?\n",
    "options": [
      "End of the rainy season",
      "Beginning of the harvest",
      "Migration of animals",
      "Coronation of the king"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 351,
    "question": "\"Nowruz\" is celebrated in which mountain range?\n",
    "options": [
      "Caucasus Mountains",
      "Alborz Mountains",
      "Pamir Mountains",
      "Zagros Mountains"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 352,
    "question": "The \"Lunar New Year\" dragon dance symbolizes:\n",
    "options": [
      "Wealth and prosperity",
      "Protection from evil spirits",
      "Good harvest",
      "Long life"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 353,
    "question":
    "The \"Carnival of Binche\" in Belgium features performers dressed as:\n",
    "options": ["Clowns", "Gilles", "Jesters", "Harlequins"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 354,
    "question":
    "\"Inti Raymi,\" the Festival of the Sun, aligns with which celestial event?\n",
    "options": [
      "Summer solstice",
      "Winter solstice",
      "Spring equinox",
      "Autumn equinox"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 355,
    "question":
    "The \"Loy Krathong\" festival in Thailand involves floating what in rivers?\n",
    "options": [
      "Banana-leaf boats",
      "Candles in jars",
      "Paper lanterns",
      "Wooden carvings"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 356,
    "question":
    "The \"Día de Muertos\" (Day of the Dead) altar includes what traditional element?\n",
    "options": ["Sugar skulls", "Candles", "Marigolds", "All of the above"],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 357,
    "question": "The \"Up Helly Aa\" fire festival in Scotland celebrates:\n",
    "options": [
      "Viking heritage",
      "Harvest season",
      "Winter solstice",
      "Scottish independence"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 358,
    "question": "\"Krampusnacht\" is celebrated in which Alpine region?\n",
    "options": ["Bavaria", "Tirol", "Salzburg", "Carinthia"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 359,
    "question": "\"Bon Om Touk,\" Cambodia's Water Festival, coincides with:\n",
    "options": [
      "Lunar eclipse",
      "End of monsoon season",
      "Reverse flow of Tonle Sap River",
      "Mekong River flood"
    ],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 360,
    "question": "Which city hosts the \"Golden Eagle Festival\"?\n",
    "options": ["Ulaanbaatar", "Bayan-Ölgii", "Erdenet", "Darkhan"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 361,
    "question": "\"Semana Santa\" in Guatemala is famous for:\n",
    "options": [
      "Intricate carpets made of sawdust and flowers",
      "Flamenco performances",
      "Bullfighting events",
      "Candle-lit processions"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 362,
    "question": "The \"Spring Equinox Festival\" at Chichen Itza features:\n",
    "options": [
      "Shadows forming a serpent on the pyramid",
      "Sunrise aligning with temple windows",
      "Ritual dances at dawn",
      "Stars forming constellations on the temple"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 363,
    "question": "\"Fallas Festival\" in Valencia concludes with:\n",
    "options": [
      "Burning large sculptures",
      "Lantern releases",
      "Firewalking ceremonies",
      "Parades through the city"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 364,
    "question":
    "The \"Boryeong Mud Festival\" in South Korea originally promoted:\n",
    "options": [
      "Mud cosmetics",
      "Agricultural heritage",
      "Tourism along the coast",
      "Military traditions"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 365,
    "question": "The \"Gion Matsuri\" in Kyoto is one of the:\n",
    "options": [
      "Oldest festivals in Japan",
      "New Year celebrations",
      "Summer solstice rituals",
      "Religious processions"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 366,
    "question": "\"Golden Week\" in Japan includes how many public holidays?\n",
    "options": ["3", "4", "5", "6"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 367,
    "question": "The \"Kalash Festival\" in Pakistan is unique due to its:\n",
    "options": [
      "Polytheistic roots",
      "Greek cultural influences",
      "Focus on nature worship",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 368,
    "question": "\"Hanukkah\" is celebrated for how many nights?\n",
    "options": ["6", "7", "8", "9"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 369,
    "question": "The \"Venice Film Festival\" was first held in what year?\n",
    "options": ["1930", "1932", "1934", "1936"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 370,
    "question":
    "The \"Obon Festival\" in Japan includes the custom of sending floating lanterns down rivers. What does this symbolize?\n",
    "options": [
      "Letting go of grief",
      "Guiding ancestral spirits",
      "Celebrating harvests",
      "Offering prayers for prosperity"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 371,
    "question":
    "The \"Timkat Festival\" in Ethiopia is a reenactment of which sacrament?\n",
    "options": ["Baptism", "Communion", "Marriage", "Anointing"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 372,
    "question":
    "The \"Golden Eagle Festival\" in Mongolia takes place during which season?\n",
    "options": ["Spring", "Summer", "Fall", "Winter"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 373,
    "question":
    "\"Krampusnacht\" is celebrated in conjunction with which feast day?\n",
    "options": [
      "Saint Nicholas Day",
      "All Saints' Day",
      "Christmas Eve",
      "Epiphany"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 374,
    "question":
    "The \"Carnival of Binche\" in Belgium is recognized by UNESCO as what type of heritage?\n",
    "options": [
      "Tangible Cultural Heritage",
      "Intangible Cultural Heritage",
      "Natural World Heritage",
      "Historical Heritage"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 375,
    "question":
    "\"Inti Raymi,\" celebrated in Cusco, Peru, takes place on what date?\n",
    "options": ["June 21", "June 24", "July 1", "July 4"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 376,
    "question":
    "The \"White Nights Festival\" in Saint Petersburg, Russia, celebrates what natural phenomenon?\n",
    "options": [
      "Midnight sun",
      "Aurora borealis",
      "Total lunar eclipse",
      "Halley's comet"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 377,
    "question":
    "The \"Spring Festival\" in China marks the start of which traditional calendar?\n",
    "options": [
      "Solar calendar",
      "Lunisolar calendar",
      "Gregorian calendar",
      "Buddhist calendar"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 378,
    "question":
    "\"Songkran,\" the Thai New Year, traditionally lasts how many days?\n",
    "options": ["2", "3", "4", "5"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 379,
    "question":
    "The \"Día de Muertos\" (Day of the Dead) combines indigenous beliefs with which religion?\n",
    "options": ["Christianity", "Judaism", "Buddhism", "Islam"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 380,
    "question":
    "The \"Lozi Kuomboka Festival\" in Zambia involves moving the king to higher ground. What is the mode of transportation?\n",
    "options": ["Rafts", "Canoes", "Royal barges", "Elephants"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 381,
    "question":
    "The \"Maslenitsa Festival\" in Russia is known for what culinary tradition?\n",
    "options": [
      "Baking pancakes",
      "Eating dumplings",
      "Drinking kvass",
      "Roasting meat"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 382,
    "question":
    "The \"Carnaval de Negros y Blancos\" in Colombia symbolizes what?\n",
    "options": [
      "Racial unity and equality",
      "Agricultural abundance",
      "Indigenous heritage",
      "Political freedom"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 383,
    "question":
    "\"Vesak,\" celebrated in Sri Lanka, Thailand, and other Buddhist countries, commemorates what?\n",
    "options": [
      "Birth, enlightenment, and death of Buddha",
      "Buddha's ascension to heaven",
      "Buddha's first sermon",
      "The spread of Buddhism to Sri Lanka"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 384,
    "question":
    "The \"Up Helly Aa\" fire festival in Scotland culminates in what?\n",
    "options": [
      "Burning a Viking longship",
      "A torch-lit march",
      "Fire juggling performances",
      "Setting bonfires along cliffs"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 385,
    "question":
    "\"Nowruz,\" the Persian New Year, is traditionally celebrated with what symbolic activity?\n",
    "options": [
      "Jumping over fire",
      "Releasing birds",
      "Planting trees",
      "Writing wishes on paper"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 386,
    "question":
    "The \"Midsummer Festival\" in Latvia features wreaths made of:\n",
    "options": ["Birch leaves", "Oak leaves", "Straw", "Lavender"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 387,
    "question": "The \"Rose Festival\" in Bulgaria occurs in which month?\n",
    "options": ["April", "May", "June", "July"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 388,
    "question":
    "\"Tet,\" the Vietnamese Lunar New Year, includes gifting what for good luck?\n",
    "options": [
      "Red envelopes with money",
      "Gold coins",
      "Fresh flowers",
      "Lanterns"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 389,
    "question": "The \"Golden Eagle Festival\" highlights which skill?\n",
    "options": ["Falconry", "Eagle hunting", "Horseback archery", "Wrestling"],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 390,
    "question":
    "The \"Fallas Festival\" in Valencia, Spain, is unique for its:\n",
    "options": [
      "Parade of giant puppets",
      "Burning of large sculptures",
      "Firewalking ceremonies",
      "Musical competitions"
    ],
    "answer_index": 1,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 391,
    "question":
    "The \"Lantern Festival\" in China coincides with which lunar event?\n",
    "options": ["Full moon", "New moon", "Eclipse", "Solstice"],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 392,
    "question": "The \"Diwali\" festival of lights celebrates what?\n",
    "options": [
      "Victory of light over darkness",
      "Harvest season",
      "Birth of Lord Krishna",
      "Arrival of spring"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 393,
    "question":
    "The \"Venice Film Festival\" is held on which Venetian island?\n",
    "options": ["Murano", "Burano", "Lido", "Torcello"],
    "answer_index": 2,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 394,
    "question":
    "\"Hanami,\" the Japanese cherry blossom viewing, symbolizes:\n",
    "options": [
      "Transience of life",
      "Prosperity and wealth",
      "Gratitude to ancestors",
      "Fertility and growth"
    ],
    "answer_index": 0,
    "category": "Culture",
    "difficulty": 3
  },
  {
    "id": 395,
    "question": "Which country built the Great Wall?",
    "options": ["China", "Egypt", "India", "Brazil"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 396,
    "question": "Who was the first President of the United States?",
    "options": [
      "Abraham Lincoln",
      "George Washington",
      "John Adams",
      "Thomas Jefferson"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 397,
    "question": "In which country would you find the Taj Mahal?",
    "options": ["Saudi Arabia", "India", "China", "Indonesia"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 398,
    "question": "The Eiffel Tower is a famous landmark in which country?",
    "options": ["Spain", "Italy", "France", "Belgium"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 399,
    "question": "Which country is known for the ancient pyramids at Giza?",
    "options": ["Egypt", "Mexico", "Peru", "Turkey"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 400,
    "question":
    "Which leader is commonly known as the 'Father of India' for nonviolent resistance?",
    "options": [
      "Winston Churchill",
      "Mahatma Gandhi",
      "Nelson Mandela",
      "Jawaharlal Nehru"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 401,
    "question":
    "Which country was famously led by Winston Churchill during World War II?",
    "options": ["France", "United Kingdom", "United States", "Germany"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 402,
    "question":
    "Who was known as the 'Iron Lady', serving as Prime Minister of the UK?",
    "options": [
      "Angela Merkel",
      "Margaret Thatcher",
      "Queen Victoria",
      "Theresa May"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 403,
    "question":
    "Which African country was never colonized by a European power?",
    "options": ["Liberia", "Ghana", "Kenya", "Ethiopia"],
    "answer_index": 3,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 404,
    "question": "Who was the U.S. president during most of the Civil War?",
    "options": [
      "George Washington",
      "Abraham Lincoln",
      "Theodore Roosevelt",
      "Ulysses S. Grant"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 405,
    "question": "Which country was led by Adolf Hitler during World War II?",
    "options": ["Germany", "Italy", "Russia", "Hungary"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 406,
    "question": "Which civilization constructed Machu Picchu in Peru?",
    "options": ["The Inca", "The Maya", "The Aztec", "The Olmec"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 407,
    "question": "In which city was John F. Kennedy assassinated (1963)?",
    "options": ["New York", "Dallas", "Miami", "Chicago"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 408,
    "question": "Who famously said, 'I have a dream,' in 1963?",
    "options": [
      "Nelson Mandela",
      "Martin Luther King Jr.",
      "John F. Kennedy",
      "Malcolm X"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 409,
    "question": "Which ancient civilization built the Colosseum?",
    "options": ["The Greeks", "The Romans", "The Persians", "The Babylonians"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 410,
    "question":
    "Which famous nurse was known as the 'Lady with the Lamp' in the Crimean War?",
    "options": [
      "Clara Barton",
      "Marie Curie",
      "Florence Nightingale",
      "Susan B. Anthony"
    ],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 411,
    "question": "Which country did Benito Mussolini lead as dictator?",
    "options": ["Spain", "Germany", "Italy", "Austria"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 412,
    "question": "Which empire was ruled by Pharaohs?",
    "options": [
      "Persian Empire",
      "Ottoman Empire",
      "Egyptian Empire",
      "Mongol Empire"
    ],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 413,
    "question":
    "Which country was known as the 'Jewel in the Crown' of the British Empire?",
    "options": ["Australia", "Canada", "South Africa", "India"],
    "answer_index": 3,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 414,
    "question":
    "Who was the principal author of the Declaration of Independence (USA)?",
    "options": [
      "Alexander Hamilton",
      "Thomas Jefferson",
      "James Madison",
      "Benjamin Franklin"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 415,
    "question": "Which country is associated with the Samurai warrior class?",
    "options": ["China", "Korea", "Japan", "Thailand"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 416,
    "question": "Which document begins with 'We the People'?",
    "options": [
      "The Bill of Rights",
      "Magna Carta",
      "The U.S. Constitution",
      "Declaration of Independence"
    ],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 417,
    "question": "Which empire built roads like the Appian Way?",
    "options": [
      "Roman Empire",
      "British Empire",
      "Ottoman Empire",
      "Mughal Empire"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 418,
    "question": "Which city was famously divided by a wall from 1961 to 1989?",
    "options": ["Berlin", "Moscow", "Rome", "Paris"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 419,
    "question":
    "Which revolution is associated with the storming of the Bastille (1789)?",
    "options": [
      "Russian Revolution",
      "French Revolution",
      "American Revolution",
      "Haitian Revolution"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 420,
    "question": "Who was the first man to step on the Moon?",
    "options": ["Yuri Gagarin", "Buzz Aldrin", "Neil Armstrong", "John Glenn"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 421,
    "question": "Which ancient civilization used cuneiform writing?",
    "options": ["Sumerians", "Egyptians", "Chinese", "Indus Valley"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 422,
    "question":
    "Which U.S. president famously said, 'The only thing we have to fear is fear itself'?",
    "options": [
      "Franklin D. Roosevelt",
      "Theodore Roosevelt",
      "John F. Kennedy",
      "Woodrow Wilson"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 423,
    "question": "Which country was formerly known as Persia?",
    "options": ["Iraq", "Iran", "Israel", "Syria"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 424,
    "question":
    "In which modern-day country were the ancient city-states of Athens and Sparta located?",
    "options": ["Turkey", "Italy", "Greece", "Cyprus"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 425,
    "question":
    "Who was known as the 'Sun King' and built the Palace of Versailles in France?",
    "options": ["Louis XIV", "Henry IV", "Napoleon Bonaparte", "Francis I"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 426,
    "question":
    "Which city was famously destroyed by a volcanic eruption in AD 79?",
    "options": ["Alexandria", "Pompeii", "Athens", "Carthage"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 427,
    "question":
    "Which political leader is associated with the term 'Iron Curtain' in post-WWII Europe?",
    "options": [
      "Franklin D. Roosevelt",
      "Joseph Stalin",
      "Winston Churchill",
      "Adolf Hitler"
    ],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 428,
    "question": "Which empire was ruled by Genghis Khan?",
    "options": [
      "Roman Empire",
      "Mongol Empire",
      "Russian Empire",
      "Byzantine Empire"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 429,
    "question": "Who discovered penicillin (1928)?",
    "options": [
      "Alexander Fleming",
      "Marie Curie",
      "Albert Einstein",
      "Louis Pasteur"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 430,
    "question":
    "Which country was the first to grant women the right to vote (1893)?",
    "options": ["Australia", "New Zealand", "Canada", "Finland"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 431,
    "question":
    "Which war took place between the North and South regions of the United States (1861–1865)?",
    "options": [
      "American Civil War",
      "Mexican-American War",
      "Revolutionary War",
      "War of 1812"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 432,
    "question":
    "Which civilization built the famous 'Hanging Gardens,' one of the Seven Wonders?",
    "options": ["Babylonians", "Assyrians", "Phoenicians", "Hittites"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 433,
    "question":
    "Who wrote the 'Communist Manifesto' alongside Friedrich Engels?",
    "options": ["Karl Marx", "Vladimir Lenin", "Joseph Stalin", "Leon Trotsky"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 434,
    "question":
    "Which country was divided into North and South after WWII, eventually reuniting in 1990?",
    "options": ["Vietnam", "Yugoslavia", "Germany", "Korea"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 435,
    "question":
    "Who led the Indian independence movement via nonviolent civil disobedience?",
    "options": [
      "Jawaharlal Nehru",
      "Mahatma Gandhi",
      "Subhas Chandra Bose",
      "Bhagat Singh"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 436,
    "question":
    "Which U.S. president was in office during the Louisiana Purchase (1803)?",
    "options": [
      "Thomas Jefferson",
      "George Washington",
      "John Adams",
      "James Madison"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 437,
    "question":
    "What was the last name of the brothers who pioneered the first successful airplane flight in 1903?",
    "options": ["Smith", "Edison", "Wright", "Bell"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 438,
    "question": "Which ancient civilization used hieroglyphics?",
    "options": ["Egyptians", "Romans", "Sumerians", "Persians"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 439,
    "question":
    "Which European explorer is credited with circumnavigating the globe first (though he died en route)?",
    "options": [
      "Christopher Columbus",
      "Vasco da Gama",
      "Ferdinand Magellan",
      "James Cook"
    ],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 440,
    "question": "Who is known for developing the theory of relativity (E=mc²)?",
    "options": ["Niels Bohr", "Nikola Tesla", "Albert Einstein", "Max Planck"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 441,
    "question": "Which country was previously ruled by the Tsars until 1917?",
    "options": ["Russia", "Germany", "Austria", "Turkey"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 442,
    "question":
    "Which ancient empire was famous for its well-organized Legions and roads?",
    "options": [
      "Mongol Empire",
      "Aztec Empire",
      "Roman Empire",
      "Persian Empire"
    ],
    "answer_index": 2,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 443,
    "question":
    "Which scientist is famous for the law of gravitation after an apple supposedly fell on his head?",
    "options": [
      "Isaac Newton",
      "Galileo Galilei",
      "Johannes Kepler",
      "Rene Descartes"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 444,
    "question":
    "Which country was part of the Axis Powers in WWII alongside Germany and Japan?",
    "options": ["Italy", "United Kingdom", "Spain", "France"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 1
  },
  {
    "id": 445,
    "question":
    "Who was the U.S. president during the majority of World War I?",
    "options": [
      "Woodrow Wilson",
      "Theodore Roosevelt",
      "Franklin D. Roosevelt",
      "Calvin Coolidge"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 446,
    "question": "Which country was known as the birthplace of the Renaissance?",
    "options": ["Germany", "France", "Italy", "England"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 447,
    "question":
    "The Boer Wars (late 19th–early 20th century) were fought in which region?",
    "options": ["South Africa", "Egypt", "Australia", "Morocco"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 448,
    "question":
    "Which English king had six wives, breaking from the Catholic Church to form the Church of England?",
    "options": ["Henry VII", "Henry VIII", "Richard III", "Charles I"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 449,
    "question":
    "Who discovered the sea route to India around the Cape of Good Hope (1498)?",
    "options": [
      "Vasco da Gama",
      "Bartolomeu Dias",
      "Francis Drake",
      "Ferdinand Magellan"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 450,
    "question":
    "Who was the first Emperor of a unified China, founding the Qin Dynasty?",
    "options": [
      "Sun Yat-sen",
      "Qin Shi Huang",
      "Emperor Gaozu",
      "Kangxi Emperor"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 451,
    "question": "In which war was the Battle of the Somme fought?",
    "options": [
      "World War II",
      "World War I",
      "Napoleonic Wars",
      "Crimean War"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 452,
    "question":
    "Who was the key revolutionary leader of Cuba, seizing power in 1959?",
    "options": [
      "Raúl Castro",
      "Che Guevara",
      "Fulgencio Batista",
      "Fidel Castro"
    ],
    "answer_index": 3,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 453,
    "question":
    "Which revolutionary is known for leading independence movements in South America (Gran Colombia)?",
    "options": [
      "Simón Bolívar",
      "Miguel Hidalgo",
      "José de San Martín",
      "Benito Juárez"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 454,
    "question":
    "Which ancient Mesopotamian ruler is known for a written code of laws?",
    "options": [
      "Sargon of Akkad",
      "Nebuchadnezzar II",
      "Hammurabi",
      "Ashurbanipal"
    ],
    "answer_index": 2,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 455,
    "question":
    "Which empire's downfall was marked by the capture of Constantinople in 1453?",
    "options": [
      "Byzantine Empire",
      "Persian Empire",
      "Russian Empire",
      "Holy Roman Empire"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 456,
    "question":
    "Who was the King of Macedonia that created a vast empire before dying at 32?",
    "options": [
      "Alexander the Great",
      "Philip II",
      "Darius III",
      "Antiochus III"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 457,
    "question": "Which country unified in 1871 under Otto von Bismarck?",
    "options": ["Germany", "Italy", "Austria-Hungary", "Greece"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 458,
    "question":
    "Which revolution in 1917 led to the creation of the Soviet Union?",
    "options": [
      "Chinese Revolution",
      "French Revolution",
      "Russian Revolution",
      "Mexican Revolution"
    ],
    "answer_index": 2,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 459,
    "question":
    "Who was the main author of the Declaration of the Rights of Woman and the Female Citizen (1791)?",
    "options": [
      "Mary Wollstonecraft",
      "Olympe de Gouges",
      "Marie Antoinette",
      "Charlotte Corday"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 460,
    "question":
    "Which Roman general became dictator for life before being assassinated in 44 BC?",
    "options": [
      "Julius Caesar",
      "Pompey",
      "Marcus Licinius Crassus",
      "Mark Antony"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 461,
    "question":
    "Which empire was based in Tenochtitlan (modern-day Mexico City)?",
    "options": ["Inca", "Mayan", "Aztec", "Toltec"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 462,
    "question":
    "Who was the first democratically elected President of South Africa (1994)?",
    "options": ["Nelson Mandela", "Jacob Zuma", "Thabo Mbeki", "Desmond Tutu"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 463,
    "question":
    "Which empire was centered on Constantinople, also known as Byzantium?",
    "options": [
      "Byzantine Empire",
      "Ottoman Empire",
      "Seljuk Empire",
      "Holy Roman Empire"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 464,
    "question": "Which war ended with the Treaty of Versailles (1919)?",
    "options": [
      "World War I",
      "Crimean War",
      "World War II",
      "Franco-Prussian War"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 465,
    "question":
    "Who was the final monarch of the Hawaiian Kingdom before U.S. annexation?",
    "options": [
      "King Kamehameha I",
      "Queen Ka‘ahumanu",
      "Queen Lili‘uokalani",
      "King Kalākaua"
    ],
    "answer_index": 2,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 466,
    "question":
    "Which Greek historian is often called the 'Father of History'?",
    "options": ["Herodotus", "Thucydides", "Plutarch", "Xenophon"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 467,
    "question":
    "Which empire's downfall was triggered by Francisco Pizarro's conquest in the 16th century?",
    "options": ["Inca Empire", "Aztec Empire", "Mayan Empire", "Mughal Empire"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 468,
    "question":
    "Which U.S. president authorized the use of the atomic bomb in WWII?",
    "options": [
      "Harry S. Truman",
      "Franklin D. Roosevelt",
      "Dwight D. Eisenhower",
      "Woodrow Wilson"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 469,
    "question": "Which sultan founded the Ottoman Empire around 1299?",
    "options": [
      "Suleiman the Magnificent",
      "Osman I",
      "Mehmed II",
      "Bayezid I"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 470,
    "question": "Who painted the ceiling of the Sistine Chapel in the Vatican?",
    "options": ["Michelangelo", "Leonardo da Vinci", "Raphael", "Titian"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 471,
    "question":
    "Which U.S. civil rights leader refused to give up her seat on a segregated bus (1955)?",
    "options": [
      "Rosa Parks",
      "Harriet Tubman",
      "Sojourner Truth",
      "Ella Baker"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 472,
    "question":
    "Which empire was known for its 'code of law' carved on a stela, discovered in Iran?",
    "options": ["Babylonian (Hammurabi)", "Assyrian", "Egyptian", "Hittite"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 473,
    "question":
    "Which event is often dated from 1095 to 1291 involving multiple religious military campaigns?",
    "options": [
      "The Crusades",
      "The Reconquista",
      "The Hundred Years' War",
      "The Punic Wars"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 474,
    "question":
    "Who overthrew the Provisional Government in Russia and led the Bolsheviks to power?",
    "options": [
      "Leon Trotsky",
      "Vladimir Lenin",
      "Joseph Stalin",
      "Nikita Khrushchev"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 475,
    "question":
    "Which Chinese dynasty was established after driving out the Mongol Yuan Dynasty in 1368?",
    "options": ["Han Dynasty", "Tang Dynasty", "Ming Dynasty", "Qing Dynasty"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 476,
    "question":
    "Who was the first female Prime Minister of the UK, serving from 1979 to 1990?",
    "options": [
      "Margaret Thatcher",
      "Theresa May",
      "Angela Merkel",
      "Queen Elizabeth II"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 477,
    "question":
    "Which event saw the Allied evacuation from France in WWII (1940)?",
    "options": [
      "Battle of Britain",
      "Evacuation of Dunkirk",
      "Operation Barbarossa",
      "Battle of Stalingrad"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 478,
    "question": "Which empire was ruled by Mansa Musa, famed for his wealth?",
    "options": [
      "Mali Empire",
      "Songhai Empire",
      "Ghana Empire",
      "Benin Empire"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 479,
    "question":
    "Which 19th-century German philosopher wrote 'Thus Spoke Zarathustra'?",
    "options": ["Karl Marx", "Friedrich Nietzsche", "Georg Hegel", "Max Weber"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 480,
    "question":
    "Who was the Aztec emperor at the time of the Spanish Conquest by Hernán Cortés?",
    "options": ["Montezuma II", "Cuauhtémoc", "Ahuitzotl", "Nezahualcoyotl"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 481,
    "question":
    "Which English queen's reign is known as the Elizabethan era (1558–1603)?",
    "options": ["Elizabeth I", "Elizabeth II", "Mary I", "Anne"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 482,
    "question":
    "Who seized power in France in 1799, later crowning himself Emperor in 1804?",
    "options": ["Robespierre", "Napoleon Bonaparte", "Louis XVI", "Talleyrand"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 483,
    "question":
    "Which conflict from 1955 to 1975 involved North and South factions in Southeast Asia?",
    "options": [
      "Korean War",
      "Vietnam War",
      "Cambodian Civil War",
      "Malayan Emergency"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 484,
    "question":
    "Which treaty ended World War I between Germany and the Allied Powers?",
    "options": [
      "Treaty of Versailles",
      "Treaty of Paris",
      "Treaty of Utrecht",
      "Treaty of Westphalia"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 485,
    "question":
    "Who wrote the Declaration of the Rights of Man and of the Citizen (1789) in revolutionary France?",
    "options": [
      "National Constituent Assembly",
      "Maximilien Robespierre",
      "Napoleon Bonaparte",
      "Georges Danton"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 486,
    "question":
    "Which Civil Rights leader delivered the 'Ballot or the Bullet' speech in 1964?",
    "options": [
      "Malcolm X",
      "Martin Luther King Jr.",
      "Medgar Evers",
      "Marcus Garvey"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 487,
    "question":
    "Which empire was known for its capital at Cusco and the site of Machu Picchu?",
    "options": ["Aztec Empire", "Mayan Empire", "Inca Empire", "Toltec Empire"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 488,
    "question":
    "Which dynasty was the last imperial dynasty of China, ending in 1912?",
    "options": ["Qing Dynasty", "Ming Dynasty", "Han Dynasty", "Tang Dynasty"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 489,
    "question":
    "Which event (1787–1799) drastically changed the political and social structure of France?",
    "options": [
      "French Revolution",
      "American Revolution",
      "Paris Commune",
      "Industrial Revolution"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 490,
    "question":
    "Which prime minister guided Britain to victory in WWII (1940–1945)?",
    "options": [
      "Winston Churchill",
      "Clement Attlee",
      "Neville Chamberlain",
      "Anthony Eden"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 491,
    "question":
    "Which reformer started the Protestant Reformation by nailing his '95 Theses' in 1517?",
    "options": ["John Calvin", "Martin Luther", "Ulrich Zwingli", "John Knox"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 492,
    "question": "Which civilization used the quipu system for record-keeping?",
    "options": ["Aztec", "Inca", "Maya", "Olmec"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 493,
    "question":
    "Who was known as the 'Maid of Orléans' and a key figure in the Hundred Years' War?",
    "options": [
      "Eleanor of Aquitaine",
      "Joan of Arc",
      "Catherine de' Medici",
      "Christine de Pizan"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 494,
    "question":
    "Which empire collapsed in 476 AD (often marking the start of the Middle Ages in Europe)?",
    "options": [
      "Roman Empire (Western)",
      "Egyptian Empire",
      "Maurya Empire",
      "Hittite Empire"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 2
  },
  {
    "id": 495,
    "question": "Which treaty ended the War of the Spanish Succession in 1713?",
    "options": [
      "Treaty of Utrecht",
      "Treaty of Paris",
      "Treaty of Versailles",
      "Treaty of Westphalia"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 496,
    "question":
    "Who was the founder of the Achaemenid Persian Empire (6th century BC)?",
    "options": ["Xerxes I", "Cyrus the Great", "Darius I", "Cambyses II"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 497,
    "question":
    "Which Chinese admiral led expansive maritime voyages for the Ming Dynasty (1405–1433)?",
    "options": ["Zhang Qian", "Zheng He", "Kangxi Emperor", "Hongwu Emperor"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 498,
    "question":
    "Which Holy Roman Emperor famously went on the Third Crusade, known as 'Barbarossa'?",
    "options": ["Frederick I", "Henry V", "Charles V", "Otto I"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 499,
    "question":
    "Which council (1545–1563) was a major part of the Counter-Reformation in the Catholic Church?",
    "options": [
      "Council of Nicaea",
      "Council of Trent",
      "Lateran Council",
      "Council of Constance"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 500,
    "question":
    "Which empire was established by Osman I, enduring until the early 20th century?",
    "options": [
      "Abbasid Caliphate",
      "Ottoman Empire",
      "Safavid Empire",
      "Timurid Empire"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 501,
    "question":
    "Which English king faced the Peasants' Revolt (1381) during his minority?",
    "options": ["Richard II", "Edward III", "Henry V", "John"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 502,
    "question":
    "Who launched the Hussite movement in Bohemia, leading to wars after his execution?",
    "options": ["Jan Hus", "John Wycliffe", "Martin Luther", "Jan Žižka"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 503,
    "question":
    "Which empire was ruled by Basil II, known as the 'Bulgar-Slayer' (10th–11th century)?",
    "options": [
      "Byzantine Empire",
      "Carolingian Empire",
      "Bulgarian Empire",
      "Kievan Rus"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 504,
    "question":
    "Which dynasty ruled the Frankish Kingdom and is associated with Charlemagne?",
    "options": [
      "Carolingian Dynasty",
      "Merovingian Dynasty",
      "Capetian Dynasty",
      "Ottonian Dynasty"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 505,
    "question":
    "Who led the army that conquered the Aztec Empire between 1519 and 1521?",
    "options": [
      "Francisco Pizarro",
      "Hernán Cortés",
      "Pedro de Alvarado",
      "Vasco Núñez de Balboa"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 506,
    "question":
    "Which treaty (1648) ended the Thirty Years' War, shaping modern Europe’s state system?",
    "options": [
      "Peace of Augsburg",
      "Treaty of Westphalia",
      "Treaty of Tordesillas",
      "Treaty of Nijmegen"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 507,
    "question":
    "Which empire expanded across the Middle East after Muhammad's death (632 AD)?",
    "options": [
      "Umayyad Caliphate",
      "Ottoman Empire",
      "Fatimid Caliphate",
      "Timurid Empire"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 508,
    "question":
    "Who was the founder of the Maurya Empire in ancient India (4th century BC)?",
    "options": [
      "Ashoka",
      "Bindusara",
      "Chandragupta Maurya",
      "Chandragupta II"
    ],
    "answer_index": 2,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 509,
    "question":
    "Which Mesoamerican civilization built the city of Chichén Itzá?",
    "options": ["Toltec", "Maya", "Olmec", "Aztec"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 510,
    "question":
    "Who was the King of Wessex that defended England against Viking invasions (9th century)?",
    "options": [
      "Æthelred the Unready",
      "Harold Godwinson",
      "Edward the Confessor",
      "Alfred the Great"
    ],
    "answer_index": 3,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 511,
    "question":
    "Which emperor famously converted to Christianity after the Battle of the Milvian Bridge (312 AD)?",
    "options": [
      "Constantine the Great",
      "Theodosius I",
      "Justinian I",
      "Diocletian"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 512,
    "question":
    "The 'An Lushan Rebellion' (755–763) occurred during which Chinese dynasty?",
    "options": ["Tang Dynasty", "Song Dynasty", "Han Dynasty", "Qing Dynasty"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 513,
    "question":
    "Which Persian polymath wrote 'The Book of Healing' and 'The Canon of Medicine'?",
    "options": ["Rumi", "Avicenna (Ibn Sina)", "Al-Farabi", "Omar Khayyam"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 514,
    "question":
    "Which city was the capital of the Abbasid Caliphate, founded in 762 AD?",
    "options": ["Baghdad", "Damascus", "Cairo", "Jerusalem"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 515,
    "question":
    "Which 16th-century queen reigned over both England and Ireland, known as the 'Virgin Queen'?",
    "options": ["Mary I", "Elizabeth I", "Anne Boleyn", "Mary II"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 516,
    "question":
    "Which treaty (1494) divided the New World between Spain and Portugal?",
    "options": [
      "Treaty of Zaragoza",
      "Treaty of Tordesillas",
      "Treaty of Alcáçovas",
      "Peace of Augsburg"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 517,
    "question":
    "Who was crowned Emperor of the Romans on Christmas Day in 800 AD by Pope Leo III?",
    "options": [
      "Pepin the Short",
      "Charlemagne",
      "Louis the Pious",
      "Charles the Bald"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 518,
    "question":
    "Which pharaoh attempted monotheistic worship of Aten, sometimes called the 'heretic pharaoh'?",
    "options": ["Ramses II", "Tutankhamun", "Akhenaten", "Hatshepsut"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 519,
    "question":
    "Who was the first emperor of the Eastern Roman (Byzantine) Empire, reigning from 395 to 408?",
    "options": ["Arcadius", "Justinian I", "Theodosius I", "Zeno"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 520,
    "question":
    "Which West African empire was known for Timbuktu as a major center of learning?",
    "options": [
      "Ghana Empire",
      "Songhai Empire",
      "Mali Empire",
      "Kanem-Bornu Empire"
    ],
    "answer_index": 2,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 521,
    "question":
    "Which British archaeologist discovered Tutankhamun's tomb in 1922?",
    "options": [
      "Heinrich Schliemann",
      "Howard Carter",
      "Arthur Evans",
      "Giovanni Belzoni"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 522,
    "question":
    "Which queen of Egypt was the last active ruler of the Ptolemaic Kingdom?",
    "options": ["Cleopatra VII", "Nefertiti", "Hatshepsut", "Arsinoe II"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 523,
    "question":
    "Which Viking explorer is credited with reaching North America around AD 1000?",
    "options": [
      "Leif Erikson",
      "Erik the Red",
      "Harald Hardrada",
      "Bjorn Ironside"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 524,
    "question":
    "Who established the Yuan Dynasty in China, succeeding the Song Dynasty in 1279?",
    "options": ["Kublai Khan", "Genghis Khan", "Ogedei Khan", "Timur"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 525,
    "question": "Which English king oversaw the Domesday Book in 1086?",
    "options": [
      "Henry II",
      "William the Conqueror",
      "Edward the Confessor",
      "Stephen of Blois"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 526,
    "question":
    "Which 16th-century Mughal Emperor built the Taj Mahal for his wife?",
    "options": ["Babur", "Akbar", "Jahangir", "Shah Jahan"],
    "answer_index": 3,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 527,
    "question":
    "Which empire collapsed following the fall of its capital Tenochtitlan in 1521?",
    "options": ["Inca Empire", "Aztec Empire", "Mayan Empire", "Toltec Empire"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 528,
    "question":
    "Which King of England signed the Magna Carta at Runnymede in 1215?",
    "options": [
      "King John",
      "King Richard I",
      "King Henry III",
      "King Edward I"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 529,
    "question":
    "Which philosophical text is attributed to Laozi and foundational to Taoism?",
    "options": ["The Art of War", "I Ching", "Dao De Jing", "Analects"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 530,
    "question": "Who was crowned the first tsar of Russia in 1547?",
    "options": [
      "Ivan the Terrible (Ivan IV)",
      "Peter the Great",
      "Ivan III (the Great)",
      "Michael Romanov"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 531,
    "question":
    "Which epic poem recounts the Trojan War, traditionally attributed to Homer?",
    "options": ["The Odyssey", "The Iliad", "Aeneid", "Metamorphoses"],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 532,
    "question":
    "Who was the founder of the Mauritanian-based Almoravid dynasty (11th century)?",
    "options": [
      "Ibn Tumart",
      "Abdallah ibn Yasin",
      "Musa ibn Nusayr",
      "Muhammad ibn Abd al-Karim"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 533,
    "question":
    "Which Maya city in present-day Guatemala was one of the most powerful during the Classic Period?",
    "options": ["Palenque", "Chichén Itzá", "Copán", "Tikal"],
    "answer_index": 3,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 534,
    "question":
    "Which war (1642–1651) was fought between Royalists and Parliamentarians in England?",
    "options": [
      "English Civil War",
      "War of the Roses",
      "Anglo-Spanish War",
      "Nine Years' War"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 535,
    "question":
    "Which Carthaginian general led an army (and elephants) over the Alps to attack Rome?",
    "options": [
      "Hamilcar Barca",
      "Hannibal Barca",
      "Hasdrubal Barca",
      "Mago Barca"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 536,
    "question":
    "Which Islamic caliphate was the last major Arab caliphate before the Mongol invasion (1258)?",
    "options": [
      "Umayyad Caliphate",
      "Abbasid Caliphate",
      "Fatimid Caliphate",
      "Almoravid Dynasty"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 537,
    "question": "Who led the Norman Conquest of England in 1066?",
    "options": [
      "Robert the Bruce",
      "Harold Godwinson",
      "Henry II",
      "William the Conqueror"
    ],
    "answer_index": 3,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 538,
    "question":
    "Which grand prince of Moscow ended the Mongol yoke in Russia and was called 'the Great'?",
    "options": [
      "Ivan III",
      "Ivan IV",
      "Yaroslav the Wise",
      "Vladimir the Great"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 539,
    "question":
    "Which Mesoamerican civilization was known for the city of Teotihuacan?",
    "options": ["Olmec", "Zapotec", "Teotihuacano", "Mixtec"],
    "answer_index": 2,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 540,
    "question": "Which treaty (1701) began the War of the Spanish Succession?",
    "options": [
      "Grand Alliance Treaty",
      "Treaty of The Hague",
      "Treaty of Ryswick",
      "Act of Settlement"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 541,
    "question":
    "Which league was formed by city-states in ancient Greece to oppose Persia (5th century BC)?",
    "options": [
      "Archaean League",
      "Delian League",
      "Amphictyonic League",
      "Peloponnesian League"
    ],
    "answer_index": 1,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 542,
    "question":
    "Who founded the Goryeo Dynasty in the Korean peninsula (918 AD)?",
    "options": [
      "Taejo Wang Geon",
      "Sejong the Great",
      "Wang Kon",
      "Taejong Yi Bang-won"
    ],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 543,
    "question":
    "Which treaty ended the Great Northern War (1700–1721) between Russia and Sweden?",
    "options": [
      "Treaty of Oliva",
      "Peace of Aix-la-Chapelle",
      "Treaty of Utrecht",
      "Treaty of Nystad"
    ],
    "answer_index": 3,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 544,
    "question":
    "Which kingdom fought the Punic Wars against Rome (264–146 BC)?",
    "options": ["Carthage", "Macedonia", "Gaul", "Sparta"],
    "answer_index": 0,
    "category": "History",
    "difficulty": 3
  },
  {
    "id": 545,
    "question": "In which country is the Eiffel Tower found?",
    "options": ["Belgium", "Canada", "France", "Spain"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 546,
    "question": "On which continent can we visit the Great Pyramid of Giza?",
    "options": ["Asia", "South America", "Africa", "Europe"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 547,
    "question": "The Leaning Tower of Pisa is located in which country?",
    "options": ["Italy", "Portugal", "Romania", "Austria"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 548,
    "question": "Machu Picchu can be visited in which country?",
    "options": ["Bolivia", "Peru", "Colombia", "Ecuador"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 549,
    "question": "The Statue of Liberty stands in which country?",
    "options": ["United States", "Canada", "Mexico", "Brazil"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 550,
    "question": "In which country is the Taj Mahal?",
    "options": ["Pakistan", "Nepal", "India", "Bangladesh"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 551,
    "question":
    "Christ the Redeemer statue overlooks Rio de Janeiro in which country?",
    "options": ["Chile", "Brazil", "Argentina", "Venezuela"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 552,
    "question": "On which continent is Angkor Wat located?",
    "options": ["Asia", "Europe", "South America", "Africa"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 553,
    "question": "The Sydney Opera House can be visited in which country?",
    "options": ["New Zealand", "Australia", "Fiji", "England"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 554,
    "question": "Which country is home to Stonehenge?",
    "options": ["France", "Scotland", "Ireland", "England"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 555,
    "question": "Neuschwanstein Castle is found in which country?",
    "options": ["Germany", "Sweden", "Netherlands", "Denmark"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 556,
    "question": "Petra (the Rose City) is located in which country?",
    "options": ["Jordan", "Lebanon", "Iran", "Iraq"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 557,
    "question": "In which country can you explore the ancient site of Pompeii?",
    "options": ["Egypt", "Italy", "France", "Portugal"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 558,
    "question": "Which country is known for the Sagrada Familia in Barcelona?",
    "options": ["Spain", "Morocco", "Belgium", "Turkey"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 559,
    "question": "On which continent is Mount Rushmore located?",
    "options": ["Asia", "South America", "Europe", "United States"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 560,
    "question": "Which country has Chichen Itza, an ancient Mayan city?",
    "options": ["Honduras", "Belize", "Mexico", "Guatemala"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 561,
    "question": "The Brandenburg Gate is a historic monument in which country?",
    "options": ["Switzerland", "Czech Republic", "Germany", "Denmark"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 562,
    "question":
    "In which country is the Louvre Museum (with its glass pyramid)?",
    "options": ["Spain", "Germany", "Belgium", "France"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 563,
    "question":
    "On which continent can you visit the city of Marrakech (famous for its medina)?",
    "options": ["Asia", "Europe", "Africa", "South America"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 564,
    "question": "The Forbidden City is located in which country?",
    "options": ["China", "Japan", "South Korea", "Thailand"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 565,
    "question":
    "Which country is home to the Blue Mosque (Sultanahmet Mosque) in Istanbul?",
    "options": ["Greece", "Turkey", "Bulgaria", "Cyprus"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 566,
    "question": "In which country is the Parthenon found?",
    "options": ["Greece", "Tunisia", "Spain", "Malta"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 567,
    "question": "On which continent is Uluru (Ayers Rock) located?",
    "options": ["Africa", "South America", "Australia", "Asia"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 568,
    "question": "Which country features the famous Louvre Abu Dhabi museum?",
    "options": ["Qatar", "Kuwait", "United Arab Emirates", "Bahrain"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 569,
    "question": "In which country is the ancient city of Ephesus located?",
    "options": ["Turkey", "Egypt", "Jordan", "Israel"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 570,
    "question": "Which continent is home to the historic city of Timbuktu?",
    "options": ["Asia", "Africa", "North America", "Europe"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 571,
    "question":
    "Where can you visit the Palace of Westminster (Houses of Parliament)?",
    "options": ["United Kingdom", "Belgium", "Ireland", "France"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 572,
    "question": "The Blue Lagoon, a geothermal spa, is in which country?",
    "options": ["Sweden", "Iceland", "Norway", "Finland"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 573,
    "question":
    "Which country has the Great Wall, known for sections built during the Ming Dynasty?",
    "options": ["China", "South Korea", "Japan", "Mongolia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 574,
    "question":
    "On which continent would you find Mount Kilimanjaro (famous for trekking)?",
    "options": ["South America", "Asia", "Africa", "Europe"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 575,
    "question": "The Doge’s Palace is a major landmark in which country?",
    "options": ["Croatia", "Portugal", "Italy", "Greece"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 576,
    "question":
    "Where can you find the Charles Bridge, known for its baroque statues?",
    "options": ["Slovakia", "Czech Republic", "Austria", "Hungary"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 577,
    "question":
    "Which country houses the windmills of Kinderdijk (a UNESCO World Heritage Site)?",
    "options": ["Denmark", "Germany", "Netherlands", "Switzerland"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 578,
    "question":
    "On which continent can you explore the ruins of Great Zimbabwe?",
    "options": ["Africa", "Asia", "Europe", "South America"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 579,
    "question": "Buckingham Palace is located in which country?",
    "options": ["Poland", "Norway", "France", "England"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 580,
    "question": "Which continent features the iconic ancient city of Petra?",
    "options": ["Asia", "Africa", "South America", "Europe"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 581,
    "question":
    "The Temple of the Emerald Buddha (Wat Phra Kaew) is in which country?",
    "options": ["Myanmar", "Thailand", "Cambodia", "Laos"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 582,
    "question":
    "On which continent would you find the Moai statues on Easter Island?",
    "options": ["Europe", "Oceania (Austrailia)", "South America", "Asia"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 583,
    "question": "The Alhambra palace complex is located in which country?",
    "options": ["Portugal", "Spain", "Italy", "Morocco"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 584,
    "question":
    "Which country is known for its Tajik-based Silk Road city, Samarkand? (Trick: Samarkand is in...)",
    "options": ["Kyrgyzstan", "Uzbekistan", "Tajikistan", "Iran"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 585,
    "question":
    "On which continent is Victoria Falls, a major waterfall on the Zambezi River?",
    "options": ["Africa", "Asia", "North America", "Australia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 586,
    "question":
    "The city of Bruges, noted for medieval architecture, is in which country?",
    "options": ["France", "Sweden", "Germany", "Belgium"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 587,
    "question":
    "Which country contains the Golden Temple (Harmandir Sahib) in Amritsar?",
    "options": ["India", "Sri Lanka", "Pakistan", "Malaysia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 588,
    "question": "On which continent would you find the Acropolis of Athens?",
    "options": ["Africa", "Asia", "Europe", "South America"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 589,
    "question":
    "Where can we explore the famous Charles Bridge and Old Town Square?",
    "options": ["Czech Republic", "Belgium", "Austria", "Poland"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 590,
    "question": "Which country hosts the Palace of Versailles?",
    "options": ["Spain", "France", "Monaco", "Italy"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 591,
    "question": "On which continent is the ancient temple site of Borobudur?",
    "options": ["Asia", "Africa", "Europe", "Australia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 592,
    "question": "Edinburgh Castle is a historic fortress in which country?",
    "options": ["Wales", "Northern Ireland", "Scotland", "England"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 593,
    "question": "Which country is known for the iconic Golden Gate Bridge?",
    "options": ["United States", "Canada", "Mexico", "Costa Rica"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 594,
    "question":
    "On which continent will you find the Dead Sea, a famous salt lake?",
    "options": ["Asia", "Africa", "Australia", "Europe"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 1
  },
  {
    "id": 595,
    "question":
    "Himeji Castle, known as the 'White Heron Castle,' is in which country?",
    "options": ["China", "Taiwan", "Japan", "South Korea"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 596,
    "question":
    "The Alhambra palace in Granada was expanded during the Nasrid Dynasty. In which country is it located?",
    "options": ["Portugal", "Spain", "Morocco", "France"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 597,
    "question":
    "The Forbidden City in Beijing was mainly built during which dynasty’s era (14th–17th c.)?",
    "options": ["Tang Dynasty", "Ming Dynasty", "Qing Dynasty", "Yuan Dynasty"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 598,
    "question":
    "In which country is the rock fortress of Sigiriya, dating back to the 5th century?",
    "options": ["Sri Lanka", "India", "Bangladesh", "Cambodia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 599,
    "question":
    "Hagia Sophia in Istanbul served as a cathedral, then a mosque. Which empire built it originally (6th c.)?",
    "options": [
      "Byzantine Empire",
      "Ottoman Empire",
      "Roman Empire",
      "Seljuk Empire"
    ],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 600,
    "question":
    "Which country is home to Canterbury Cathedral, a major pilgrimage site since medieval times?",
    "options": ["Denmark", "Iceland", "Sweden", "United Kingdom"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 601,
    "question":
    "The ancient city of Persepolis was a ceremonial capital of the Achaemenid Empire, located in which modern country?",
    "options": ["Iraq", "Iran", "Syria", "Turkey"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 602,
    "question":
    "In which country is the Potala Palace, once the winter residence of the Dalai Lama?",
    "options": ["Bhutan", "India", "China", "Nepal"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 603,
    "question":
    "The Acropolis of Athens was significantly restored during the 5th century BC. Which civilization built it?",
    "options": ["Greek", "Roman", "Egyptian", "Persian"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 604,
    "question":
    "Which country is home to the fortified town of Carcassonne, known for medieval walls?",
    "options": ["Spain", "France", "Italy", "Switzerland"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 605,
    "question":
    "The city of Tikal, an ancient Mayan site, thrived between AD 200–900 in which modern country?",
    "options": ["Mexico", "Honduras", "Guatemala", "Belize"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 606,
    "question":
    "The Mezquita–Cathedral of Córdoba reflects Moorish architecture. In which country is it located?",
    "options": ["Egypt", "Spain", "Portugal", "Italy"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 607,
    "question":
    "Angkor Wat was constructed for the Khmer Empire. In which modern country is it found?",
    "options": ["Vietnam", "Laos", "Cambodia", "Myanmar"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 608,
    "question":
    "In which country can you explore Cappadocia, famous for its 'fairy chimneys' and rock-cut churches?",
    "options": ["Turkey", "Armenia", "Syria", "Georgia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 609,
    "question":
    "Which country contains the fortified Inca ruins at Sacsayhuamán near Cusco?",
    "options": ["Peru", "Bolivia", "Ecuador", "Colombia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 610,
    "question":
    "The Monastery of Rila, founded in the 10th century, is in which Balkan country?",
    "options": ["Serbia", "Bulgaria", "Romania", "Albania"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 611,
    "question":
    "The rock churches of Lalibela, carved from living rock, lie in which African country?",
    "options": ["Sudan", "Ethiopia", "Kenya", "Egypt"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 612,
    "question":
    "Which country features the medieval Buda Castle, overlooking the Danube River?",
    "options": ["Hungary", "Slovakia", "Austria", "Czech Republic"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 613,
    "question":
    "The City of Valletta, fortified in the 16th century by the Knights Hospitaller, is in which country?",
    "options": ["Cyprus", "Malta", "Greece", "Italy"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 614,
    "question":
    "Which empire built the 'Eternal City' of Tenochtitlan, now Mexico City?",
    "options": ["Aztec Empire", "Inca Empire", "Mayan Empire", "Olmec Empire"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 615,
    "question":
    "The Schönbrunn Palace, summer residence of the Habsburgs, is in which country?",
    "options": ["Germany", "Austria", "Hungary", "Liechtenstein"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 616,
    "question":
    "Which country’s capital includes the famous 'Gyeongbokgung Palace,' built in 1395?",
    "options": ["Japan", "South Korea", "China", "Thailand"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 617,
    "question":
    "The medieval Monastery of Alcobaça was founded in the 12th century in which country?",
    "options": ["Spain", "Portugal", "France", "Italy"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 618,
    "question":
    "Which country has the remarkable archaeological site of Leptis Magna, once part of the Roman Empire?",
    "options": ["Libya", "Algeria", "Tunisia", "Egypt"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 619,
    "question":
    "The 'Painted Monasteries of Bucovina' are found in which European country?",
    "options": ["Romania", "Ukraine", "Moldova", "Poland"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 620,
    "question":
    "Which country features the fortress of Masada, an ancient stronghold near the Dead Sea?",
    "options": ["Jordan", "Israel", "Syria", "Lebanon"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 621,
    "question":
    "Castel del Monte, built by Emperor Frederick II in the 13th century, is in which country?",
    "options": ["France", "Switzerland", "Monaco", "Italy"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 622,
    "question":
    "Which country is known for the Church of the Savior on Spilled Blood in St. Petersburg?",
    "options": ["Russia", "Finland", "Sweden", "Estonia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 623,
    "question":
    "Borobudur was built in the 8th/9th century under the Sailendra Dynasty in which country?",
    "options": ["Malaysia", "Indonesia", "Vietnam", "Brunei"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 624,
    "question":
    "Which country has the medieval Cliffside 'Hanging Monastery' near Mount Heng?",
    "options": ["China", "India", "Nepal", "Japan"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 625,
    "question":
    "The Roman Baths, constructed around natural hot springs, are in which country?",
    "options": ["France", "Italy", "United Kingdom", "Belgium"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 626,
    "question":
    "Which country’s ancient capital, Polonnaruwa, showcases impressive Sinhalese ruins?",
    "options": ["Sri Lanka", "India", "Cambodia", "Thailand"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 627,
    "question":
    "The fortifications of Kotor on the Adriatic coast lie in which European country?",
    "options": ["Croatia", "Montenegro", "Bosnia and Herzegovina", "Albania"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 628,
    "question": "Which empire built the world-famous Timbuktu mosques in Mali?",
    "options": [
      "Songhai Empire",
      "Mali Empire",
      "Ghana Empire",
      "Kanem-Bornu Empire"
    ],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 629,
    "question":
    "Which country is known for the old city of Yazd, famous for its windcatchers and Zoroastrian heritage?",
    "options": ["Egypt", "Iran", "Oman", "Iraq"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 630,
    "question":
    "The Mont-Saint-Michel Abbey, set on a tidal island, is in which country?",
    "options": ["France", "United Kingdom", "Spain", "Belgium"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 631,
    "question":
    "Where is the Emperor Qin Shi Huang’s Terracotta Army, created to guard his tomb?",
    "options": ["Thailand", "South Korea", "Japan", "China"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 632,
    "question":
    "Which country houses the Pope’s official residence, the Apostolic Palace (though it’s a city-state inside Rome)?",
    "options": ["Vatican City", "Italy", "Monaco", "Malta"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 633,
    "question":
    "St. Basil’s Cathedral, known for its colorful domes, is in which city and country?",
    "options": [
      "Minsk, Belarus",
      "Moscow, Russia",
      "Kiev, Ukraine",
      "Warsaw, Poland"
    ],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 634,
    "question":
    "The ancient city of Volubilis, with Roman ruins, is found in which modern African country?",
    "options": ["Algeria", "Morocco", "Tunisia", "Libya"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 635,
    "question":
    "Which country is home to the Pyramids of Teotihuacan, constructed centuries before the Aztecs?",
    "options": ["Guatemala", "Ecuador", "Mexico", "Peru"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 636,
    "question":
    "In which country do we find the Corinth Canal, first proposed in ancient times?",
    "options": ["Turkey", "Greece", "Bulgaria", "Albania"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 637,
    "question":
    "Which empire left the iconic Sanchi Stupa (2nd century BC) in modern-day India?",
    "options": [
      "Gupta Empire",
      "Maurya Empire",
      "Mughal Empire",
      "Chola Empire"
    ],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 638,
    "question":
    "The imposing fortress of Soroca is found along the Dniester River in which country?",
    "options": ["Moldova", "Ukraine", "Romania", "Slovakia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 639,
    "question":
    "Which country can you visit to see the palace of Knossos, linked with the Minoan civilization?",
    "options": ["Italy", "Greece", "Cyprus", "Malta"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 640,
    "question":
    "The ruined city of Petra was once capital of the Nabatean Kingdom. On which continent is it?",
    "options": ["Asia", "Africa", "Europe", "South America"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 641,
    "question":
    "Which country features the Bagan Archaeological Zone, with thousands of Buddhist temples?",
    "options": ["Myanmar", "Thailand", "Laos", "Cambodia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 642,
    "question":
    "The city of Fez, with its medieval medina, is a UNESCO site in which African country?",
    "options": ["Tunisia", "Morocco", "Algeria", "Egypt"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 643,
    "question":
    "In which country is Bran Castle, often linked to the Dracula legend?",
    "options": ["Serbia", "Bulgaria", "Romania", "Hungary"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 644,
    "question": "Mount Sinai (biblical reference) is in which modern country?",
    "options": ["Egypt", "Israel", "Jordan", "Saudi Arabia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 2
  },
  {
    "id": 645,
    "question":
    "Which country hosts Göbekli Tepe, an archaeological site predating Stonehenge?",
    "options": ["Iraq", "Turkey", "Syria", "Armenia"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 646,
    "question":
    "The Ajanta Caves (2nd c. BC to 6th c. AD) are rock-cut Buddhist monuments in which country?",
    "options": ["Sri Lanka", "Myanmar", "India", "Nepal"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 647,
    "question":
    "In which country can you find the medieval rock-hewn churches of Ivanovo, dating to the 13th/14th centuries?",
    "options": ["Croatia", "Bulgaria", "North Macedonia", "Serbia"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 648,
    "question":
    "Skellig Michael, an early Christian monastic site on a rugged island, lies off which country’s coast?",
    "options": ["Iceland", "Scotland", "Ireland", "Wales"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 649,
    "question":
    "Which country is home to Lalibela, a pilgrimage town with 11 monolithic churches?",
    "options": ["Ghana", "Ethiopia", "Kenya", "Sudan"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 650,
    "question":
    "The Valley of the Kings, where many Pharaohs were entombed, is found in which African nation?",
    "options": ["Egypt", "Sudan", "Ethiopia", "Libya"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 651,
    "question":
    "Sukhothai Historical Park, cradle of Thai civilization (13th c.), is in which country?",
    "options": ["Cambodia", "Thailand", "Malaysia", "Laos"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 652,
    "question":
    "In which modern country are the ancient cliff dwellings of Mesa Verde (Ancestral Puebloans)?",
    "options": ["Mexico", "United States", "Canada", "Guatemala"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 653,
    "question":
    "The Monastery of Ostrog, built into a cliff, is a key pilgrimage site in which Balkan country?",
    "options": [
      "Montenegro",
      "Serbia",
      "Bosnia and Herzegovina",
      "North Macedonia"
    ],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 654,
    "question":
    "Which country has the elaborate rock tombs of Myra, once part of ancient Lycia?",
    "options": ["Jordan", "Cyprus", "Turkey", "Greece"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 655,
    "question":
    "Timgad (Thamugadi), a Roman colonial town founded by Emperor Trajan, lies in which modern country?",
    "options": ["Italy", "Algeria", "Morocco", "Tunisia"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 656,
    "question":
    "Nan Madol, a ruined city built on artificial islets, is found in which Pacific island country?",
    "options": ["Fiji", "Micronesia", "Vanuatu", "Samoa"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 657,
    "question":
    "The rock-cut city of Uplistsikhe, dating from the 1st millennium BC, is in which Caucasus country?",
    "options": ["Armenia", "Georgia", "Azerbaijan", "Turkey"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 658,
    "question":
    "Which country features the 10th-century Brihadeeswarar Temple, built by Chola kings?",
    "options": ["Sri Lanka", "Bangladesh", "India", "Malaysia"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 659,
    "question":
    "The Painted Rock Shelter of Bhimbetka (Stone Age rock art) is found in which country?",
    "options": ["South Africa", "Australia", "Brazil", "India"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 660,
    "question":
    "In which country is the Derawar Fort, a large square fortress in the Cholistan Desert?",
    "options": ["Pakistan", "Iran", "Afghanistan", "Turkmenistan"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 661,
    "question":
    "The rock-hewn churches of Ivanovo are in the valley of the Roussenski Lom River, in which nation?",
    "options": ["Bulgaria", "Romania", "Serbia", "Moldova"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 662,
    "question":
    "Takht-e Soleyman, once an important Zoroastrian sanctuary, is found in which Middle Eastern country?",
    "options": ["Iraq", "Syria", "Iran", "Jordan"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 663,
    "question":
    "In which country can you visit Timbuktu, historically famed for Islamic scholarship?",
    "options": ["Niger", "Nigeria", "Chad", "Mali"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 664,
    "question":
    "The remote mountainous kingdom of Mustang, famous for Lo Manthang, is in which country?",
    "options": ["Nepal", "Bhutan", "India", "China"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 665,
    "question":
    "Which country has the Drakensberg mountain range with rock art by the San people?",
    "options": ["Tanzania", "South Africa", "Zimbabwe", "Mozambique"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 666,
    "question":
    "The Stone Spheres of the Diquís (pre-Columbian megalithic spheres) are found in which Central American nation?",
    "options": ["Costa Rica", "Honduras", "El Salvador", "Panama"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 667,
    "question":
    "The Citadel of Aleppo, a large medieval fortress, stands in which Middle Eastern country?",
    "options": ["Syria", "Lebanon", "Iraq", "Jordan"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 668,
    "question":
    "Pumapunku, part of the ancient Tiwanaku site, is found in which South American country?",
    "options": ["Peru", "Bolivia", "Chile", "Colombia"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 669,
    "question":
    "Vat Phou is a ruined Khmer Hindu temple complex in which Southeast Asian country?",
    "options": ["Thailand", "Vietnam", "Myanmar", "Laos"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 670,
    "question":
    "The Great Blue Hole, a giant marine sinkhole, is off the coast of which country?",
    "options": ["Honduras", "Belize", "Bahamas", "Cuba"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 671,
    "question":
    "Which country hosts the Kiyomizu-dera temple (dating from 778) in Kyoto?",
    "options": ["Japan", "China", "South Korea", "Taiwan"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 672,
    "question":
    "In which country is the medieval fortress of Rasnov, built by Teutonic Knights in the 13th c.?",
    "options": ["Romania", "Czech Republic", "Germany", "Poland"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 673,
    "question":
    "The Sacred City of Kandy, known for the Temple of the Tooth, is in which island nation?",
    "options": ["Maldives", "Sri Lanka", "Madagascar", "Mauritius"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 674,
    "question":
    "Tanah Lot, a rock formation home to a pilgrimage temple, is found off the coast of which country?",
    "options": ["Indonesia", "Malaysia", "Papua New Guinea", "Timor-Leste"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 675,
    "question":
    "In which country is the archaeological wonder of the Rock-Hewn Churches of Tigray?",
    "options": ["Sudan", "Ethiopia", "Nigeria", "Egypt"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 676,
    "question":
    "Rapa Nui National Park, known for the Moai statues, is part of which country’s territory?",
    "options": ["Chile", "Peru", "Argentina", "Ecuador"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 677,
    "question":
    "The Bandiagara Escarpment (Land of the Dogons) is in which West African country?",
    "options": ["Senegal", "Burkina Faso", "Niger", "Mali"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 678,
    "question":
    "Takht-i-Bahi, a Buddhist monastic complex from 1st c. AD, is in which modern country?",
    "options": ["Pakistan", "Afghanistan", "India", "Nepal"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 679,
    "question":
    "Which country hosts Lalish, a sacred site for the Yazidi faith?",
    "options": ["Iraq", "Syria", "Iran", "Armenia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 680,
    "question":
    "Djemila, a well-preserved Roman city in North Africa, is found in which country?",
    "options": ["Libya", "Tunisia", "Algeria", "Morocco"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 681,
    "question":
    "The medieval fortress of Chufut-Kale is perched atop cliffs in Crimea, controlled by which country?",
    "options": [
      "Ukraine (internationally recognized)",
      "Russia",
      "Belarus",
      "Georgia"
    ],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 682,
    "question":
    "Bagan, once the capital of a powerful Burmese kingdom (9th–13th c.), is in which nation?",
    "options": ["Thailand", "Laos", "Myanmar", "Vietnam"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 683,
    "question":
    "The Citadel of Erbil claims to be one of the oldest continuously inhabited sites. In which country?",
    "options": ["Iraq", "Syria", "Turkey", "Armenia"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 684,
    "question":
    "Rock-Hewn Churches of Ivanovo (13th c.) are found in which Eastern European country?",
    "options": ["Serbia", "Bulgaria", "Romania", "Moldova"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 685,
    "question":
    "Which country has Sigiriya, a rock fortress said to have been built by King Kasyapa (5th c.)?",
    "options": ["Sri Lanka", "Thailand", "India", "Nepal"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 686,
    "question":
    "Clonmacnoise, an early Christian site with ruins of a cathedral, stands in which country?",
    "options": ["Scotland", "Ireland", "Wales", "England"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 687,
    "question":
    "The Zabid Historic City (once a capital) is found in which Middle Eastern country on the Red Sea?",
    "options": ["Yemen", "Saudi Arabia", "Oman", "Eritrea"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 688,
    "question":
    "Which country claims the famed Painted Churches of Troodos, a UNESCO set of Byzantine churches?",
    "options": ["Cyprus", "Greece", "Turkey", "Bulgaria"],
    "answer_index": 0,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 689,
    "question":
    "Palenque, a Maya city-state known for its exquisite architecture, is in which modern nation?",
    "options": ["Guatemala", "Mexico", "Honduras", "El Salvador"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 690,
    "question":
    "The remote island of Socotra, known for unique 'Dragon’s Blood' trees, belongs to which country?",
    "options": ["Somalia", "Djibouti", "Eritrea", "Yemen"],
    "answer_index": 3,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 691,
    "question":
    "Taklamakan Desert sites (including Niya ruins) are in which vast Asian country?",
    "options": ["Mongolia", "China", "Kazakhstan", "Pakistan"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 692,
    "question":
    "In which country can you find the site of Great Enclosure at Khami, an important trading center after Great Zimbabwe?",
    "options": ["Zambia", "Botswana", "Zimbabwe", "Mozambique"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 693,
    "question":
    "Troy, the ancient city from Homer’s Iliad, is an archaeological site in which modern country?",
    "options": ["Cyprus", "Greece", "Turkey", "Bulgaria"],
    "answer_index": 2,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 694,
    "question":
    "Taxila, an ancient center of Gandharan culture, is found in which modern country?",
    "options": ["Afghanistan", "Pakistan", "Tajikistan", "Iran"],
    "answer_index": 1,
    "category": "Monuments/Landmarks",
    "difficulty": 3
  },
  {
    "id": 695,
    "question": "Which of these countries is NOT landlocked?",
    "options": ["Switzerland", "Bolivia", "Germany", "Paraguay"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 696,
    "question": "Which country shares a border with the United States?",
    "options": ["Canada", "Guatemala", "Venezuela", "Ecuador"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 697,
    "question": "Which country is landlocked?",
    "options": ["Brazil", "India", "Austria", "Spain"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 698,
    "question": "Which country borders Canada?",
    "options": ["Russia", "North Pole", "Denmark (via Greenland)", "Mexico"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 699,
    "question": "Among these, which is the largest by area?",
    "options": ["Argentina", "France", "New Zealand", "Germany"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 700,
    "question": "Which of these is the smallest by area?",
    "options": ["India", "Belgium", "China", "Australia"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 701,
    "question": "Which of these countries is NOT landlocked?",
    "options": ["Chad", "Mongolia", "Nepal", "South Korea"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 702,
    "question": "Which country DOES border Brazil?",
    "options": ["Chile", "Colombia", "Panama", "Costa Rica"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 703,
    "question": "Which of these countries is landlocked?",
    "options": ["Egypt", "Hungary", "Thailand", "Canada"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 704,
    "question": "Which country does NOT border Niger?",
    "options": ["Central African Republic", "Nigeria", "Mali", "Algeria"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 705,
    "question": "Which is the largest by area among these?",
    "options": ["Iceland", "Brazil", "Cuba", "Sweden"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 706,
    "question": "Which is the smallest among these countries?",
    "options": ["Russia", "Japan", "Denmark", "Vatican City"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 707,
    "question": "Which of these is NOT landlocked?",
    "options": ["Czech Republic", "Austria", "Italy", "Switzerland"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 708,
    "question": "Which country DOES border the United States besides Canada?",
    "options": ["Costa Rica", "Panama", "Mexico", "Cuba"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 709,
    "question": "Which of these is landlocked?",
    "options": ["Portugal", "Nepal", "Italy", "South Africa"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 710,
    "question": "Which country does NOT border South Africa?",
    "options": ["Botswana", "Zimbabwe", "Namibia", "Zambia"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 711,
    "question": "Which is bigger in area?",
    "options": ["Brazil", "Bolivia", "Ecuador", "Panama"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 712,
    "question": "Which is the smallest in area?",
    "options": ["China", "India", "Chile", "Belgium"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 713,
    "question": "Which of these is NOT landlocked?",
    "options": ["Bolivia", "Slovakia", "Kenya", "Uganda"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 714,
    "question": "Which country DOES border Colombia?",
    "options": ["Argentina", "Panama", "Chile", "Guyana"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 715,
    "question": "Which of these is landlocked?",
    "options": [
      "Nigeria",
      "Ethiopia",
      "South Sudan",
      "Democratic Republic of the Congo"
    ],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 716,
    "question": "Which country does NOT border the United States?",
    "options": ["Canada", "Mexico", "Cuba", "All of the above"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 717,
    "question": "Which is the largest by area?",
    "options": ["France", "United Kingdom", "India", "Norway"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 718,
    "question": "Which is the smallest by area?",
    "options": ["Russia", "China", "Uruguay", "Switzerland"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 719,
    "question": "Which of these is NOT landlocked?",
    "options": ["Honduras", "Nepal", "Mongolia", "Luxembourg"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 720,
    "question": "Which country DOES border France?",
    "options": ["Spain", "Portugal", "Ireland", "Iceland"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 721,
    "question": "Which country IS landlocked?",
    "options": ["South Africa", "Egypt", "Chad", "Sweden"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 722,
    "question": "Which of these does NOT border Germany?",
    "options": ["Austria", "France", "Belgium", "Portugal"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 723,
    "question": "Which of these countries is in Europe?",
    "options": ["Japan", "Brazil", "Italy", "Australia"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 724,
    "question": "Which country is NOT landlocked?",
    "options": ["Bolivia", "Kazakhstan", "Laos", "Norway"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 725,
    "question": "Which country DOES border China?",
    "options": ["Mongolia", "Peru", "Poland", "Ecuador"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 726,
    "question": "Which of these countries is landlocked?",
    "options": ["Sweden", "Austria", "France", "Argentina"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 727,
    "question": "Which country does NOT border Brazil?",
    "options": ["Bolivia", "Chile", "Venezuela", "Peru"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 728,
    "question": "Which is largest by area?",
    "options": ["Russia", "Uruguay", "Belgium", "Kuwait"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 729,
    "question": "Which is smallest among these?",
    "options": ["United States", "Mexico", "Spain", "Singapore"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 730,
    "question": "Which of these is NOT landlocked?",
    "options": ["Czech Republic", "Paraguay", "Vietnam", "Bolivia"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 731,
    "question": "Which country DOES border India?",
    "options": ["Laos", "Myanmar (Burma)", "Vietnam", "Indonesia"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 732,
    "question": "Which country is landlocked?",
    "options": ["Switzerland", "Japan", "Chile", "Turkey"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 733,
    "question": "Which of these does NOT border Canada?",
    "options": [
      "United States",
      "Greenland (Denmark)",
      "Russia",
      "All of the above"
    ],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 734,
    "question": "Which is bigger in area?",
    "options": ["Russia", "Kenya", "Cuba", "Greece"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 735,
    "question": "Which is smaller in area?",
    "options": ["Algeria", "France", "Egypt", "Luxembourg"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 736,
    "question": "Which country is NOT landlocked?",
    "options": ["Uzbekistan", "Afghanistan", "Serbia", "Belgium"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 737,
    "question": "Which country DOES border Mexico?",
    "options": ["Panama", "Guatemala", "Nicaragua", "Costa Rica"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 738,
    "question": "Which country is landlocked?",
    "options": ["South Korea", "Denmark", "Kazakhstan", "Iceland"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 739,
    "question": "Which does NOT border Russia?",
    "options": ["Ukraine", "Kazakhstan", "Nepal", "Mongolia"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 740,
    "question": "Which is the largest by area?",
    "options": ["China", "Peru", "Italy", "Ireland"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 741,
    "question": "Which is the smallest here?",
    "options": ["Nigeria", "Spain", "Austria", "Singapore"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 742,
    "question": "Which of these is NOT landlocked?",
    "options": ["Austria", "Czech Republic", "Greece", "Hungary"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 743,
    "question": "Which country DOES border Egypt?",
    "options": ["Greece", "Chad", "South Africa", "Iraq"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 744,
    "question": "Which country is landlocked?",
    "options": ["Uganda", "Kenya", "Australia", "Spain"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 745,
    "question": "Which country does NOT border Poland?",
    "options": ["Germany", "Ukraine", "Greece", "Belarus"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 746,
    "question": "Which is the largest by area among these?",
    "options": ["United Kingdom", "Japan", "Pakistan", "Russia"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 747,
    "question": "Which is the smallest by area among these?",
    "options": ["China", "Netherlands", "India", "Egypt"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 748,
    "question": "Which of these is NOT landlocked?",
    "options": ["Bolivia", "Rwanda", "Laos", "Thailand"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 749,
    "question": "Which country DOES border Germany?",
    "options": ["Cuba", "Poland", "Mexico", "Argentina"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 750,
    "question": "Which is landlocked?",
    "options": ["Portugal", "Nepal", "Norway", "Chile"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 751,
    "question": "Which does NOT border Canada?",
    "options": [
      "United States",
      "Denmark (via Greenland)",
      "France (via Saint Pierre)",
      "Russia"
    ],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 752,
    "question": "Which is the largest by area among these?",
    "options": ["Australia", "Belgium", "Vietnam", "Colombia"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 753,
    "question": "Which is the smallest among these?",
    "options": ["Egypt", "Canada", "Greece", "Denmark"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 754,
    "question": "Which is the smallest among these countries?",
    "options": ["Russia", "Malta", "United Kingdom", "Sweden"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 2
  },
  {
    "id": 755,
    "question": "Which country borders the United States?",
    "options": ["China", "Russia", "Australia", "Canada"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 756,
    "question": "Which country is in Africa?",
    "options": ["Mexico", "Nigeria", "Canada", "Japan"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 757,
    "question": "Which country is in Europe?",
    "options": ["France", "Brazil", "South Africa", "India"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 758,
    "question": "Which country borders Canada?",
    "options": ["United States", "Australia", "China", "Argentina"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 759,
    "question": "Which country is in Asia?",
    "options": ["Egypt", "Germany", "Russia", "Brazil"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 760,
    "question": "Which country is landlocked?",
    "options": ["Japan", "Algeria", "Czech Republic", "Canada"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 761,
    "question": "Which country does NOT border Ukraine?",
    "options": ["Russia", "Belarus", "France", "Poland"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 762,
    "question": "Which country is an island nation?",
    "options": ["China", "Australia", "Zambia", "India"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 763,
    "question": "Which country is in South America?",
    "options": ["Argentina", "South Korea", "South Africa", "Iceland"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 764,
    "question": "Which country is in North America?",
    "options": ["Chile", "Kenya", "Canada", "Turkey"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 765,
    "question": "Which country is in Europe?",
    "options": ["Morocco", "Brazil", "Sweden", "Japan"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 766,
    "question": "Which country is in Asia?",
    "options": ["Spain", "Mexico", "China", "Australia"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 767,
    "question": "Which country has a border with the US?",
    "options": ["Argentina", "Poland", "Austria", "Canada"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 768,
    "question": "Which country is known for having the Amazon Rainforest?",
    "options": ["Brazil", "Australia", "Canada", "Spain"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 769,
    "question": "Which country is in Africa?",
    "options": ["Egypt", "Russia", "Poland", "Chile"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 770,
    "question": "Which country is completely landlocked?",
    "options": ["China", "Brazil", "Austria", "Russia"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 771,
    "question": "Which country is NOT in Europe?",
    "options": ["Italy", "Spain", "Nigeria", "France"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 772,
    "question": "Which country is in Asia?",
    "options": ["Germany", "Argentina", "India", "Portugal"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 773,
    "question": "Which country is in North America?",
    "options": ["Guatemala", "Sweden", "Morocco", "China"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 774,
    "question": "Which country is in South America?",
    "options": ["Kenya", "Colombia", "Russia", "Belgium"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 775,
    "question": "Which country is landlocked?",
    "options": ["Uganda", "Mexico", "Japan", "Chile"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 776,
    "question": "Which of these is in Europe?",
    "options": ["Peru", "Nigeria", "Kenya", "Poland"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 777,
    "question": "Which country does the US border besides Canada?",
    "options": ["Brazil", "Mexico", "Argentina", "China"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 778,
    "question": "Which country is an island?",
    "options": ["Australia", "Austria", "Poland", "Laos"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 779,
    "question": "Which country is in Africa?",
    "options": ["Spain", "New Zealand", "Zambia", "Sweden"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 780,
    "question": "Which country is in Europe?",
    "options": ["Thailand", "Argentina", "Greece", "Canada"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 781,
    "question": "Which country is in Asia?",
    "options": ["Egypt", "Vietnam", "Mexico", "France"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 782,
    "question": "Which of these countries borders the US to the south?",
    "options": ["Germany", "Mexico", "Spain", "Brazil"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 783,
    "question": "Which country is known for the Nile River in Africa?",
    "options": ["Denmark", "China", "Egypt", "Chile"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 784,
    "question": "Which country is NOT in Asia?",
    "options": ["China", "Japan", "Argentina", "India"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 785,
    "question": "Which country is entirely in North America?",
    "options": ["France", "Mexico", "Brazil", "Japan"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 786,
    "question": "Which is an island nation?",
    "options": ["United Kingdom", "Bolivia", "China", "Nigeria"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 787,
    "question": "Which country is on the same continent as Italy?",
    "options": ["Sweden", "Argentina", "China", "Australia"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 788,
    "question": "Which country is landlocked?",
    "options": ["Turkey", "Laos", "Egypt", "Sweden"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 789,
    "question": "Which of these countries is in Africa?",
    "options": ["Russia", "Thailand", "Iceland", "Kenya"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 790,
    "question": "Which of these is in Europe?",
    "options": ["Chile", "Poland", "South Korea", "India"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 791,
    "question": "Which country is in Asia?",
    "options": ["Argentina", "Canada", "Italy", "Japan"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 792,
    "question": "Which country is in North America?",
    "options": ["Germany", "Mexico", "Nigeria", "China"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 793,
    "question": "Which country is in South America?",
    "options": ["Brazil", "Spain", "Thailand", "Kenya"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 794,
    "question": "Which is an island country?",
    "options": ["Chile", "Russia", "South Africa", "Australia"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 795,
    "question": "Which country is on the same continent as Germany?",
    "options": ["France", "Zimbabwe", "Japan", "Peru"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 796,
    "question": "Which country does NOT border the US?",
    "options": ["Mexico", "Canada", "Saudi Arabia", "All of the above"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 797,
    "question": "Which country is located in Asia?",
    "options": ["Egypt", "China", "Chile", "Sweden"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 798,
    "question": "Which is in North America?",
    "options": ["Cuba", "Iceland", "South Korea", "Nigeria"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 799,
    "question": "Which of these countries is in Europe?",
    "options": ["Kenya", "Argentina", "Chile", "Italy"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 800,
    "question": "Which country is an island nation?",
    "options": ["United Kingdom", "Bolivia", "Denmark", "Brazil"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 801,
    "question": "Which country is in Africa?",
    "options": ["Ukraine", "Morocco", "Japan", "Mexico"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 802,
    "question": "Which of these is in Asia?",
    "options": ["Peru", "India", "France", "Chile"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 803,
    "question": "Which country does the US border to the north?",
    "options": ["Brazil", "Japan", "Canada", "South Africa"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 804,
    "question": "Which country is on the same continent as Portugal?",
    "options": ["Egypt", "Italy", "Cuba", "Canada"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 805,
    "question": "Which country is NOT landlocked?",
    "options": ["Chad", "Ethiopia", "Mongolia", "India"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 806,
    "question": "Which country is in North America?",
    "options": ["Morocco", "Mexico", "Germany", "Brazil"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 807,
    "question": "Which country is in Europe?",
    "options": ["Argentina", "Netherlands", "Cuba", "Tanzania"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 808,
    "question": "Which of these countries is in Africa?",
    "options": ["China", "Venezuela", "Cameroon", "Australia"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 809,
    "question": "Which of these countries is in Asia?",
    "options": ["Chile", "South Korea", "Poland", "Ivory Coast"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 810,
    "question": "Which country is landlocked?",
    "options": ["Japan", "South Africa", "Egypt", "Switzerland"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 811,
    "question": "Which country is an island nation?",
    "options": ["Kenya", "Iceland", "Argentina", "Bolivia"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 812,
    "question": "Which country does NOT border France?",
    "options": ["Portugal", "Italy", "Switzerland", "Portugal"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 813,
    "question": "Which country is completely in Europe?",
    "options": ["Norway", "Egypt", "Colombia", "China"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 814,
    "question": "Which of these countries is in Asia?",
    "options": ["Morocco", "Mexico", "Vietnam", "Brazil"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 1
  },
  {
    "id": 815,
    "question": "Which country does NOT border Kazakhstan?",
    "options": ["Russia", "Uzbekistan", "Turkmenistan", "Tajikistan"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 816,
    "question":
    "Which country shares a land border with both Brazil and Argentina?",
    "options": ["Bolivia", "Uruguay", "Chile", "Paraguay"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 817,
    "question": "Which is the largest island nation (by area) among these?",
    "options": ["Madagascar", "Cuba", "Iceland", "Sri Lanka"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 818,
    "question": "Which country does NOT border the Black Sea?",
    "options": ["Turkey", "Romania", "Bulgaria", "North Macedonia"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 819,
    "question": "Which country is the largest in the Caucasus region by area?",
    "options": ["Armenia", "Georgia", "Azerbaijan", "Liechtenstein"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 820,
    "question": "Which country does NOT border China?",
    "options": ["Nepal", "Myanmar", "Mongolia", "Thailand"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 821,
    "question": "Which of these countries is landlocked?",
    "options": ["Gabon", "Eritrea", "Zambia", "Mozambique"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 822,
    "question": "Which country does NOT border Germany?",
    "options": ["Switzerland", "Czech Republic", "Luxembourg", "Slovakia"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 823,
    "question": "Which country is the largest by area in Central Asia?",
    "options": ["Tajikistan", "Uzbekistan", "Kyrgyzstan", "Kazakhstan"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 824,
    "question":
    "Which of these countries does NOT border the Mediterranean Sea?",
    "options": ["Algeria", "Portugal", "Syria", "Croatia"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 825,
    "question": "Which country does NOT border India?",
    "options": ["Bangladesh", "Sri Lanka", "China", "Afghanistan"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 826,
    "question":
    "Which is the largest by area among these landlocked countries?",
    "options": ["Ethiopia", "Uganda", "Bolivia", "Lao PDR"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 827,
    "question": "Which country does NOT border the Baltic Sea?",
    "options": ["Estonia", "Latvia", "Belarus", "Lithuania"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 828,
    "question":
    "Which of these countries shares the longest land border with Russia?",
    "options": ["Norway", "China", "Finland", "Ukraine"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 829,
    "question": "Which country does NOT border Myanmar (Burma)?",
    "options": ["Thailand", "Bangladesh", "Laos", "Malaysia"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 830,
    "question": "Which is the largest island of Japan by area?",
    "options": ["Honshu", "Hokkaido", "Kyushu", "Shikoku"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 831,
    "question":
    "Which country in the Arabian Peninsula is the largest by area?",
    "options": ["Oman", "Saudi Arabia", "Yemen", "Kuwait"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 832,
    "question":
    "Which of these South American countries does NOT border the Pacific Ocean?",
    "options": ["Colombia", "Peru", "Paraguay", "Chile"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 833,
    "question": "Which country does NOT border the Caspian Sea?",
    "options": ["Iran", "Turkmenistan", "Uzbekistan", "Russia"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 834,
    "question":
    "Which is the largest of the Great Lakes in North America by surface area?",
    "options": ["Lake Superior", "Lake Michigan", "Lake Huron", "Lake Erie"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 835,
    "question": "Which country does NOT border Tanzania?",
    "options": ["Kenya", "Mozambique", "Rwanda", "Angola"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 836,
    "question": "Which of these countries does NOT border Romania?",
    "options": ["Ukraine", "Serbia", "Bulgaria", "Moldova"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 837,
    "question": "Which island is the largest in the Mediterranean Sea?",
    "options": ["Cyprus", "Sardinia", "Sicily", "Crete"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 838,
    "question": "Which country does NOT border Uzbekistan?",
    "options": ["Kyrgyzstan", "Kazakhstan", "Turkmenistan", "Armenia"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 839,
    "question": "Which is the largest lake in Africa by surface area?",
    "options": ["Lake Victoria", "Lake Tanganyika", "Lake Malawi", "Lake Chad"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 840,
    "question": "Which of these countries does NOT border Mexico?",
    "options": ["Guatemala", "Belize", "Honduras", "United States"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 841,
    "question": "Which country does NOT border Libya?",
    "options": ["Egypt", "Sudan", "Algeria", "Chad"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 842,
    "question":
    "Which island is the largest in the world by area (excluding continents)?",
    "options": ["New Guinea", "Borneo", "Greenland", "Madagascar"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 843,
    "question": "Which country does NOT border the Persian Gulf?",
    "options": ["Iraq", "Iran", "Oman", "Jordan"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 844,
    "question": "Which is the largest country in Central America by area?",
    "options": ["Nicaragua", "Honduras", "Guatemala", "Costa Rica"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 845,
    "question": "Which country does NOT border Serbia?",
    "options": ["Croatia", "Hungary", "Bosnia and Herzegovina", "Romania"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 846,
    "question": "Which is the largest of the British Isles?",
    "options": ["Great Britain", "Ireland", "Isle of Man", "Isle of Wight"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 847,
    "question":
    "Which of these countries is located entirely on the Balkan Peninsula?",
    "options": ["Greece", "Romania", "Croatia", "Slovenia"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 848,
    "question": "Which country does NOT border Lake Victoria?",
    "options": ["Tanzania", "Kenya", "Rwanda", "Uganda"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 849,
    "question": "Which is the largest emirate in the UAE by area?",
    "options": ["Abu Dhabi", "Dubai", "Sharjah", "Fujairah"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 850,
    "question": "Which country does NOT share a border with Bolivia?",
    "options": ["Peru", "Chile", "Argentina", "Ecuador"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 851,
    "question": "Which country is the largest in the Horn of Africa by area?",
    "options": ["Djibouti", "Eritrea", "Somalia", "Ethiopia"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 852,
    "question": "Which of these countries does NOT border the Red Sea?",
    "options": ["Eritrea", "Saudi Arabia", "Yemen", "Oman"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 853,
    "question": "Which country does NOT border Saudi Arabia?",
    "options": ["United Arab Emirates", "Kuwait", "Qatar", "Jordan"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 854,
    "question": "Which is the southernmost country in Central America?",
    "options": ["Costa Rica", "Honduras", "Panama", "El Salvador"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 855,
    "question":
    "Which of these countries is entirely landlocked in South America?",
    "options": ["Bolivia", "Chile", "Ecuador", "Venezuela"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 856,
    "question":
    "Which country does NOT border the Democratic Republic of the Congo?",
    "options": ["Zambia", "Tanzania", "Uganda", "Namibia"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 857,
    "question": "Which is the largest desert in Asia?",
    "options": ["Gobi", "Thar", "Karakum", "Taklamakan"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 858,
    "question": "Which of these lakes is entirely in Canada?",
    "options": [
      "Great Bear Lake",
      "Lake Superior",
      "Lake Erie",
      "Lake Michigan"
    ],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 859,
    "question": "Which country does NOT border Guatemala?",
    "options": ["Belize", "Costa Rica", "Honduras", "El Salvador"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 860,
    "question":
    "Which of these countries is the largest by area in the Arabian Peninsula?",
    "options": ["Oman", "Yemen", "Kuwait", "Saudi Arabia"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 861,
    "question":
    "Which country in Europe does NOT use the Euro as its currency?",
    "options": ["Sweden", "Belgium", "Portugal", "Slovakia"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 862,
    "question": "Which country does NOT border Jordan?",
    "options": ["Iraq", "Syria", "Saudi Arabia", "Lebanon"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 863,
    "question": "Which sea is the deepest in the world?",
    "options": [
      "Caribbean Sea",
      "Mediterranean Sea",
      "Bering Sea",
      "Philippine Sea"
    ],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 864,
    "question": "Which country does NOT border Belgium?",
    "options": ["Luxembourg", "Germany", "Switzerland", "Netherlands"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 865,
    "question": "Which country has the longest coastline in the world?",
    "options": ["Canada", "Indonesia", "Russia", "Philippines"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 866,
    "question":
    "Which of these is the smallest by area among the former Soviet republics?",
    "options": ["Estonia", "Armenia", "Kyrgyzstan", "Azerbaijan"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 867,
    "question": "Which country does NOT border Argentina?",
    "options": ["Bolivia", "Brazil", "Uruguay", "Paraguay"],
    "answer_index": 1,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 868,
    "question": "Which is the largest African country by area after Algeria?",
    "options": ["DR Congo", "Sudan", "Libya", "Chad"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 869,
    "question": "Which lake is the deepest in the world?",
    "options": [
      "Lake Baikal",
      "Lake Tanganyika",
      "Caspian Sea",
      "Lake Superior"
    ],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 870,
    "question": "Which of these countries does NOT border the Arctic Ocean?",
    "options": ["Canada", "Denmark (Greenland)", "Norway", "Estonia"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 871,
    "question": "Which is the largest island of Canada?",
    "options": [
      "Baffin Island",
      "Victoria Island",
      "Ellesmere Island",
      "Newfoundland"
    ],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 872,
    "question": "Which country does NOT border Afghanistan?",
    "options": ["Iran", "Turkmenistan", "Kazakhstan", "Pakistan"],
    "answer_index": 2,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 873,
    "question":
    "Which is the largest country on the Arabian Peninsula by population?",
    "options": ["Saudi Arabia", "Yemen", "Oman", "Kuwait"],
    "answer_index": 0,
    "category": "Geography",
    "difficulty": 3
  },
  {
    "id": 874,
    "question": "Which is the largest landlocked country by area among these?",
    "options": ["Mongolia", "Chad", "Niger", "Kazakhstan"],
    "answer_index": 3,
    "category": "Geography",
    "difficulty": 3
  }
];