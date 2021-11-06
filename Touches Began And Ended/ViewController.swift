import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var pink: UIView!
    
    var posOfTouch:CGPoint?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        let touch1 = touches.first
        print(touch1?.location(in: self.view) ?? self.view.center)
        posOfTouch = touch1?.location(in: self.view) ?? self.view.center
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>,
                               with event: UIEvent?)
    {
        if touches.count > 1 {return}
        
        let touch = touches.first
        
        if touch?.view != pink {return}
        
        var fra:CGRect = pink.frame
        
        fra.origin.x = pink.frame.origin.x + posOfTouch!.x
        fra.origin.y = pink.frame.origin.y + posOfTouch!.y
        pink.frame = fra
        

    }
    
    
}

