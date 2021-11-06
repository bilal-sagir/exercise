import UIKit

class ViewController: UIViewController
{

    @IBAction func rotationGesture(_ sender: UIRotationGestureRecognizer)
    {
        let rotationRadians = sender.rotation
        print("rotation radiance = \(rotationRadians)")
        let rotationInDegree = rotationRadians * 180 / CGFloat.pi
        print("rotation in degrees = \(rotationInDegree)")
    }
}

