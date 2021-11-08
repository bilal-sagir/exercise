import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var pink: UIView!
    
    
    override func touchesEnded(_ touches: Set<UITouch>,
                               with event: UIEvent?)
    {
        //pink.transform = pink.transform.translatedBy(x: 10.0, y: 20.0)
        
        //pink.transform = pink.transform.rotated(by: 90.0 * CGFloat.pi / 180.0)
        
        //reset transformation
        pink.transform = CGAffineTransform.identity
        
        let rot = CGAffineTransform(rotationAngle: CGFloat.pi / 2.0)
        let scl = CGAffineTransform(scaleX: 2, y: 2)
        
        pink.transform = rot.concatenating(scl)
    }
    
}

