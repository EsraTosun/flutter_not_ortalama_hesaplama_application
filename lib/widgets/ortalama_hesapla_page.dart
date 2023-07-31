//Page ana yapı olduğumu anlamamızı sağlar ve sayfa olduğunu

import 'package:flutter/material.dart';
import 'package:proje_iki_dinamik_not_ortalama_hesaplama/constants/app_constants.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
              Sabitler.baslilkText,
              style: Sabitler.baslikStyle,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,  //Yatay olarak yayılmasını sağlar
        children: [
          //1- Form
          Row(
            children: [
              Expanded(   //Geri kalan yayılması için denir
                flex: 2,
                child: _buildForm(),
              ),
              Expanded(   //Geri kalan yayılması için denir
                flex: 1,
                child: Container(
                  child: Text('ottalama'),
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          //2- Liste
          Expanded(   //Geri kalan yayılması için denir
            child: Container(
              child: Text('liste buraya gelcek'),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
        key: formKey,
        child: Column(
          children: [
            _buildTextFromField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit),),
                IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit),),
                IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit),),
              ],
            ),
          ],
        ),
    );
  }

  _buildTextFromField() {
    return TextFormField(
      decoration: InputDecoration.collapsed(
        hintText: 'Matematik',
        border: OutlineInputBorder(borderRadius: Sabitler.borderRadius),
        filled: true,
        fillColor: Sabitler.anaRenk.shade100.withOpacity(0.3)
      ),
    );
  }
}
