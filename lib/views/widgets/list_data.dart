import 'package:flutter/material.dart';

//TODO: Trending DATA
class TrendingData {
  Map trending_data = {
    "data": [
      {
        "name": "Saim",
        "rating": "4.3",
        "image": "images/dp2.jpg",
        "likes": "478",
        "view": "1122",
        "items": "4",
        "price": "122 \$",
        "artname": "Calligraphy",
        "totalReview": "452",
      },
      {
        "name": "Ahsan",
        "rating": "4.3",
        "image": "images/dp2.jpg",
        "likes": "234",
        "view": "123",
        "items": "2",
        "price": "32 \$",
        "artname": "The Calligraphy",
        "totalReview": "213",
      },
      {
        "name": "Nomi",
        "rating": "4.1",
        "image": "images/ava.png",
        "likes": "421",
        "view": "321",
        "items": "12",
        "price": "321 \$",
        "artname": "Abstract Calligraphy",
        "totalReview": "452",
      },
      {
        "name": "Saad",
        "rating": "4.1",
        "image": "images/ava.png",
        "likes": "553",
        "view": "1122",
        "items": "4",
        "price": "122 \$",
        "artname": "Calligraphy",
        "totalReview": "452",
      },
      {
        "name": "Jolly",
        "rating": "2.3",
        "image": "images/dp2.jpg",
        "likes": "434",
        "view": "578",
        "items": "32",
        "price": "757 \$",
        "artname": "Calligraphy on Canvas",
        "totalReview": "452",
      },
      {
        "name": "Asad",
        "rating": "4.3",
        "image": "images/ava.png",
        "likes": "736",
        "view": "6814",
        "items": "45",
        "price": "175 \$",
        "artname": "Abtract On canvas",
        "totalReview": "432",
      },
    ]
  };
  List _data;

//function to fetch the data

  TrendingData() {
    _data = trending_data["data"];
  }

  String getName(int index) {
    return _data[index]["name"];
  }

  String getImage(int index) {
    return _data[index]["image"];
  }

  String getRating(int index) {
    return _data[index]["rating"];
  }

  String getLikes(int index) {
    return _data[index]["likes"];
  }

  String getPrice(int index) {
    return _data[index]["price"];
  }

  String getArtName(int index) {
    return _data[index]["artname"];
  }

  String getView(int index) {
    return _data[index]["view"];
  }

  String getItem(int index) {
    return _data[index]["items"];
  }

  String getPriceTotalReview(int index) {
    return _data[index]["totalReview"];
  }

  int getLength() {
    return _data.length;
  }
}
//**********************************************************************

//TODO: Round CARD DATA
class RoundCardData {
  Map RoundCard = {
    "data": [
      {"name": "Ahsan", "image": "images/ava.png"},
      {"name": "Art", "image": "images/dp2.jpg"},
      {"name": "Sam", "image": "images/dp2.jpg"},
      {"name": "Ali", "image": "images/ava.png"},
      {"name": "Sohail", "image": "images/ava.png"},
      {"name": "Kinza", "image": "images/dp2.jpg"},
      {"name": "Bushra", "image": "images/ava.png"},
      {"name": "osama", "image": "images/dp2.jpg"},
    ]
  };
  List _round;

//function to fetch the data

  RoundCardData() {
    _round = RoundCard["data"];
  }

  String getName(int index) {
    return _round[index]["name"];
  }

  String getImage(int index) {
    return _round[index]["image"];
  }

  int getLength() {
    return _round.length;
  }
}
//********************************************************************************

//TODO: Review CARD DATA
class ReviewData {
  Map Rev = {
    "data": [
      {
        "name": "Ahsan",
        "image": "images/dp2.jpg",
        "message": "hello this and art my favorite artwork "
      },
      {
        "name": "Art",
        "image": "images/dp2.jpg",
        "message":
            "hello world , master piece hello this and art my favorite artwork, master piece hello this and art my favorite artwork,master piece hello this and art my favorite artwork,master piece hello this and art my favorite artwork "
      },
      {
        "name": "Sam",
        "image": "images/ava.png",
        "message": "hello this and art my favorite artwork "
      }
    ]
  };
  List _review;

//function to fetch the data

  ReviewData() {
    _review = Rev["data"];
  }

  String getName(int index) {
    return _review[index]["name"];
  }

  String getImage(int index) {
    return _review[index]["image"];
  }

  String getMessage(int index) {
    return _review[index]["message"];
  }

  int getLength() {
    return _review.length;
  }
}

//TODO: Notification CARD DATA
class NotificationData {
  Map Notify = {
    "data": [
      {
        "order": "Order Place",
        "image": "images/ava.png",
        "message": "Your Order number #984842 was placed on 14 December 2020 "
      },
      {
        "order": "Delivered",
        "image": "images/dp2.jpg",
        "message": "Your Order number #221221 was placed on 21st December 2020 "
      },
      {
        "order": "Delivered",
        "image": "images/ava.png",
        "message": "Your Order number #73294 was placed on  2 January 2021 "
      }
    ]
  };
  List _nofication;

//function to fetch the data

  NotificationData() {
    _nofication = Notify["data"];
  }

  String getOrder(int index) {
    return _nofication[index]["order"];
  }

  String getImage(int index) {
    return _nofication[index]["image"];
  }

  String getMessage(int index) {
    return _nofication[index]["message"];
  }

