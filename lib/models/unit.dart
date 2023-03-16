enum Unit {
  g,
  kcal,
  mlg;

  String name() {
    String title = '';
    switch (this) {
      case Unit.kcal:
        title = 'کیلو کالری';
        break;
      case Unit.g:
        title = 'گرم';
        break;
      case Unit.mlg:
        title = 'میلی گرم';
        break;
    }

    return title;
  }
}
