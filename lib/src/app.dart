import 'package:flutter/material.dart';
import 'screens/submet_screen.dart';

class App extends StatelessWidget {
   const App({Key? key}) : super(key: key);
  @override
    Widget build(BuildContext context) {
      
       return Scaffold(
            appBar: AppBar(
                title: const Text('BDCS', style: TextStyle(color: Colors.black)),
                backgroundColor: Colors.white,
                elevation: 0,
            ),
          body: const Center( child: Expanded(
            
                flex: 1,
                child: Text('Protection of Personal Information (POPI) Act This means that we should consider privacy implications in all our processes and systems, and build security and privacy concepts into the day-to-day operation of our organisations. POPI is all about Privacy, and this means security',
                    
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16,
                    ))
                    
                    ),
          ),
             floatingActionButton: FloatingActionButton(
                child: const Text('Add'),
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>   const submetScreen()),
                  );
                },
            ),
        ); 
    }
}