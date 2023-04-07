import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grapmart01/widget/custom_appbar.dart';
import 'package:grapmart01/widget/reusablerow.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://ridecare.s3.ap-south-1.amazonaws.com/grapmart/grapmart-1672505976-2610-Banner%20002-02.png',
      'https://ridecare.s3.ap-south-1.amazonaws.com/grapmart/grapmart-1672505886-3022-Banner%20001-02.png',
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(
                item,
                fit: BoxFit.cover,
                width: double.infinity,
                height:150,
              ),
            ],
          )),
    ))
        .toList();
    return Scaffold(
      appBar: CustomAppbar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        children: <Widget>[
          Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.3,
                  viewportFraction: 1.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 2,
                  autoPlay: true,
                ),
                items: imageSliders,
              )),
          Image.network(
            "https://ridecare.s3.ap-south-1.amazonaws.com/grapmart/grapmart-1672838442-8974-ads-02.png",
          ),
          SizedBox(height: 20,),
          ReusableRow(
            photo: 'https://grapmart.com/product.jpg',
            title: 'JBL XB-450 Stereo Headphones',
            title1: 'Good Luck Scholar Scale (30cm)',
            subtitle: 'Tk.450.00',
            subtitle1: 'Tk.450.00',
            photo1: 'https://grapmart.com/product.jpg',
          ),
          SizedBox(height: 20,),
          ReusableRow(
            photo: 'https://inv.grapfood.com/uploads/img/1671694096_jbl%20xb450u.jpg',
            title: 'JBL XB-450 Stereo Headphones',
            title1: 'Good Luck Scholar Scale (30cm)',
            subtitle: 'Tk.450.00',
            subtitle1: 'Tk.450.00',
            photo1: 'https://inv.grapfood.com/uploads/img/1671696808_Good%20Luck%20Scholar%20Scale%20(30cm).jpg',
          ),
          SizedBox(height: 20,),
          ReusableRow(
            photo: 'https://grapmart.com/product.jpg',
            title: 'JBL XB-450 Stereo Headphones',
            title1: 'Good Luck Scholar Scale (30cm)',
            subtitle: 'Tk.450.00',
            subtitle1: 'Tk.450.00',
            photo1: 'https://grapmart.com/product.jpg',
          ),
          SizedBox(height: 20,),
          ReusableRow(
            photo: 'https://inv.grapfood.com/uploads/img/1671694096_jbl%20xb450u.jpg',
            title: 'JBL XB-450 Stereo Headphones',
            title1: 'Good Luck Scholar Scale (30cm)',
            subtitle: 'Tk.450.00',
            subtitle1: 'Tk.450.00',
            photo1: 'https://inv.grapfood.com/uploads/img/1671696808_Good%20Luck%20Scholar%20Scale%20(30cm).jpg',
          ),
          SizedBox(height: 20,),
          ReusableRow(
            photo: 'https://grapmart.com/product.jpg',
            title: 'JBL XB-450 Stereo Headphones',
            title1: 'Good Luck Scholar Scale (30cm)',
            subtitle: 'Tk.450.00',
            subtitle1: 'Tk.450.00',
            photo1: 'https://grapmart.com/product.jpg',
          ),
          SizedBox(height: 20,),
          ReusableRow(
            photo: 'https://inv.grapfood.com/uploads/img/1671694096_jbl%20xb450u.jpg',
            title: 'JBL XB-450 Stereo Headphones',
            title1: 'Good Luck Scholar Scale (30cm)',
            subtitle: 'Tk.450.00',
            subtitle1: 'Tk.450.00',
            photo1: 'https://inv.grapfood.com/uploads/img/1671696808_Good%20Luck%20Scholar%20Scale%20(30cm).jpg',
          ),
          SizedBox(height: 20,),
          ReusableRow(
            photo: 'https://grapmart.com/product.jpg',
            title: 'JBL XB-450 Stereo Headphones',
            title1: 'Good Luck Scholar Scale (30cm)',
            subtitle: 'Tk.450.00',
            subtitle1: 'Tk.450.00',
            photo1: 'https://grapmart.com/product.jpg',
          ),
          SizedBox(height: 20,),
          ReusableRow(
            photo: 'https://inv.grapfood.com/uploads/img/1671694096_jbl%20xb450u.jpg',
            title: 'JBL XB-450 Stereo Headphones',
            title1: 'Good Luck Scholar Scale (30cm)',
            subtitle: 'Tk.450.00',
            subtitle1: 'Tk.450.00',
            photo1: 'https://inv.grapfood.com/uploads/img/1671696808_Good%20Luck%20Scholar%20Scale%20(30cm).jpg',
          ),
          SizedBox(height: 20,),
          ReusableRow(
            photo: 'https://grapmart.com/product.jpg',
            title: 'JBL XB-450 Stereo Headphones',
            title1: 'Good Luck Scholar Scale (30cm)',
            subtitle: 'Tk.450.00',
            subtitle1: 'Tk.450.00',
            photo1: 'https://grapmart.com/product.jpg',
          ),
          SizedBox(height: 20,),
          ReusableRow(
            photo: 'https://inv.grapfood.com/uploads/img/1671694096_jbl%20xb450u.jpg',
            title: 'JBL XB-450 Stereo Headphones',
            title1: 'Good Luck Scholar Scale (30cm)',
            subtitle: 'Tk.450.00',
            subtitle1: 'Tk.450.00',
            photo1: 'https://inv.grapfood.com/uploads/img/1671696808_Good%20Luck%20Scholar%20Scale%20(30cm).jpg',
          ),
          SizedBox(height: 20,),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
