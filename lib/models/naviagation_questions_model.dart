class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final navigateQuestionsList = [
  NavigateQuestion(
    text:
        "Apa julukan dari Kota Lama Semarang?",
    options: [
      const NavigationsOption(text: "Route", isCorrect: false),
      const NavigationsOption(text: "Scaffold", isCorrect: false),
      const NavigationsOption(text: "Little Natherland", isCorrect: true),
      const NavigationsOption(text: "Little Mermaid", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "Little Natherland", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "Kota Lama Semarang berdiri sejak tahun ...",
    options: [
      const NavigationsOption(text: "akhir abad-18", isCorrect: false),
      const NavigationsOption(text: "akhir abad-17", isCorrect: true),
      const NavigationsOption(
          text: "akhir abad-16", isCorrect: false),
      const NavigationsOption(text: " akhir abad-15", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
        const NavigationsOption(text: "akhir abad-17", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "Kota Lama Semarang merupakan peninggalan penjajahan ...",
    options: [
      const NavigationsOption(text: "Belanda", isCorrect: true),
      const NavigationsOption(text: "Jepang", isCorrect: false),
      const NavigationsOption(text: "Inggris", isCorrect: false),
      const NavigationsOption(text: "Perancis", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const NavigationsOption(text: "Belanda", isCorrect: true),
  ),

  NavigateQuestion(
    text:
        "Gaya arsitektur apa yang diterapkan pada bagunan-bangunan di Kota Lama Semarang?",
    options: [
      const NavigationsOption(text: "Arsitektur Eropa", isCorrect: true),
      const NavigationsOption(text: "Arsitektur Scandinavian", isCorrect: false),
      const NavigationsOption(text: "Arsitektur Indis", isCorrect: false),
      const NavigationsOption(text: "Arsitektur Modern", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const NavigationsOption(text: "Arsitektur Eropa", isCorrect: true),
  ),
  // other 4
  NavigateQuestion(
    text:
        "Berapa luas Kawasan Kota Lama Semarang?",
    options: [
      const NavigationsOption(text: "41 hektare", isCorrect: false),
      const NavigationsOption(text: " 21 hektare", isCorrect: false),
      const NavigationsOption(text: " 51 hektare", isCorrect: false),
      const NavigationsOption(text: " 31 hektare", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const NavigationsOption(
      text: "31 hektare",
      isCorrect: true,
    ),
  ),
  NavigateQuestion(
    text:
        "Mengapa kawasan ini dinamakan kota lama?",
    options: [
      const NavigationsOption(text: "Bangunan bergaya arsitektur zaman dahulu", isCorrect: true),
      const NavigationsOption(text: "Karena kawasan tersebut sudah lama", isCorrect: false),
      const NavigationsOption(text: "Karena ada kota yang lebih baru", isCorrect: false),
      const NavigationsOption(text: "Karena orang yang disana sudah tua", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const NavigationsOption(
        text: "Bangunan bergaya arsitektur zaman dahulu", isCorrect: true),
  ),

  NavigateQuestion(
    text: "Apa nama belanda Kota Lama Semarang?",
    options: [
      const NavigationsOption(text: "Hoofdstad", isCorrect: false),
      const NavigationsOption(text: "Binnenstad", isCorrect: false),
      const NavigationsOption(text: "Centrum", isCorrect: false),
      const NavigationsOption(text: "Outstadt", isCorrect: true),
    ],
    id: 6,
    correctAnswer:
        const NavigationsOption(text: "Outstadt", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "Apa nama gereja yang menjadi salah satu landmark di Kota Lama Semarang?",
    options: [
      const NavigationsOption(text: "Gereja Blenduk", isCorrect: true),
      const NavigationsOption(text: "Gereja Tiberias", isCorrect: false),
      const NavigationsOption(text: "Gereja Saint Anthanius", isCorrect: false),
      const NavigationsOption(text: "Gereja Bethel", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const NavigationsOption(text: "Gereja Blenduk", isCorrect: true),
  ),

  NavigateQuestion(
    text:
        "Apa nama pabrik rokok terkenal yang ada di Kota Lama Semarang?",
    options: [
      const NavigationsOption(text: "Pabrik Rokok Djanoko", isCorrect: false),
      const NavigationsOption(text: "Pabrik Rokok Gentong Gotri", isCorrect: false),
      const NavigationsOption(text: "Pabrik Rokok Praoe Lajar", isCorrect: true),
      const NavigationsOption(text: "Pabrik Rokok Swdich Match", isCorrect: false),
    ],
    id: 8,
    correctAnswer:
        const NavigationsOption(text: "Pabrik Rokok Praoe Lajar", isCorrect: true),
  ),
];
