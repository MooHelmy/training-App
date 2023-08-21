import 'package:flutter/material.dart';
import 'package:training_app/core/utils/size_config.dart';

class customlist extends StatelessWidget {
  const customlist(
      {super.key,
      required this.image,
      required this.name,
      required this.price});
  final String image, name, price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(image),
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * 2,
              ),
              Text('name : $name'),
              SizedBox(
                height: SizeConfig.defaultSize! * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('price :' ' ${price}' r'$'),
                  SizedBox(
                    width: SizeConfig.defaultSize! * 2,
                  ),
                  GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('  Done \n You bougth it   ')));
                      },
                      child: Text(
                        '   Buy it ',
                        style: TextStyle(
                          backgroundColor: Colors.white,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
