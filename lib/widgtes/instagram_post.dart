
import 'package:flutter/material.dart';

class InstagramPost extends StatelessWidget {
  const InstagramPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //Cabecera
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://www.motociclismo.es/uploads/s1/11/47/47/72/sam-sunderland-llevara-el-numero-1-en-el-dakar-2023.jpeg',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 13),
                  const Text('dotcsv',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
              const Icon(Icons.more_vert)
            ],
          )),

      //imagen del post
      const Image(
          image: NetworkImage(
              'https://imagenes.elpais.com/resizer/u1mppd68QkcumReruD7mbpvYFUE=/1200x0/cloudfront-eu-central-1.images.arcpublishing.com/prisa/AYVF6GI3RK6BZZELCKCXQ6CXDE.jpg')),

      //iconos de interacción con el usuario
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/like.png', width: 25, height: 25),
                const SizedBox(width: 10),
                Image.asset('assets/message.png', width: 25, height: 25),
                const SizedBox(width: 10),
                Image.asset('assets/send.png', width: 25, height: 25),
              ],
            ),
            Image.asset('assets/save.png', width: 25, height: 25),
          ],
        ),
      ),

      //likes
      Row(
        children: [
          ClipOval(
            child: Image.network(
              'https://www.motociclismo.es/uploads/s1/11/47/47/72/sam-sunderland-llevara-el-numero-1-en-el-dakar-2023.jpeg',
              width: 25,
              height: 25,
              fit: BoxFit.cover,
            ),
          ),


          const SizedBox(width: 10),
          const Text('Le gusta a'),
          const SizedBox(width: 10),
          const Text('developeradam', style: TextStyle(fontWeight:  FontWeight.bold),),
          const SizedBox(width: 10),
          const Text('y'),
          const Text(' 152 personas más', style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      )
    ]);
  }
}
