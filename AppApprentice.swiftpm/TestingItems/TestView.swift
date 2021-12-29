import SwiftUI




struct TestingView: View {
    
    var body: some View {
        
        VStack {
            
            DatePicker(selection: .constant(Date()), label: {
            
            /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ 
            
            
            })
    
    
        }
    
    }
    
    
}

struct TestingView_Previews: PreviewProvider {
    static var previews: some View {
        TestingView()
    }
}
