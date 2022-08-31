/// Copyright (c) 2021 Razeware LLC
///

import SwiftUI
// terminal command for localisation
//genstrings -o en.lproj Views/*.swift Model/*.swift


struct ContentView: View {

    @State private var selectedTab = 9
    
    var body: some View {
      TabView(selection: $selectedTab) {
        WelcomeView(selectedTab: $selectedTab)  // 1
          .tag(9)
        ForEach(0 ..< Exercise.exercises.count) { index in
            ExerciseView(selectedTab: $selectedTab, index: index)
            .tag(index)  
        }
    }
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      ContentView()
         
  }
}

