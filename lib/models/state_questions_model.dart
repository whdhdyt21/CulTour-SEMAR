class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  StateQuestion copyWith() {
    return StateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              StateOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final stateQuestionsList = [
  StateQuestion(
    text:
        "Klenteng Sam Poo Kong merupakan tempat ibadah bagi agama ...",
    options: [
      const StateOption(text: "Islam", isCorrect: false),
      const StateOption(text: "Kristen", isCorrect: false),
      const StateOption(text: "Konghucu", isCorrect: true),
      const StateOption(text: "Hindu", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "Konghucu", isCorrect: true),
  ),
  StateQuestion(
    text:
        "Klenteng Sam Poo Kong juga dikenal dengan nama ... ",
    options: [
      const StateOption(text: "Klenteng Chandra Nadi", isCorrect: false),
      const StateOption(text: "Klenteng Gedung Batu", isCorrect: true),
      const StateOption(text: "Klenteng Tek Hay Kiong", isCorrect: false),
      const StateOption(text: "Klenteng Kwan Sing Bio", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const StateOption(text: "Klenteng Gedung Batu", isCorrect: true),
  ),
  StateQuestion(
    text:
        "Klenteng Sam Poo Kong memiliki warna yang sangat ikonik, yaitu warna ...",
    options: [
      const StateOption(text: "Merah", isCorrect: true),
      const StateOption(text: "Biru", isCorrect: false),
      const StateOption(text: "Kuning", isCorrect: false),
      const StateOption(text: "Ungu", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const StateOption(text: "Merah", isCorrect: true),
  ),

  StateQuestion(
    text:
        "Klenteng Sam Poo Kong merupakan salah satu lokasi peristirahatan rombongan ...",
    options: [
      const StateOption(text: "Laksamana Cheng Ho", isCorrect: true),
      const StateOption(text: "Laksamana Maeda", isCorrect: false),
      const StateOption(text: "Laksamana Hang Tuah", isCorrect: false),
      const StateOption(text: "Laksamana Malahayati", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const StateOption(text: "Laksamana Cheng Ho", isCorrect: true),
  ),
  // other 4
  StateQuestion(
    text:
        "Klenteng Sam Poo Kong didirikan sejak ...",
    options: [
      const StateOption(text: "Awal abad ke-18", isCorrect: false),
      const StateOption(text: "Awal abad ke-17", isCorrect: false),
      const StateOption(text: "Awal abad ke-16", isCorrect: false),
      const StateOption(text: "Awal abad ke-15", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const StateOption(text: "Awal abad ke-15", isCorrect: true),
  ),
  StateQuestion(
    text: "Siapa yang mendirikan Klenteng Sam Poo Kong?",
    options: [
      const StateOption(text: "Laksamana Cheng Ho", isCorrect: true),
      const StateOption(text: "Laksamana Maeda", isCorrect: false),
      const StateOption(text: "Laksamana Malahayati", isCorrect: false),
      const StateOption(text: "Laksamana Hang Tuah", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const StateOption(text: "Laksamana Cheng Ho", isCorrect: true),
  ),

  StateQuestion(
    text: "Salah satu keunikan Klenteng Sam Poo Kong yaitu memiliki fungsi awal sebagai ...",
    options: [
      const StateOption(text: "Benteng Pertahanan", isCorrect: false),
      const StateOption(text: "Pusat Perdagangan", isCorrect: false),
      const StateOption(text: "Tempat Persembunyian", isCorrect: false),
      const StateOption(text: "Masjid", isCorrect: true),
    ],
    id: 6,
    correctAnswer: const StateOption(text: "Masjid", isCorrect: true),
  ),
];
