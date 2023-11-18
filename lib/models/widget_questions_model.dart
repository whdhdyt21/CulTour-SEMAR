class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [
  WidgetQuestion(
    text:
        "Kata Lawang Sewu berasal dari bahasa jawa yang berarti ...",
    options: [
      const WiidgetOption(text: "Seribu pintu", isCorrect: true),
      const WiidgetOption(text: "Seribu tangga", isCorrect: false),
      const WiidgetOption(text: "Seribu bangunan", isCorrect: false),
      const WiidgetOption(text: "Seribu jendela", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const WiidgetOption(text: "Seribu pintu", isCorrect: true),
  ),
  WidgetQuestion(
      text:
          "Lawang Sewu dibangun pada tahun ...",
      options: [
        const WiidgetOption(text: "1945", isCorrect: false),
        const WiidgetOption(text: "1904", isCorrect: true),
        const WiidgetOption(text: "1940", isCorrect: false),
        const WiidgetOption(text: "1905", isCorrect: false),
      ],
      id: 1,
      correctAnswer: const WiidgetOption(text: "1904", isCorrect: true)),
  WidgetQuestion(
      text:
          "Faktanya, Lawang Sewu hanya memiliki ... pintu.",
      options: [
        const WiidgetOption(text: "231", isCorrect: false),
        const WiidgetOption(text: "515", isCorrect: false),
        const WiidgetOption(text: "624", isCorrect: false),
        const WiidgetOption(text: "429", isCorrect: true),
      ],
      id: 2,
      correctAnswer:
          const WiidgetOption(text: "429", isCorrect: true)),
  WidgetQuestion(
      text:
          "Lawang Sewu adalah gedung bersejarah milik PT KAI yang awalnya digunakan sebagai ...",
      options: [
        const WiidgetOption(text: "Stasiun kereta api", isCorrect: false),
        const WiidgetOption(text: "Kantor pemesanan tiket kereta api", isCorrect: false),
        const WiidgetOption(text: "Kantor perusahaan kereta api swasta", isCorrect: true),
        const WiidgetOption(text: "Jalur kereta api bawah tanah", isCorrect: false),
      ],
      id: 3,
      correctAnswer: const WiidgetOption(text: "Kantor pusat perusahaan kereta api swasta", isCorrect: true)),
  WidgetQuestion(
      text:
          "Lawang Sewu merupakan salah satu bangunan peninggalan ...",
      options: [
        const WiidgetOption(text: "Perancis", isCorrect: false),
        const WiidgetOption(text: "Jepang", isCorrect: false),
        const WiidgetOption(text: "Inggris", isCorrect: false),
        const WiidgetOption(text: "Belanda", isCorrect: true),
      ],
      id: 4,
      correctAnswer: const WiidgetOption(text: "Belanda", isCorrect: true)),
  WidgetQuestion(
      text:
          "Mengapa disebut Lawang Sewu?",
      options: [
        const WiidgetOption(text: "Karena memiliki pintu yang sangat banyak", isCorrect: true),
        const WiidgetOption(text: "Karena memiliki seribu anak tangga", isCorrect: false),
        const WiidgetOption(text: "Karena tempat pertemuan seribu orang", isCorrect: false),
        const WiidgetOption(text: "Karena terdiri dari seribu bangunan", isCorrect: false),
      ],
      id: 5,
      correctAnswer:
          const WiidgetOption(text: "Karena memiliki pintu yang sangat banyak", isCorrect: true)),
];
