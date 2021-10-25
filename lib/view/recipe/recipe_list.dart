import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hakondate_v2/unit/size.dart';
import 'package:moor/moor.dart';

class RecipeList extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MarginSize.normalHorizontal
      ),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 1.30,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: List.generate(10, _generate),
      ),
    );
  }

  Widget _generate(int index){
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () { //PDFのページに遷移
      },
      child: Card(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                color: Color(0x90000000),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 2.0,
                    horizontal: 6.0,
                  ),
                  child: Text(
                    ("あああ"), //  献立名
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xDDFFFFFF),
                      fontFamily: 'arial',
                    ),
                    textAlign: TextAlign.center, //  料理名の長い料理が悪さしない絶妙な文字サイズ
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}