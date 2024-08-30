class Items{
  final String itemName;
  final double price;
  final String image;

  Items({required this.itemName, required this.price, required this.image});
}

List<Items> items = [
  Items(itemName: "Coca Cola", price: 2, image: "https://th.bing.com/th/id/OIP.d7eo3BQzmwIrmt9ki3ss5gHaHa?pid=ImgDet&rs=1"),
  Items(itemName: "Pepsi", price: 2.5, image: "https://beverages2u.com/wp-content/uploads/2019/05/0001200010010_B.jpg"),
  Items(itemName: "Fanta", price: 1.5, image: "https://th.bing.com/th/id/R.0c7f715767d70087c1659adad03c2e1e?rik=UTFYdOaTfFwGlw&pid=ImgRaw&r=0"),
  Items(itemName: "7 up", price: 1.2, image: "https://th.bing.com/th/id/R.f93a9f57afb82246cedfbda324b1f11e?rik=jCXN%2f8qRtQsCNQ&pid=ImgRaw&r=0"),
];