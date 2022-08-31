
import SwiftUI

struct SuccesView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedTab: Int
    
let jobtext = """
Good job completing all four exercises!
Remember tomerrow's another day.
So eat well and get some rest.
"""
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "hand.raised.fill")
                    .font(.system(size: 75))
                    .foregroundColor(.purple)
                    .frame(width: 75, height: 75, alignment: .center)
                Text("High five!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(jobtext)
                    .font(.system(size: 15, weight: .light, design: .serif))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
            .padding(10)
            
            VStack {
                Spacer()
                Button("Continue") {
                    presentationMode.wrappedValue.dismiss()
                    selectedTab = 9//переход на welcomeview
                    
                }
                .padding()
            }
        }
    }
}

struct SuccesView_Previews: PreviewProvider {
    static var previews: some View {
        SuccesView(selectedTab: .constant(3))
    }
}
