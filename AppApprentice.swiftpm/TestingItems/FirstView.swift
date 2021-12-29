import SwiftUI

struct FirstView: View {
    var body: some View {
        TabView {
            Text("Welcome") 
            Text("Exercise 1")
            Text("Exercise 2") 
                
            
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        

        
        
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
