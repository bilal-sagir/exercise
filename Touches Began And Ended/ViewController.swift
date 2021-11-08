import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var red : UIView!
    
    override func touchesEnded(_ touches: Set<UITouch>,
                               with event: UIEvent?)
    {
        UIView.transition(with: self.red,
                          duration: 1.5,
                          options: UIView.AnimationOptions.transitionFlipFromTop)
        {
            self.red.backgroundColor = UIColor.black
        } completion: { (res) in
            print("done")
            self.red.backgroundColor = UIColor.red
        }

    }

}

