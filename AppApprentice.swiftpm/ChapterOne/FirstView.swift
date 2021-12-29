import SwiftUI

struct FirstView: View {
    var body: some View {
        Text("Hello Again")
            .onAppear { 
                print("Text Appears")
            }
            .onHover { hovered in
                if hovered {
                    print("hovered")
                }
            }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
