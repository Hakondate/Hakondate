/// https://app.json-generator.com で実行（このコメントは消す）
JG.repeat(100, {
  id: JG.index(),
  parentId() {
    if (JG.index() < 4) {
      return JG.index();
    }
    return JG.integer(0, 3);
  },
  lunchBlock() {
    return this.parentId;
  },
  classification() {
    return ['primary', 'secondary'][JG.integer(0, 1)];
  },
  name() {
    if (this.classification == 'primary') {
      return (JG.city() + '小学校');
    }
    return (JG.city() + '中学校');
  },
  updateAt: JG.date(new Date(2022, 0, 1), new Date(2022, 8, 1)),
});
