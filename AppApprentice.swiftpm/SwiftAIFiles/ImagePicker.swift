import SwiftUI
import UIKit

struct ImagePicker: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIImagePickerController
    private(set) var selectedImage: UIImage?
    private (set) var cameraSource: Bool
    private let completion: (UIImage?) -> ()
    
    
    
    func makeCoordinator() -> () {
        
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        
        let imagePickerController = UIImagePickerController()
        //imagePickerController.delegate = context.coordinator
        imagePickerController.sourceType = .camera
        return imagePickerController
    }
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
}

class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //var parent: ImagePicker
    //var completion: ((UIImage?) -> ())?
    
    override init() {
        
    }
    
}
