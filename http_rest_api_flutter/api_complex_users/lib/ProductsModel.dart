class ProductsModel {
  bool? success;
  String? message;
  List<Data>? data;

  ProductsModel({this.success, this.message, this.data});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    success = json["success"];
    message = json["message"];
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["success"] = success;
    data["message"] = message;
    data["data"] = data.map((e) => e.toJson()).toList();
    return data;
  }
}

class Data {
  String? id;
  bool? isActive;
  String? createdAt;
  String? name;
  String? description;
  String? shopemail;
  String? shopaddress;
  String? shopcity;
  String? userid;
  String? image;
  int? v;
  List<Products>? products;

  Data(
      {this.id,
      this.isActive,
      this.createdAt,
      this.name,
      this.description,
      this.shopemail,
      this.shopaddress,
      this.shopcity,
      this.userid,
      this.image,
      this.v,
      this.products});

  Data.fromJson(Map<String, dynamic> json) {
    id = json["_id"];
    isActive = json["is_active"];
    createdAt = json["created_at"];
    name = json["name"];
    description = json["description"];
    shopemail = json["shopemail"];
    shopaddress = json["shopaddress"];
    shopcity = json["shopcity"];
    userid = json["userid"];
    image = json["image"];
    v = json["__v"];
    products = json["products"] == null
        ? null
        : (json["products"] as List).map((e) => Products.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["_id"] = id;
    data["is_active"] = isActive;
    data["created_at"] = createdAt;
    data["name"] = name;
    data["description"] = description;
    data["shopemail"] = shopemail;
    data["shopaddress"] = shopaddress;
    data["shopcity"] = shopcity;
    data["userid"] = userid;
    data["image"] = image;
    data["__v"] = v;
    if (products != null) {
      data["products"] = products?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String? id;
  bool? onSale;
  int? salePercent;
  int? sold;
  bool? sliderNew;
  bool? sliderRecent;
  bool? sliderSold;
  String? date;
  String? title;
  String? categories;
  String? subcate;
  String? shop;
  String? price;
  String? saleTitle;
  String? salePrice;
  String? description;
  String? colors;
  String? size;
  List<Images>? images;
  int? v;
  bool? inWishlist;

  Products(
      {this.id,
      this.onSale,
      this.salePercent,
      this.sold,
      this.sliderNew,
      this.sliderRecent,
      this.sliderSold,
      this.date,
      this.title,
      this.categories,
      this.subcate,
      this.shop,
      this.price,
      this.saleTitle,
      this.salePrice,
      this.description,
      this.colors,
      this.size,
      this.images,
      this.v,
      this.inWishlist});

  Products.fromJson(Map<String, dynamic> json) {
    id = json["_id"];
    onSale = json["on_sale"];
    salePercent = json["sale_percent"];
    sold = json["sold"];
    sliderNew = json["slider_new"];
    sliderRecent = json["slider_recent"];
    sliderSold = json["slider_sold"];
    date = json["date"];
    title = json["title"];
    categories = json["categories"];
    subcate = json["subcate"];
    shop = json["shop"];
    price = json["price"];
    saleTitle = json["sale_title"];
    salePrice = json["sale_price"];
    description = json["description"];
    colors = json["colors"];
    size = json["size"];
    images = json["images"] == null
        ? null
        : (json["images"] as List).map((e) => Images.fromJson(e)).toList();
    v = json["__v"];
    inWishlist = json["in_wishlist"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["_id"] = id;
    data["on_sale"] = onSale;
    data["sale_percent"] = salePercent;
    data["sold"] = sold;
    data["slider_new"] = sliderNew;
    data["slider_recent"] = sliderRecent;
    data["slider_sold"] = sliderSold;
    data["date"] = date;
    data["title"] = title;
    data["categories"] = categories;
    data["subcate"] = subcate;
    data["shop"] = shop;
    data["price"] = price;
    data["sale_title"] = saleTitle;
    data["sale_price"] = salePrice;
    data["description"] = description;
    data["colors"] = colors;
    data["size"] = size;
    if (images != null) {
      data["images"] = images?.map((e) => e.toJson()).toList();
    }
    data["__v"] = v;
    data["in_wishlist"] = inWishlist;
    return data;
  }
}

class Images {
  String? id;
  String? filename;
  String? url;

  Images({this.id, this.filename, this.url});

  Images.fromJson(Map<String, dynamic> json) {
    id = json["_id"];
    filename = json["filename"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["_id"] = id;
    data["filename"] = filename;
    data["url"] = url;
    return data;
  }
}
