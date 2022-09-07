/// Copyright (c) 2022 Razeware LLC

import SwiftUI

struct RatingView: View {
    
    let exerciseIndex: Int
   @AppStorage("ratings") private var ratings = "0000"
   // @AppStorage("ratings") static var ratings: String?
   @State private var rating = 0
    
    
    let maximumRating = 5  // 2
    let onColor = Color.red  // 3
    let offColor = Color.gray
    
    init(exerciseIndex: Int) {
      self.exerciseIndex = exerciseIndex
      // 2
      let desiredLength = Exercise.exercises.count
      if ratings.count < desiredLength {
    // 3
        ratings = ratings.padding(
          toLength: desiredLength,
          withPad: "0",
          startingAt: 0)
      }
    }
    
    
    
    fileprivate func convertRating() {
        let index = ratings.index(ratings.startIndex,
                                  offsetBy: exerciseIndex)
        let character = ratings[index]
        rating = character.wholeNumberValue ?? 0
    }
    
    var body: some View {
 
        HStack {
            ForEach(1 ..< maximumRating+1) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor( index>rating ? offColor : onColor)
                    .onTapGesture { updateRating(index: index) }
                    .onAppear {
                        convertRating()
                    }
                    .onChange(of: ratings) { newValue in
                        convertRating()
                    }
            }
        }.font(.largeTitle)
        
    }
    
    func updateRating(index: Int) {
        rating = index
        let index = ratings.index(
            ratings.startIndex,
            offsetBy: exerciseIndex)
        ratings.replaceSubrange(index...index, with: String(rating))
    }
    
}

struct RatingView_Previews: PreviewProvider {
  @AppStorage("ratings") static var ratings: String?
  static var previews: some View {
    ratings = nil
    return RatingView(exerciseIndex: 0)
      .previewLayout(.sizeThatFits)
  }
}
