/// Copyright (c) 2022 Razeware LLC

import SwiftUI



struct HeaderView: View {
    
    let exercisename: String
    
    
    var body: some View {
        VStack{
            Text(exercisename)
                .font(.largeTitle)
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            .font(.title2)
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(exercisename: "Squad")
            .previewLayout(.sizeThatFits)
        HeaderView(exercisename: "Squad")
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .environment(\.sizeCategory, .accessibilityExtraLarge)
            //.previewDevice("iphone 12")
    }
}
