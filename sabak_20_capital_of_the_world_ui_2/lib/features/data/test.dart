class Test {
  Test(
      {required this.capitalName,
      required this.capitalImage,
      required this.joop});

  final String capitalName;
  final String capitalImage;
  final List<Joop> joop;
}

class Joop {
  Joop({required this.caountriesName, required this.isTrue});
  final String caountriesName;
  bool isTrue;
}

Test bishkek = Test(
    capitalName: 'Бишкек',
    capitalImage:
        'https://s.bishkek.kg/section/promonewsintext/upload/images/promo/intext/000/055/526/ala-too-square_64c91604b70d5.jpg',
    joop: [
      Joop(caountriesName: 'Кыргызстан', isTrue: true),
      Joop(caountriesName: 'Казакстан', isTrue: false),
      Joop(caountriesName: 'Озбекстан', isTrue: false),
      Joop(caountriesName: 'Турция', isTrue: false),
    ]);

Test beijin = Test(
    capitalName: 'Бээжин',
    capitalImage: 'https://gorodw.by/wp-content/uploads/2022/08/china001_2.jpg',
    joop: [
      Joop(caountriesName: 'Кыргызстан', isTrue: false),
      Joop(caountriesName: 'Индия', isTrue: false),
      Joop(caountriesName: 'Тажикстан', isTrue: false),
      Joop(caountriesName: 'Кытай', isTrue: true),
    ]);

Test astana = Test(
    capitalName: 'Астана',
    capitalImage:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Central_Downtown_Astana_2.jpg/452px-Central_Downtown_Astana_2.jpg',
    joop: [
      Joop(caountriesName: 'Казакстан', isTrue: true),
      Joop(caountriesName: 'Армения', isTrue: false),
      Joop(caountriesName: 'Арабия', isTrue: false),
      Joop(caountriesName: 'Кытай', isTrue: false),
    ]);

Test rim = Test(
    capitalName: 'Рим',
    capitalImage:
        'https://tripmydream.cc/travelhub/travel/blocks/22/036/block_22036.jpg?',
    joop: [
      Joop(caountriesName: 'Озбекистан', isTrue: false),
      Joop(caountriesName: 'Италия', isTrue: true),
      Joop(caountriesName: 'Бразилия', isTrue: false),
      Joop(caountriesName: 'Туркменистан', isTrue: false),
    ]);

Test moscow = Test(
    capitalName: 'Москва',
    capitalImage:
        'https://sk-moskvich.ru/attaches/files/0b77c0750db42835f73e57267c7c3a89.jpg',
    joop: [
      Joop(caountriesName: 'Германия', isTrue: false),
      Joop(caountriesName: 'Россия', isTrue: true),
      Joop(caountriesName: 'Бразилия', isTrue: false),
      Joop(caountriesName: 'Турция', isTrue: false),
    ]);
List<Test> capitalsList = [
  bishkek,
  beijin,
  astana,
  rim,
  moscow,
];
