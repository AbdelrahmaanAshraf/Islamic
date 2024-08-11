class HadithModel {
  String? name;
  String? slug;
  int? total;
  Pagination? pagination;
  List<Items>? items;

  HadithModel({this.name, this.slug, this.total, this.pagination, this.items});

  HadithModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    total = json['total'];
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['slug'] = slug;
    data['total'] = total;
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pagination {
  int? totalItems;
  int? currentPage;
  int? pageSize;
  int? totalPages;
  int? startPage;
  int? endPage;
  int? startIndex;
  int? endIndex;
  List<int>? pages;

  Pagination(
      {this.totalItems,
        this.currentPage,
        this.pageSize,
        this.totalPages,
        this.startPage,
        this.endPage,
        this.startIndex,
        this.endIndex,
        this.pages});

  Pagination.fromJson(Map<String, dynamic> json) {
    totalItems = json['totalItems'];
    currentPage = json['currentPage'];
    pageSize = json['pageSize'];
    totalPages = json['totalPages'];
    startPage = json['startPage'];
    endPage = json['endPage'];
    startIndex = json['startIndex'];
    endIndex = json['endIndex'];
    pages = json['pages'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalItems'] = totalItems;
    data['currentPage'] = currentPage;
    data['pageSize'] = pageSize;
    data['totalPages'] = totalPages;
    data['startPage'] = startPage;
    data['endPage'] = endPage;
    data['startIndex'] = startIndex;
    data['endIndex'] = endIndex;
    data['pages'] = pages;
    return data;
  }
}

class Items {
  int? number;
  String? arab;
  String? id;

  Items({this.number, this.arab, this.id});

  Items.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    arab = json['arab'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['number'] = number;
    data['arab'] = arab;
    data['id'] = id;
    return data;
  }
}