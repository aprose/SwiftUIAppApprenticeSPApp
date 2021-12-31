import SwiftUI
import AVKit

struct ExerciseView: View {
    
    let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let index: Int
    
    let interval: TimeInterval = 30
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                HeaderView(exerciseName: exerciseNames[index])
                    .padding(.bottom)
                Text("Video Player")
                if let url = Bundle.main.url(forResource: videoNames[index], withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url)).frame(height: geometry.size.height * 0.28)
                } else {
                    Text("Couldn't find \(videoNames[index]).mp4").foregroundColor(.blue)
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
        
        ExerciseView(index: 0)
    }
    
}
