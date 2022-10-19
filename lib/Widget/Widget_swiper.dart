import 'package:flutter/material.dart';
import 'package:personarandom/Model/Model_persone.dart';
import 'package:personarandom/Widget/Widger_info.dart';
import 'package:carousel_slider/carousel_slider.dart';

/*Widget listSwiper(List<ModelDatos> data){
  int num = 0;
  return Container(
    height: 320.0,
    child: CarouselSlider(
      options: CarouselOptions(height: 400.0,
      onPageChanged: (index, r){
        num = index;
        print("Pagina $num");
      }),
      items: data.map((element){
        return Builder(
          builder: (BuildContext context){
            return Card(
              child: Text(element.firstname),//Image.network(element.image , fit: BoxFit.fill),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.all(20.0),
              color: Color.fromARGB(255, 174, 201, 250),
            );
          },
        );
      }).toList(),
      /*itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Image.network(data[index].image , fit: BoxFit.fill),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          margin: EdgeInsets.all(20.0),
          color: Color.fromARGB(255, 174, 201, 250),
        );
      },
      control: new SwiperControl(
        color: Colors.black,
        padding: EdgeInsets.only(left: 38.0 , right: 30.0)
      ),
      viewportFraction: 0.9,*/
    ),
  );
}*/

class information extends StatefulWidget {

  final List<ModelDatos> data;
  
  const information({super.key, required this.data});
  
  @override
  State<information> createState() => _informationState();
}

class _informationState extends State<information> {

  late ModelDatos infoObject;

  @override
    void initState() {
      super.initState(); 
      infoObject = ModelDatos(firstname: "", lastname: "", city: "", country: "", email: "", phone: "", image: "", username: "");
    }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: CarouselSlider(
            options: CarouselOptions(height: 300.0,
            onPageChanged: (index, r){
              setState(() {
                infoObject = widget.data[index];
              });
            }),
            
            items: widget.data.map((element){
              return Builder(
                builder: (BuildContext context){
                  return Card(
                    child: Image.network(element.image , fit: BoxFit.fill),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    margin: EdgeInsets.all(20.0),
                  );
                },
              );
            }).toList(),
          ),
        ),
        listInfo(infoObject)
      ],
    );
  }
}