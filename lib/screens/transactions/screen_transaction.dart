import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
       itemBuilder: (ctx, index){
      return const Card(
        child: ListTile(
          leading: CircleAvatar(
            radius: 50,
            child: Text(
              '31\oct',
              textAlign:TextAlign.center,),
            ),
          title: Text('rs 10000'),
          subtitle: Text('travel'),
        ),
      );
    }, separatorBuilder: (ctx,index){
      return const SizedBox(height: 10,);
    }, itemCount: 10);
  }
}
