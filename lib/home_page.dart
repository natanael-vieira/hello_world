import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HelloWorld!'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/img/nasa.jpg',
                  fit: BoxFit.cover,
                ),
                //Image.network('http://static.vecteezy.com/packs/media/components/global/search-explore-nav/img/vectors/term-bg-1-666de2d941529c25aa511dc18d727160.jpg', fit: BoxFit.cover,),
              ),
              Container(
                color: Colors.black,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.white,
                height: 85,
                width: 85,
              ),
              Container(
                color: Colors.black,
                height: 70,
                width: 70,
              ),
            ],
          ),
        ));
  }
}
