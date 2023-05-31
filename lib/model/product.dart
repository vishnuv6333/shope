import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  final int status;
  final String message;
  final Products products;

  Product({
    required this.status,
    required this.message,
    required this.products,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        status: json["status"],
        message: json["message"],
        products: Products.fromJson(json["products"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "products": products.toJson(),
      };
}

class Products {
  final int currentPage;
  final List<Datum> data;
  final String firstPageUrl;
  final int from;
  final int lastPage;
  final String lastPageUrl;
  final List<Link> links;
  final String nextPageUrl;
  final String path;
  final int perPage;
  final dynamic prevPageUrl;
  final int to;
  final int total;

  Products({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}

class Datum {
  final int id;
  final int storeId;
  final dynamic subStoreId;
  final String storeItemId;
  final String name;
  final dynamic nameLanguage;
  final dynamic kitchenLabel;
  final int categoryId;
  final int subcategoryId;
  final dynamic brandId;
  final dynamic productCode;
  final String coverImage;
  final String videoUrl;
  final dynamic tags;
  final dynamic shortDescription;
  final dynamic shortDescriptionLanguage;
  final String description;
  final dynamic descriptionLanguage;
  final double price;
  final int wp1;
  final double wp2;
  final double offerPrice;
  final String offerLabel;
  final dynamic offerLabelLanguage;
  final dynamic priceNote;
  final int unitId;
  final int maxQty;
  final int available;
  final int popular;
  final bool looseAvailable;
  final dynamic barcode;
  final int sequence;
  final int deliveryCharge;
  final Type deliveryChargeType;
  final int inventoryStock;
  final int tax;
  final int hidePrice;
  final int considerPrice;
  final int isService;
  final Settings settings;
  final List<dynamic> filterProperties;
  final int isCombo;
  final int hasComplementary;
  final int maxComplementaryQty;
  final List<dynamic> variant;
  final List<dynamic> availableVariants;
  final String cardStyle;
  final int active;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic deletedAt;
  final dynamic sectionId;
  final dynamic productRatingsAvgRating;
  final dynamic brand;
  final List<Addon> addons;
  final List<ProductOption> productOptions;
  final List<ProductImage> productImages;
  final List<dynamic> unitQuantities;
  final List<Category> categories;
  final Unit unit;
  final List<dynamic> complementaryProducts;
  final double taxCalc;
  final double totalPrice;
  final double priceTaxed;
  final List<int> cates;

  Datum({
    required this.id,
    required this.storeId,
    required this.subStoreId,
    required this.storeItemId,
    required this.name,
    required this.nameLanguage,
    required this.kitchenLabel,
    required this.categoryId,
    required this.subcategoryId,
    required this.brandId,
    required this.productCode,
    required this.coverImage,
    required this.videoUrl,
    required this.tags,
    required this.shortDescription,
    required this.shortDescriptionLanguage,
    required this.description,
    required this.descriptionLanguage,
    required this.price,
    required this.wp1,
    required this.wp2,
    required this.offerPrice,
    required this.offerLabel,
    required this.offerLabelLanguage,
    required this.priceNote,
    required this.unitId,
    required this.maxQty,
    required this.available,
    required this.popular,
    required this.looseAvailable,
    required this.barcode,
    required this.sequence,
    required this.deliveryCharge,
    required this.deliveryChargeType,
    required this.inventoryStock,
    required this.tax,
    required this.hidePrice,
    required this.considerPrice,
    required this.isService,
    required this.settings,
    required this.filterProperties,
    required this.isCombo,
    required this.hasComplementary,
    required this.maxComplementaryQty,
    required this.variant,
    required this.availableVariants,
    required this.cardStyle,
    required this.active,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.sectionId,
    required this.productRatingsAvgRating,
    required this.brand,
    required this.addons,
    required this.productOptions,
    required this.productImages,
    required this.unitQuantities,
    required this.categories,
    required this.unit,
    required this.complementaryProducts,
    required this.taxCalc,
    required this.totalPrice,
    required this.priceTaxed,
    required this.cates,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        storeId: json["store_id"],
        subStoreId: json["sub_store_id"],
        storeItemId: json["store_item_id"],
        name: json["name"],
        nameLanguage: json["name_language"],
        kitchenLabel: json["kitchen_label"],
        categoryId: json["category_id"],
        subcategoryId: json["subcategory_id"],
        brandId: json["brand_id"],
        productCode: json["product_code"],
        coverImage: json["cover_image"],
        videoUrl: json["video_url"],
        tags: json["tags"],
        shortDescription: json["short_description"],
        shortDescriptionLanguage: json["short_description_language"],
        description: json["description"],
        descriptionLanguage: json["description_language"],
        price: json["price"]?.toDouble(),
        wp1: json["wp_1"],
        wp2: json["wp_2"]?.toDouble(),
        offerPrice: json["offer_price"]?.toDouble(),
        offerLabel: json["offer_label"],
        offerLabelLanguage: json["offer_label_language"],
        priceNote: json["price_note"],
        unitId: json["unit_id"],
        maxQty: json["max_qty"],
        available: json["available"],
        popular: json["popular"],
        looseAvailable: json["loose_available"],
        barcode: json["barcode"],
        sequence: json["sequence"],
        deliveryCharge: json["delivery_charge"],
        deliveryChargeType: typeValues.map[json["delivery_charge_type"]]!,
        inventoryStock: json["inventory_stock"],
        tax: json["tax"],
        hidePrice: json["hide_price"],
        considerPrice: json["consider_price"],
        isService: json["is_service"],
        settings: Settings.fromJson(json["settings"]),
        filterProperties:
            List<dynamic>.from(json["filter_properties"].map((x) => x)),
        isCombo: json["is_combo"],
        hasComplementary: json["has_complementary"],
        maxComplementaryQty: json["max_complementary_qty"],
        variant: List<dynamic>.from(json["variant"].map((x) => x)),
        availableVariants:
            List<dynamic>.from(json["available_variants"].map((x) => x)),
        cardStyle: json["card_style"],
        active: json["active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        sectionId: json["section_id"],
        productRatingsAvgRating: json["product_ratings_avg_rating"],
        brand: json["brand"],
        addons: List<Addon>.from(json["addons"].map((x) => Addon.fromJson(x))),
        productOptions: List<ProductOption>.from(
            json["product_options"].map((x) => ProductOption.fromJson(x))),
        productImages: List<ProductImage>.from(
            json["product_images"].map((x) => ProductImage.fromJson(x))),
        unitQuantities:
            List<dynamic>.from(json["unit_quantities"].map((x) => x)),
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
        unit: Unit.fromJson(json["unit"]),
        complementaryProducts:
            List<dynamic>.from(json["complementary_products"].map((x) => x)),
        taxCalc: json["tax_calc"]?.toDouble(),
        totalPrice: json["total_price"]?.toDouble(),
        priceTaxed: json["price_taxed"]?.toDouble(),
        cates: List<int>.from(json["cates"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "store_id": storeId,
        "sub_store_id": subStoreId,
        "store_item_id": storeItemId,
        "name": name,
        "name_language": nameLanguage,
        "kitchen_label": kitchenLabel,
        "category_id": categoryId,
        "subcategory_id": subcategoryId,
        "brand_id": brandId,
        "product_code": productCode,
        "cover_image": coverImage,
        "video_url": videoUrl,
        "tags": tags,
        "short_description": shortDescription,
        "short_description_language": shortDescriptionLanguage,
        "description": description,
        "description_language": descriptionLanguage,
        "price": price,
        "wp_1": wp1,
        "wp_2": wp2,
        "offer_price": offerPrice,
        "offer_label": offerLabel,
        "offer_label_language": offerLabelLanguage,
        "price_note": priceNote,
        "unit_id": unitId,
        "max_qty": maxQty,
        "available": available,
        "popular": popular,
        "loose_available": looseAvailable,
        "barcode": barcode,
        "sequence": sequence,
        "delivery_charge": deliveryCharge,
        "delivery_charge_type": typeValues.reverse[deliveryChargeType],
        "inventory_stock": inventoryStock,
        "tax": tax,
        "hide_price": hidePrice,
        "consider_price": considerPrice,
        "is_service": isService,
        "settings": settings.toJson(),
        "filter_properties": List<dynamic>.from(filterProperties.map((x) => x)),
        "is_combo": isCombo,
        "has_complementary": hasComplementary,
        "max_complementary_qty": maxComplementaryQty,
        "variant": List<dynamic>.from(variant.map((x) => x)),
        "available_variants":
            List<dynamic>.from(availableVariants.map((x) => x)),
        "card_style": cardStyle,
        "active": active,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "section_id": sectionId,
        "product_ratings_avg_rating": productRatingsAvgRating,
        "brand": brand,
        "addons": List<dynamic>.from(addons.map((x) => x.toJson())),
        "product_options":
            List<dynamic>.from(productOptions.map((x) => x.toJson())),
        "product_images":
            List<dynamic>.from(productImages.map((x) => x.toJson())),
        "unit_quantities": List<dynamic>.from(unitQuantities.map((x) => x)),
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "unit": unit.toJson(),
        "complementary_products":
            List<dynamic>.from(complementaryProducts.map((x) => x)),
        "tax_calc": taxCalc,
        "total_price": totalPrice,
        "price_taxed": priceTaxed,
        "cates": List<dynamic>.from(cates.map((x) => x)),
      };
}

class Addon {
  final int id;
  final int storeId;
  final String name;
  final ShortDescriptionLanguageClass nameLanguage;
  final double price;
  final Type quantityType;
  final int active;
  final DateTime createdAt;
  final DateTime updatedAt;
  final AddonPivot pivot;
  final double taxCalc;
  final double totalPrice;

  Addon({
    required this.id,
    required this.storeId,
    required this.name,
    required this.nameLanguage,
    required this.price,
    required this.quantityType,
    required this.active,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
    required this.taxCalc,
    required this.totalPrice,
  });

  factory Addon.fromJson(Map<String, dynamic> json) => Addon(
        id: json["id"],
        storeId: json["store_id"],
        name: json["name"],
        nameLanguage:
            ShortDescriptionLanguageClass.fromJson(json["name_language"]),
        price: json["price"]?.toDouble(),
        quantityType: typeValues.map[json["quantity_type"]]!,
        active: json["active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        pivot: AddonPivot.fromJson(json["pivot"]),
        taxCalc: json["tax_calc"]?.toDouble(),
        totalPrice: json["total_price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "store_id": storeId,
        "name": name,
        "name_language": nameLanguage.toJson(),
        "price": price,
        "quantity_type": typeValues.reverse[quantityType],
        "active": active,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "pivot": pivot.toJson(),
        "tax_calc": taxCalc,
        "total_price": totalPrice,
      };
}

class ShortDescriptionLanguageClass {
  final Ml ml;

  ShortDescriptionLanguageClass({
    required this.ml,
  });

  factory ShortDescriptionLanguageClass.fromJson(Map<String, dynamic> json) =>
      ShortDescriptionLanguageClass(
        ml: mlValues.map[json["Ml"]]!,
      );

  Map<String, dynamic> toJson() => {
        "Ml": mlValues.reverse[ml],
      };
}

enum Ml { EMPTY }

final mlValues = EnumValues({"വിശദാംശങ്ങൾ": Ml.EMPTY});

class AddonPivot {
  final int productId;
  final int addonId;
  final double price;
  final int selectedDefault;
  final DateTime createdAt;
  final DateTime updatedAt;

  AddonPivot({
    required this.productId,
    required this.addonId,
    required this.price,
    required this.selectedDefault,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AddonPivot.fromJson(Map<String, dynamic> json) => AddonPivot(
        productId: json["product_id"],
        addonId: json["addon_id"],
        price: json["price"]?.toDouble(),
        selectedDefault: json["selected_default"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "addon_id": addonId,
        "price": price,
        "selected_default": selectedDefault,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

enum Type { FLEXIBLE, FIXED }

final typeValues = EnumValues({"fixed": Type.FIXED, "flexible": Type.FLEXIBLE});

class Category {
  final int id;
  final int storeId;
  final dynamic subStoreId;
  final int parentId;
  final String name;
  final dynamic nameLanguage;
  final String image;
  final int sequence;
  final String timeFrom;
  final String timeTo;
  final List<dynamic> filterProperties;
  final int level;
  final int active;
  final DateTime createdAt;
  final DateTime updatedAt;
  final CategoryPivot pivot;

  Category({
    required this.id,
    required this.storeId,
    required this.subStoreId,
    required this.parentId,
    required this.name,
    required this.nameLanguage,
    required this.image,
    required this.sequence,
    required this.timeFrom,
    required this.timeTo,
    required this.filterProperties,
    required this.level,
    required this.active,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        storeId: json["store_id"],
        subStoreId: json["sub_store_id"],
        parentId: json["parent_id"],
        name: json["name"],
        nameLanguage: json["name_language"],
        image: json["image"],
        sequence: json["sequence"],
        timeFrom: json["time_from"],
        timeTo: json["time_to"],
        filterProperties:
            List<dynamic>.from(json["filter_properties"].map((x) => x)),
        level: json["level"],
        active: json["active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        pivot: CategoryPivot.fromJson(json["pivot"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "store_id": storeId,
        "sub_store_id": subStoreId,
        "parent_id": parentId,
        "name": name,
        "name_language": nameLanguage,
        "image": image,
        "sequence": sequence,
        "time_from": timeFrom,
        "time_to": timeTo,
        "filter_properties": List<dynamic>.from(filterProperties.map((x) => x)),
        "level": level,
        "active": active,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "pivot": pivot.toJson(),
      };
}

class DescriptionLanguageClass {
  final String ml;
  final String ar;

  DescriptionLanguageClass({
    required this.ml,
    required this.ar,
  });

  factory DescriptionLanguageClass.fromJson(Map<String, dynamic> json) =>
      DescriptionLanguageClass(
        ml: json["Ml"],
        ar: json["Ar"],
      );

  Map<String, dynamic> toJson() => {
        "Ml": ml,
        "Ar": ar,
      };
}

class CategoryPivot {
  final int productId;
  final int categoryId;

  CategoryPivot({
    required this.productId,
    required this.categoryId,
  });

  factory CategoryPivot.fromJson(Map<String, dynamic> json) => CategoryPivot(
        productId: json["product_id"],
        categoryId: json["category_id"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "category_id": categoryId,
      };
}

class ProductImage {
  final int id;
  final int productId;
  final String image;
  final int sequence;
  final DateTime createdAt;
  final DateTime updatedAt;

  ProductImage({
    required this.id,
    required this.productId,
    required this.image,
    required this.sequence,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductImage.fromJson(Map<String, dynamic> json) => ProductImage(
        id: json["id"],
        productId: json["product_id"],
        image: json["image"],
        sequence: json["sequence"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "image": image,
        "sequence": sequence,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class ProductOption {
  final int id;
  final int productId;
  final String name;
  final DescriptionLanguageClass nameLanguage;
  final double price;
  final int offerPrice;
  final int wp1;
  final int wp2;
  final int selectedDefault;
  final DateTime createdAt;
  final DateTime updatedAt;
  final double taxCalc;
  final double priceTaxed;
  final double totalPrice;

  ProductOption({
    required this.id,
    required this.productId,
    required this.name,
    required this.nameLanguage,
    required this.price,
    required this.offerPrice,
    required this.wp1,
    required this.wp2,
    required this.selectedDefault,
    required this.createdAt,
    required this.updatedAt,
    required this.taxCalc,
    required this.priceTaxed,
    required this.totalPrice,
  });

  factory ProductOption.fromJson(Map<String, dynamic> json) => ProductOption(
        id: json["id"],
        productId: json["product_id"],
        name: json["name"],
        nameLanguage: DescriptionLanguageClass.fromJson(json["name_language"]),
        price: json["price"]?.toDouble(),
        offerPrice: json["offer_price"],
        wp1: json["wp_1"],
        wp2: json["wp_2"],
        selectedDefault: json["selected_default"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        taxCalc: json["tax_calc"]?.toDouble(),
        priceTaxed: json["price_taxed"]?.toDouble(),
        totalPrice: json["total_price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "name": name,
        "name_language": nameLanguage.toJson(),
        "price": price,
        "offer_price": offerPrice,
        "wp_1": wp1,
        "wp_2": wp2,
        "selected_default": selectedDefault,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "tax_calc": taxCalc,
        "price_taxed": priceTaxed,
        "total_price": totalPrice,
      };
}

class Settings {
  final int bulkQtyAvailable;

  Settings({
    required this.bulkQtyAvailable,
  });

  factory Settings.fromJson(Map<String, dynamic> json) => Settings(
        bulkQtyAvailable: json["bulk_qty_available"],
      );

  Map<String, dynamic> toJson() => {
        "bulk_qty_available": bulkQtyAvailable,
      };
}

class Unit {
  final int id;
  final int storeId;
  final Name name;
  final ShortForm shortForm;
  final ShortFormLanguage shortFormLanguage;
  final TypeEnum type;
  final int active;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int selectedDefault;

  Unit({
    required this.id,
    required this.storeId,
    required this.name,
    required this.shortForm,
    required this.shortFormLanguage,
    required this.type,
    required this.active,
    required this.createdAt,
    required this.updatedAt,
    required this.selectedDefault,
  });

  factory Unit.fromJson(Map<String, dynamic> json) => Unit(
        id: json["id"],
        storeId: json["store_id"],
        name: nameValues.map[json["name"]]!,
        shortForm: shortFormValues.map[json["short_form"]]!,
        shortFormLanguage:
            ShortFormLanguage.fromJson(json["short_form_language"]),
        type: typeEnumValues.map[json["type"]]!,
        active: json["active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        selectedDefault: json["selected_default"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "store_id": storeId,
        "name": nameValues.reverse[name],
        "short_form": shortFormValues.reverse[shortForm],
        "short_form_language": shortFormLanguage.toJson(),
        "type": typeEnumValues.reverse[type],
        "active": active,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "selected_default": selectedDefault,
      };
}

enum Name { NUMBER, ROLL, MILLILITRE, PIECE }

final nameValues = EnumValues({
  "Millilitre": Name.MILLILITRE,
  "Number": Name.NUMBER,
  "piece": Name.PIECE,
  "ROLL": Name.ROLL
});

enum ShortForm { NO, ROLL, ML, PC }

final shortFormValues = EnumValues({
  "ml": ShortForm.ML,
  "No": ShortForm.NO,
  "pc": ShortForm.PC,
  "ROLL": ShortForm.ROLL
});

class ShortFormLanguage {
  final dynamic ar;

  ShortFormLanguage({
    required this.ar,
  });

  factory ShortFormLanguage.fromJson(Map<String, dynamic> json) =>
      ShortFormLanguage(
        ar: json["Ar"],
      );

  Map<String, dynamic> toJson() => {
        "Ar": ar,
      };
}

enum TypeEnum { SINGLE_UNIT, WEIGHT, VOLUME }

final typeEnumValues = EnumValues({
  "single_unit": TypeEnum.SINGLE_UNIT,
  "volume": TypeEnum.VOLUME,
  "weight": TypeEnum.WEIGHT
});

class Link {
  final String url;
  final String label;
  final bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "label": label,
        "active": active,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
