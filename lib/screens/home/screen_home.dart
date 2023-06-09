import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:money_manager_flutter/screens/category/screen_category.dart';
import 'package:money_manager_flutter/screens/home/widgets/bottom_navigation.dart';
import 'package:money_manager_flutter/screens/transactions/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
final _pages = const[
  ScreenTransaction(),
  ScreenCategory(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('MONEY MANAGER'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(selectedIndexNotifier.value == 0){
          print('add transaction');
        }else{print('add category');
        }
      
      },
      child: Icon(Icons.add),
      ),


      bottomNavigationBar: MoneyManagerBottomNavigation(),
      body: SafeArea(child: ValueListenableBuilder(valueListenable: selectedIndexNotifier, builder: (BuildContext context, int updatedIndex, _) {
        return _pages[updatedIndex];
      },)
      ),

      );
  
  }
}
