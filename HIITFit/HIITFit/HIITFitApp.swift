

import SwiftUI

@main
struct HIITFitApp: App {
    
    @StateObject private var historyStore: HistoryStore
    @State private var showAlert = false
    
    init() {
      let history: HistoryStore
      do {
        history = try HistoryStore(withChecking: true)
      } catch {
        print("Could not load history data")
        history = HistoryStore()
          showAlert = true
      }
        _historyStore = StateObject(wrappedValue: history)
    }
    
    
    
  var body: some Scene {
    WindowGroup {
      ContentView()
            .environmentObject(historyStore)
            .alert(isPresented: $showAlert) {
              Alert(title: Text("History"),message: Text(
                  """
                  Unfortunately we can’t load your past history.
                  Email support:
                    support@xyz.com
                  """))
            }
        
            .onAppear {
              print(FileManager.default.urls(
                for: .documentDirectory,
                in: .userDomainMask))
            }
    }
  }
}
