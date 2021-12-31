import UIKit
import Vision

extension UIImage {
    
    func detectFaces(completion: @escaping ([VNObservation]?) -> ()) {
        guard let image = self.cgImage else { return completion(nil) }
        let request = VNDetectFaceRectanglesRequest()
        let orientation = self.getCGOrientationFromUIImage(self)
        
        DispatchQueue.global().async {
            let handler = VNImageRequestHandler(cgImage: image, orientation: orientation)
            try? handler.perform([request])
            guard let observations = request.results else {
                return completion(nil)
            }
            completion(observations)
            
        }
    }
    
    func getCGOrientationFromUIImage(_ image: UIImage) -> CGImagePropertyOrientation {
        // returns que equivalent CGImagePropertyOrientation given an UIImage.
        // This is required because UIImage.imageOrientation values don't match to CGImagePropertyOrientation values
        switch image.imageOrientation {
        case .down:
            return .down
        case .left:
            return .left
        case .right:
            return .right
        case .up:
            return .up
        case .downMirrored:
            return .downMirrored
        case .leftMirrored:
            return .leftMirrored
        case .rightMirrored:
            return .rightMirrored
        case .upMirrored:
            return .upMirrored
        @unknown default:
            fatalError()
}
    }
}

