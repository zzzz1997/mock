part of 'package:dart_mock/src/mock_base.dart';

/// image format.
enum ImageFormat {
  /// gif.
  gif,

  /// jpg.
  jpg,

  /// png.
  png
}

/// return a random image url.
///
/// [size] is the size of the image, [width]x[height], example: 320x240.
/// [background] is the background color of the image, example: ffffff, 09f, ef, c.
/// [foreground] is the foreground color of the image, example: ffffff, 09f, ef, c.
/// [format] is the format of the image.
/// [text] is the text you want paint on the image.
String image(
    {String? size,
    String? background,
    String? foreground,
    ImageFormat? format,
    String? text}) {
  size ??= pick(sizes);
  return 'http://dummyimage.com/$size${background != null ? '/$background' : ''}${foreground != null ? '/$foreground' : ''}${format != null ? '.${format.toString().split('.')[1]}' : ''}${text != null ? '&text=$text' : ''}';
}