  int getLength() {
    return _nofication.length;
  }
}

//TODO: Offer DATA
Map Offer = {
  "data": [
    {
      "name": "Ahsan",
      "image": "images/ava.png",
      "location": "Rawalpindi,Pakistan ",
      "time": "12:30",
      "offer": "52\$",
      "payment": "cash on Delivery",
      "artName": "The Calligraphy",
      "price": "59\$",
      "artImage": "imageSlide/p3.jpg",
      "date": "11/5/2020",
      "hour": "9h43",
      "delivery": "DHL",
      "local": "Islamabad,Pakistan"
    },
    {
      "name": "Raza",
      "image": "images/dp2.jpg",
      "location": "Lahore,Pakistan ",
      "time": "11:08",
      "offer": "38\$",
      "payment": "Credit Card",
      "artName": "The Artiso",
      "price": "45\$",
      "artImage": "imageSlide/p1.jpg",
      "delivery": "AirMail",
      "date": "11/5/2020",
      "hour": "9h43",
      "local": "Islamabad,Pakistan"
    },
    {
      "name": "Osama",
      "image": "images/ava.png",
      "location": "RawalPindi,Pakistan ",
      "time": "3:30",
      "offer": "15\$",
      "payment": "cash on Delivery",
      "artName": "Surface",
      "price": "32\$",
      "artImage": "imageSlide/p2.jpg",
      "date": "11/5/2020",
      "hour": "9h43",
      "delivery": "Feedx",
      "local": "Islamabad,Pakistan"
    },
    {
      "name": "Raza",
      "image": "images/dp2.jpg",
      "location": "Lahore,Pakistan ",
      "time": "11:08",
      "offer": "38\$",
      "payment": "Credit Card",
      "artName": "The Artiso",
      "price": "45\$",
      "date": "11/5/2020",
      "hour": "9h43",
      "artImage": "imageSlide/p1.jpg",
      "delivery": "AirMail",
      "local": "Islamabad,Pakistan"
    },
    {
      "name": "Raza",
      "image": "images/dp2.jpg",
      "location": "Lahore,Pakistan ",
      "offer": "38\$",
      "payment": "Credit Card",
      "artName": "The Artiso",
      "price": "45\$",
      "artImage": "imageSlide/p1.jpg",
      "date": "11/5/2020",
      "hour": "9h43",
      "delivery": "DHL",
      "local": "Islamabad,Pakistan"
    },
  ]
};

class OfferData {
  List _offer;

//function to fetch the data

  OfferData() {
    _offer = Offer["data"];
  }

  String getName(int index) {
    return _offer[index]["name"];
  }

  String getImage(int index) {
    return _offer[index]["image"];
  }

  String getLocation(int index) {
    return _offer[index]["location"];
  }

  String getDate(int index) {
    return _offer[index]["date"];
  }

  String getHours(int index) {
    return _offer[index]["hour"];
  }

  String getPrice(int index) {
    return _offer[index]["price"];
  }

  String getOffer(int index) {
    return _offer[index]["offer"];
  }

  String getArt(int index) {
    return _offer[index]["artName"];
  }

  String getPayment(int index) {
    return _offer[index]["payment"];
  }

  String getDelivery(int index) {
    return _offer[index]["delivery"];
  }

  String getLocal(int index) {
    return _offer[index]["local"];
  }

  String getArtImage(int index) {
    return _offer[index]["artImage"];
  }

  int getLength() {
    return _offer.length;
  }
}

//TODO: Receive Offer DATA (Artist)
class OfferReceive {
  Map Receive = {
    "data": [
      {
        "name": "Ahsan",
        "image": "images/ava.png",
        "artImage": "imageSlide/p1.jpg",
        "location": "Rawalpindi,Pakistan ",
        "number": "12321",
        "artName": "Art",
      },
      {
        "name": "Raza",
        "image": "images/dp2.jpg",
        "location": "Islamabad,Pakistan ",
        "number": "13341",
        "artName": "The Calligraphy",
        "artImage": "imageSlide/p2.jpg",
      },
      {
        "name": "Jio",
        "image": "images/ava.png",
        "location": "Islamabad,Pakistan ",
        "number": "8239",
        "artName": "Betta",
        "artImage": "imageSlide/p2.jpg",
      },
      {
        "name": "Atif",
        "image": "images/dp2.jpg",
        "location": "Lahore,Pakistan ",
        "number": "43123",
        "artName": "The Hei",
        "artImage": "imageSlide/p3.jpg",
      },
      {
        "name": "Osama",
        "image": "images/ava.png",
        "location": "Islamabad,Pakistan ",
        "number": "23114",
        "artName": "Calligraphy",
        "artImage": "imageSlide/p1.jpg",
      }
    ]
  };
  List _receive;

//function to fetch the data

  OfferReceive() {
    _receive = Receive["data"];
  }

  String getName(int index) {
    return _receive[index]["name"];
  }

  String getImage(int index) {
    return _receive[index]["image"];
  }

  String getArtImage(int index) {
    return _receive[index]["artImage"];
  }

  String getArtName(int index) {
    return _receive[index]["artName"];
  }

  String getLocation(int index) {
    return _receive[index]["location"];
  }

  String getNumber(int index) {
    return _receive[index]["number"];
  }

  int getLength() {
    return _receive.length;
  }
}
