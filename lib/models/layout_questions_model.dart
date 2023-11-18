class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
  LayOutQuestion(
    text: "Kasunanan Surakarta Hadiningrat adalah sebuah kerajaan yang berdiri pada tahun ...",
    options: [
      const LayOutOption(text: "1745 ", isCorrect: true),
      const LayOutOption(text: "1754", isCorrect: false),
      const LayOutOption(text: "1574", isCorrect: false),
      const LayOutOption(text: "1547", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const LayOutOption(text: "1745", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "Kasunanan Surakarta Hadiningrat berada di kota ...",
    options: [
      const LayOutOption(text: "Surakarta ", isCorrect: true),
      const LayOutOption(text: "Daerah Istimewa Yogyakarta", isCorrect: false),
      const LayOutOption(text: "Semarang", isCorrect: false),
      const LayOutOption(text: "Pekalongan", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "Surakarta", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "Siapa yang mendirikan Keraton Surakarta Hadiningrat?",
    options: [
      const LayOutOption(text: "Sri Susuhunan Pakubuwana II ", isCorrect: true),
      const LayOutOption(text: "Sri Susuhunan Pakubuwana I", isCorrect: false),
      const LayOutOption(text: "Sri Sultan Hamengkubuwono I", isCorrect: false),
      const LayOutOption(text: "Sri Sultan Hamengkubuwono II", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: "Sri Susuhunan Pakubuwana II", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "Kasunanan Surakarta Hadiningrat merupakan penerus dari?",
    options: [
      const LayOutOption(text: "Kesultanan Demak", isCorrect: false),
      const LayOutOption(text: "Kesultanan Aceh", isCorrect: false),
      const LayOutOption(text: "Kesultanan Mataram ", isCorrect: true),
      const LayOutOption(text: "Kesultanan Pajang", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const LayOutOption(text: "Kesultanan Mataram", isCorrect: true),
  ),
  // other 4
  LayOutQuestion(
    text:
        "Siapa raja yang berkuasa di Kasunanan Surakarta Hadiningrat sekarang?",
    options: [
      const LayOutOption(text: "Sri Susuhunan Pakubuwono IX", isCorrect: false),
      const LayOutOption(text: "Sri Susuhunan Pakubuwono XI", isCorrect: false),
      const LayOutOption(text: "Sri Susuhunan Pakubuwono X", isCorrect: false),
      const LayOutOption(text: "Sri Susuhunan Pakubuwono XIII ", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const LayOutOption(text: "Sri Susuhunan Pakubuwono XIII", isCorrect: true),
  ),
  LayOutQuestion(
    text: "Sejak tahun berapa raja Kasunanan Surakarta Hadiningrat yang sekarang berkuasa?",
    options: [
      const LayOutOption(text: "2004 ", isCorrect: true),
      const LayOutOption(text: "2005", isCorrect: false),
      const LayOutOption(text: "2006", isCorrect: false),
      const LayOutOption(text: "2007", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const LayOutOption(text: "2004", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "Kasunanan Surakarta Hadiningrat biasa dikenal dengan nama ...",
    options: [
      const LayOutOption(text: "Keraton Kartasura", isCorrect: false),
      const LayOutOption(text: "Keraton Yogyakarta", isCorrect: false),
      const LayOutOption(text: "Keraton Mangkunegaran", isCorrect: false),
      const LayOutOption(text: "Keraton Solo ", isCorrect: true),
    ],
    id: 6,
    correctAnswer:
        const LayOutOption(text: "Keraton Solo ", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "Siapa raja pertama di Kasunanan Surakarta Hadiningrat?",
    options: [
      const LayOutOption(text: "Sri Sultan Hamengkubuwono II", isCorrect: false),
      const LayOutOption(text: "Sri Susuhunan Pakubuwana II ", isCorrect: true),
      const LayOutOption(text: "Sri Sultan Hamengkubuwono I", isCorrect: false),
      const LayOutOption(text: "Sri Susuhunan Pakubuwana I", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const LayOutOption(text: "Sri Susuhunan Pakubuwana II", isCorrect: true),
  ),
];
