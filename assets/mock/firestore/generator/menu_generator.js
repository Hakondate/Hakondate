/// https://app.json-generator.com で実行（このコメントは消す）
JG.repeat(31, {
  day() {
    return moment(new Date(2022, 2, 1)).add(JG.index(), 'days');
  },
  schoolId: 3,
  id() {
    if (this.schoolId < 10) {
      return `${moment(this.day).format('YYYYMMDD')}0${this.schoolId}`;
    }
    return `${moment(this.day).format('YYYYMMDD')}${this.schoolId}`;
  },
  event() {
    return [
      null,
      '標準のイベント名',
      'English event name',
      '長いイベント名長いイベント名長いイベント名長いイベント名長いイベント名',
    ][JG.integer(0, 3)];
  },
  updateAt: JG.date(new Date(2022, 0, 1), new Date(2022, 8, 1)),
  dishes: JG.repeat(JG.integer(1, 6), {
    name() {
      return [
        'ごはん',
        'ごはん・',
        'English menu',
        '結構文字数のあるメニュー結構文字数のあるメニュー',
      ][JG.integer(0, 3)];
    },
    category() {
      if (JG.index() == 0) {
        return 'main';
      }
      if (JG.index() == 1) {
        return 'drink';
      }
      return 'side';
    },
    foodstuffs: JG.repeat([1, 2, 3, 4, 5, 10, 20, 30][JG.integer(0, 7)], {
      name() {
        return [
          '塩',
          'English foodstuff',
          '結構文字数のある食材結構文字数のある食材',
          '信じられないほど文字数のある食材信じられないほど文字数のある食材信じられないほど文字数のある食材信じられないほど文字数のある食材信じられないほど文字数のある食材',
        ][JG.integer(0, 3)];
      },
      piece() {
        return [null, 1, 2, 10, 100][JG.integer(0, 4)];
      },
      gram: JG.floating(0.0, 1000.0),
      energy: JG.floating(0.0, 500.0),
      protein: JG.floating(0.0, 10.0),
      lipid: JG.floating(0.0, 10.0),
      carbohydrate: JG.floating(0.0, 100.0),
      sodium: JG.floating(0.0, 100.0),
      calcium: JG.floating(0.0, 500.0),
      magnesium: JG.floating(0.0, 100.0),
      iron: JG.floating(0.0, 10.0),
      zinc: JG.floating(0.0, 10.0),
      retinol: JG.floating(0.0, 1.0),
      vitaminB1: JG.floating(0.0, 1.0),
      vitaminB2: JG.floating(0.0, 1.0),
      vitaminC: JG.floating(0.0, 10.0),
      dietaryFiber: JG.floating(0.0, 100.0),
      salt: JG.floating(0.0, 100.0),
      isAllergy: JG.bool(),
      isHeat: JG.bool(),
      origin() {
        return [null, '函館市', '北海道', '長い地名長い地名長い地名長い地名長い地名'][JG.integer(0, 4)];
      },
    }),
  }),
});
