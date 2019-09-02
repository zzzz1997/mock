A dart library that mimics [mockjs](http://mockjs.com/).

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:mock/mock.dart' as mock;

main() {
  print(mock.boolean()); // true
}
```

More usage, api naming reference [mockjs](http://mockjs.com/):

```dart
import 'package:mock/mock.dart' as mock;

main() {
  /// base
  // boolean
  print(mock.boolean()); // false
  print(mock.boolean(min: 1, max: 10, def: true)); // false
  // integer
  print(mock.integer()); // 5963426600460575744
  print(mock.integer(min: 10, max: 100)); // 79
  // double
  print(mock.doubleR()); // 0.7888668005560888
  print(mock.doubleR(max: 10, decimal: 1)); // 6.0
  // character
  print(mock.character()); // b
  print(mock.character(pools: [mock.symbol])); // !
  print(mock.character(pools: [], self: '_-=+')); // =
  // string
  print(mock.string()); // tO(XL
  print(mock.string(self: '一二三四五')); // V*d五8
  print(mock.string(min: 1, max: 10)); // zw!LM^O[b
  /// date
  // dateTime
  print(mock.dateTime()); // 2051-04-11 04:24:47.107
  print(mock.dateTime(end: DateTime.now())); // 1974-06-06 16:10:50.062
  // dateTime string
  print(mock.dateTimeString(format: 'MM/dd/yyyy HH:mm:ss')); // 09/29/2046 06:00:37
  /// image
  // image
  print(mock.image()); // http://dummyimage.com/336x280
  print(mock.image(format: mock.ImageFormat.jpg, text: 'hello')); // http://dummyimage.com/234x60.jpg&text=hello
  /// color
  // hex
  print(mock.hex()); // FFEECA31
  print(mock.hex(alpha: false)); // 2E9848
  // hex value, apply to 'Color' constructor for flutter.
  print(mock.hexValue()); // 4288037451
  /// text
  // word
  print(mock.word()); // nrpqzbkkd
  // title
  print(mock.title()); // Ijthnunma Ypylek Nwhdj Clh Dgk Qcycmqhfy Wdufli
  // sentence
  print(mock.sentence()); // Zefpnledb ocdmv jrdvyf gwmdfaycyk eygn djhwnivf sxmlirie lusu jqdu udivkxdfjv wejprnfne llc nxadc fnp pqdexnkfhx osgttekwjo xbhi.
  // paragraph
  print(mock.paragraph()); // Hnnfzvpsy ospczee tyuqikxe lfwqjcnwlu rmtcfmcza ohcb rhvsfdg tdjgswwwze acqe veckj dslgsvitj yoqqimcmb rdzahv xrbg. Ckltgfb gqif bsfbd mlvacddr nkkbimoiuo xhxvwkf lwwu wkys kiptcjfxi clcdcihe hjc xrby. Gvikvr qqlfw opuyjb vvkfvh hkasgork cgtbxizbk gmbsl gprsf mbwluq gmen ienn nffwnspy bqrsxue jwcjunxdv cmjbpfo vkyjyj. Dzrpxluzh ubda gigfoympn mtoplqlv qjcpjpvgam zhlm jvjby wvmuehg sae dtatmsvrw nlnrtftec ltttvw olvgoo nldxpk pnqzlp. Ochbbh athk ynskhtoxvp zufpea vkvvjxf jospem xkvmhiur qppwp tnoe ruwh heqjjqdo coucpkik ynakuq giavuervoj kcgoa vmluef uqmip tsdk.
  // chinese word
  print(mock.cword()); // 技
  // chinese title
  print(mock.ctitle()); // 战严年花山问
  // chinese sentence
  print(mock.csentence()); // 过领任府七市至严观府满情根。
  // chinese paragraph
  print(mock.cparagraph()); // 观主员种备候然速声为发热资最段。场写子记型周看业研具查江原布。机团开山南个据务严万就北儿走位。日书南将取低新影级新报内据。千面非小何好间明划断用提集。行片证用采油国毛多物本论酸色思以火。
  /// name
  // first name
  print(mock.first()); // Betty
  // last name
  print(mock.last()); // Walker
  // name
  print(mock.name()); // Carol Gonzalez
  print(mock.name(middle: true)); // Ronald Kevin Garcia
  // chinese first name
  print(mock.cfirst()); // 洋
  // chinese last name
  print(mock.clast()); // 方
  // chinese name
  print(mock.cname()); // 田涛
  /// web
  // protocol
  print(mock.protocol()); // https
  // tld
  print(mock.tld()); // hr
  // domain
  print(mock.domain()); // rqpcvrxf.pro
  print(mock.domain(tld: 'cn')); // mgmq.cn
  // url
  print(mock.url()); // prospero://xzaxipoer.jo/slgcwpzpw
  print(mock.url(protocol: 'http')); // http://qohzv.ws/nhgoriwxxe
  // email
  print(mock.email()); // vsytekct@pdvohkh.nu
  print(mock.email(host: 'zzzz1997.com')); // tsehp@zzzz1997.com
  // ip
  print(mock.ip()); // 201.113.78.178
  /// address
  // chinese region
  print(mock.region()); // 西南
  // chinese provice
  print(mock.provice()); // 台湾省
  // chinese city
  print(mock.city()); // 镇江市
  print(mock.city(splice: true)); // 香港特别行政区 香港城区
  // chinese county
  print(mock.county()); // 津南区
  print(mock.county(splice: true)); // 宁夏回族自治区 吴忠市 红寺堡区
  // region
  print(mock.zip()); // 753404
  /// helper
  // capitalize
  print(mock.capitalize('hello')); // Hello
  // pick
  print(mock.pick(['h', 'e', 'l', 'l', 'o'])); // l
  /// miscellaneous
  // guid
  print(mock.guid()); // 9d1deFeC-72Fb-9AdD-311Edfe90bF4
  // chinese idCard
  print(mock.idCard()); // 510000199005212285
}
```
