import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var pinkView: UIView!
    
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?)
    {
        print("Touch Landed")
    }
    override func touchesEnded(_ touches: Set<UITouch>,
                               with event: UIEvent?)
    {
        let touch = touches.first
        
        if touch?.view == pinkView{pinkView.removeFromSuperview()}
    }
    


}

