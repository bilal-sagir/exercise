import UIKit

@IBDesignable class CustomView: UIView
{
    override func prepareForInterfaceBuilder()
    {
        self.backgroundColor = UIColor.gray
        self.layer.borderColor = UIColor.black.cgColor
   //     self.layer.borderWidth = 2.0
    }
    
    @IBInspectable var borderWidth : CGFloat = 2.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius : CGFloat = 10.0 {
        didSet {
            //self.layer.cornerRadius = cornerRadius
            let pati = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: UIRectCorner.bottomLeft, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
            let maskLayer = CAShapeLayer()
            maskLayer.path = pati.cgPath
            self.layer.mask = maskLayer
            
        }
    }
    
}







class ViewController: UIViewController{
}

