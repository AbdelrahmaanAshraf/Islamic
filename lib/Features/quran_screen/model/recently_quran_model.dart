class RecentlyQuranModel {
  String suraName;
  String suraNameEng;
  int ayahsNumber;

  RecentlyQuranModel(
      {required this.suraName,
      required this.suraNameEng,
      required this.ayahsNumber});

  List<RecentlyQuranModel> recentQuranList = [];
}
