import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var pink: UIView!
    
    override func touchesMoved(_ touches: Set<UITouch>,
                               with event: UIEvent?)
    {
        if touches.count > 1 {return}
        
        let touch = touches.first
        
        if touch?.view != pink {return}
        
        pink.center = touch?.location(in: self.view) ?? self.view.center
    }
    
}

