import SwiftUI
import AVKit

struct ExerciseView: View {
    
    let index: Int
    let interval: TimeInterval = 30
    
    @Binding var selectedTab: Int
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                HeaderView(titleText: Exercise.exercise[index].exerciseName)
                    .padding(.bottom)
                Text("Video Player")
                if let url = Bundle.main.url(forResource: Exercise.exercise[index].videoName, withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url)).frame(height: geometry.size.height * 0.28)
                } else {
                    Text("Couldn't find \(Exercise.exercise[index].videoName).mp4").foregroundColor(.blue)
                }
                Text(Date().addingTimeInterval(interval), style: .timer).font(.system(size: 30))
                Button("Start/Done") {
                    
                }.font(.title3).padding()
                RatingView()
                    .padding()
                Button("History") {
                    
                }.padding(.bottom)
            }
            
        }
        
        
    
    
    
    
    }
}

struct ExerciseView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ExerciseView(index: 0, selectedTab: .constant(1))
    }
    
}
