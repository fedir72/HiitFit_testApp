/// Copyright (c) 2021 Razeware LLC
///

import SwiftUI

struct ContentView: View {

    
    
    var body: some View {
        TabView{
        WelcomeView()
            ForEach(0 ..< Exercise.exercises.count) { index in
             ExerciseView(index: index)
           }
        }
       // .tabViewStyle(.page(indexDisplayMode: .never))
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      ContentView()
         
  }
}

