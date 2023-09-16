import '../constants/export.dart';

class SvgUtils {
  static const pdf = SvgAssetLoader(ImagesResource.pdf);
  static const signIn = SvgAssetLoader(ImagesResource.signIn);
  static const signUp = SvgAssetLoader(ImagesResource.signUp);

  static void preCacheSVGs() {
    Future.wait([
      svg.cache.putIfAbsent(pdf.cacheKey(null), () => pdf.loadBytes(null)),
      svg.cache
          .putIfAbsent(signIn.cacheKey(null), () => signIn.loadBytes(null)),
      svg.cache
          .putIfAbsent(signUp.cacheKey(null), () => signUp.loadBytes(null)),
    ]);
  }
}
