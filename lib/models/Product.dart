import 'package:flutter/material.dart';

import 'ProductItem.dart';

class Product {
  final String imgUrl, title, description, size;
  final int price, id;
  final Color color;
  final List<ProductItem> productItem;

  Product(
      {this.id,
      this.imgUrl,
      this.title,
      this.price,
      this.description,
      this.size,
      this.color,
      this.productItem});
}

List<Product> productList = [
  Product(
    id: 1,
    title: "U-neck T-shirt",
    price: 100,
    size: "M, L",
    description:
        "Typically made of cotton textile in a stockinette, or jersey, knit, it has a distinctively pliable texture compared to shirts made of woven cloth.",
    imgUrl: "http://pngimg.com/uploads/tshirt/tshirt_PNG5450.png",
    color: Colors.blueGrey,
    productItem: [
      ProductItem(
        color: Colors.blueGrey,
        imgUrl: "http://pngimg.com/uploads/tshirt/tshirt_PNG5450.png",
      ),
      ProductItem(
        color: Colors.redAccent,
        imgUrl: "http://pngimg.com/uploads/tshirt/tshirt_PNG5449.png",
      ),
      ProductItem(
        color: Colors.white54,
        imgUrl: "http://pngimg.com/uploads/tshirt/tshirt_PNG5448.png",
      ),
    ],
  ),
  Product(
    id: 2,
    title: "Tie",
    price: 85,
    size: "Fits all",
    description:
        "A necktie, or simply tie, is a long piece of cloth worn for decorative purposes around the neck, resting under the shirt collar and knotted at the throat.",
    imgUrl: "http://pngimg.com/uploads/tie/tie_PNG8193.png",
    color: Color(0xff33385B),
    productItem: [
      ProductItem(
        color: Color(0xff33385B),
        imgUrl: "http://pngimg.com/uploads/tie/tie_PNG8193.png",
      ),
      ProductItem(
        color: Colors.red.shade900,
        imgUrl: "http://pngimg.com/uploads/tie/tie_PNG8194.png",
      ),
      ProductItem(
        color: Color(0xfff42404E),
        imgUrl: "http://pngimg.com/uploads/tie/tie_PNG8192.png",
      ),
      ProductItem(
        color: Colors.grey.shade900,
        imgUrl: "http://pngimg.com/uploads/tie/tie_PNG8191.png",
      ),
    ],
  ),
  Product(
    id: 3,
    title: "Flip-flops",
    price: 35,
    size: "9, 10, 11",
    description:
        "Flip-flops are a type of sandal, typically worn as a form of casual wear. They consist of a flat sole held loosely on the foot by a Y-shaped strap known as a toe thong that passes between the first and second toes and around both sides of the foot.",
    imgUrl: "http://pngimg.com/uploads/flip_flops/flip_flops_PNG65.png",
    color: Colors.green,
    productItem: [
      ProductItem(
        color: Colors.green,
        imgUrl: "http://pngimg.com/uploads/flip_flops/flip_flops_PNG65.png",
      ),
      ProductItem(
        color: Colors.red.shade700,
        imgUrl: "http://pngimg.com/uploads/flip_flops/flip_flops_PNG56.png",
      ),
      ProductItem(
        color: Colors.brown.shade900,
        imgUrl: "http://pngimg.com/uploads/flip_flops/flip_flops_PNG64.png",
      ),
      ProductItem(
        color: Color(0xffAEA080),
        imgUrl: "http://pngimg.com/uploads/flip_flops/flip_flops_PNG3.png",
      ),
      ProductItem(
        color: Color(0xff000000),
        imgUrl: "http://pngimg.com/uploads/flip_flops/flip_flops_PNG55.png",
      ),
    ],
  ),
  Product(
    id: 4,
    title: "Vans",
    price: 70,
    size: "9, 10, 11",
    description:
        "Vans is an American manufacturer of skateboarding shoes and related apparel, based in Santa Ana, California and owned by VF Corporation. The company also sponsors surf, snowboarding, BMX, and motocross teams.[2] Since 1996, the company has been the primary sponsor of the annual Vans Warped Tour traveling rock festival.",
    imgUrl: "http://pngimg.com/uploads/vans/vans_PNG29.png",
    color: Color(0xffE3AB57),
    productItem: [
      ProductItem(
        color: Color(0xff000000),
        imgUrl: "http://pngimg.com/uploads/vans/vans_PNG16.png",
      ),
      ProductItem(
        color: Colors.pinkAccent.shade100,
        imgUrl: "http://pngimg.com/uploads/vans/vans_PNG7.png",
      ),
      ProductItem(
        color: Colors.black,
        imgUrl: "http://pngimg.com/uploads/vans/vans_PNG16.png",
      ),
    ],
  ),
  Product(
    id: 5,
    title: "Crocs",
    price: 40,
    size: "9, 10, 11",
    description:
        "Crocs, Inc. is an American company, based in Niwot, Colorado, that distributes and once manufactured a foam clog shoe",
    imgUrl: "http://pngimg.com/uploads/crocs/crocs_PNG23.png",
    color: Color(0xffFB7A7A),
    productItem: [
      ProductItem(
        color: Color(0xffFB7A7A),
        imgUrl: "http://pngimg.com/uploads/crocs/crocs_PNG23.png",
      ),
      ProductItem(
        color: Colors.green.shade900,
        imgUrl: "http://pngimg.com/uploads/crocs/crocs_PNG18.png",
      ),
      ProductItem(
        color: Colors.black,
        imgUrl: "http://pngimg.com/uploads/crocs/crocs_PNG15.png",
      ),
      ProductItem(
        color: Color(0xffffffff),
        imgUrl: "http://pngimg.com/uploads/crocs/crocs_PNG16.png",
      ),
      ProductItem(
        color: Color(0xff947763),
        imgUrl: "http://pngimg.com/uploads/crocs/crocs_PNG22.png",
      ),
    ],
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
