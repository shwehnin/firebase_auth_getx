class ProductModel {
  final int? totalSize;
  final int? typeId;
  final int? offset;
  final List<Products>? products;

  ProductModel({
    this.totalSize,
    this.typeId,
    this.offset,
    this.products,
  });

  ProductModel.fromJson(Map<String, dynamic> json)
      : totalSize = json['total_size'] as int?,
        typeId = json['type_id'] as int?,
        offset = json['offset'] as int?,
        products = (json['products'] as List?)
            ?.map((dynamic e) => Products.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'total_size': totalSize,
        'type_id': typeId,
        'offset': offset,
        'products': products?.map((e) => e.toJson()).toList()
      };
}

class Products {
  final int? id;
  final String? name;
  final String? description;
  final int? price;
  final int? stars;
  final String? img;
  final String? location;
  final String? createdAt;
  final String? updatedAt;
  final int? typeId;

  Products({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stars,
    this.img,
    this.location,
    this.createdAt,
    this.updatedAt,
    this.typeId,
  });

  Products.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        description = json['description'] as String?,
        price = json['price'] as int?,
        stars = json['stars'] as int?,
        img = json['img'] as String?,
        location = json['location'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?,
        typeId = json['type_id'] as int?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'price': price,
        'stars': stars,
        'img': img,
        'location': location,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'type_id': typeId
      };
}
