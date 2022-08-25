/// Copyright (c) 2022 Razeware LLC


import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            VStack {
                HeaderView(titleName: "Welcome")
                Spacer()
                Button("History") { }
                 .padding(.bottom)
                }
            
            VStack {
                HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                  Text("Get fit")
                    .font(.largeTitle)
                  Text("with high intensity interval training")
                    .font(.headline)
                }
                  Image("step-up")
                        .resizedToFill(width: 170, height: 170)
                      .clipShape(Circle())
                }
                Button(action: { }) {
                  Label("Get started", systemImage: "arrow.right.circle")
                }
                .font(.title2)
                .padding()
                .background(
                 //RoundedRectangle(cornerRadius: 20)
                    Capsule(style: .circular)
                 .stroke(Color.gray, lineWidth: 2))
                
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
