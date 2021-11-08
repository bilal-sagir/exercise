import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var red: UIView!
    
    override func viewDidLoad()
    {
        let rotGest = UIRotationGestureRecognizer(target: self, action: #selector(rotFunc))
        
        let sclGest = UIPinchGestureRecognizer(target: self, action: #selector(sclFunc))
        
        red.addGestureRecognizer(rotGest)
        red.addGestureRecognizer(sclGest)
    }
    
    @objc func rotFunc (_ sender: UIRotationGestureRecognizer)
    {
        let rotAmount = sender.rotation
        red.transform = red.transform.rotated(by: rotAmount)
        sender.rotation = 0.0
    }
    
    @objc func sclFunc (_ billy: UIPinchGestureRecognizer)
    {
        let sclAmount = billy.scale
        red.transform = red.transform.scaledBy(x: sclAmount, y: sclAmount)
        billy.scale = 1.0
    }


}

