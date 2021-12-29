import SwiftUI

struct ContentViewTwo: View {
    var body: some View {
        
        TabView {
            WelcomeView()
            ForEach(0 ..< 4) { index in
                ExerciseView(index: index)
                
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
        
    }
}

struct ContentViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewTwo()
    }
}
