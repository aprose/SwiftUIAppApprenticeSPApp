import SwiftUI
import UIKit

struct MainView : View {
    private let image: UIImage
    private let text: String 
    //private let button: TwoStateButton
    
    init(image: UIImage, text: String){
        self.image = image
        self.text = text
        //self.button = button()
    }
    
    var body: some View {
        VStack {
            Image(uiImage: image).resizable().aspectRatio(contentMode: .fit)
            Spacer()
            Text(text).font(.title).bold()
            Spacer()
            //self.button
        }
    }
}


struct TwoStateButton : View {
    private let text: String
    private let disabled: Bool
    private let background: Color
    private let action: () -> Void
    
    var body: some View {
        Button { 
            action()
        } label: { 
            HStack {
                Spacer()
                Text(text).font(.title).bold().foregroundColor(.white)
                Spacer()
            }.padding().background(background).cornerRadius(10)
            
        }.disabled(disabled)
        
    }
    init(text: String, disabled: Bool, background: Color = .blue, action: @escaping () -> Void ) {
        self.text = text
        self.disabled = disabled
        self.background = disabled ? .gray : background
        self.action = action
    }
    
}

struct TestingView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(image: UIImage(systemName: "pencil.circle")!, text: "Test") 
    }
}
