

import UIKit

struct Oval : Shape {
    
    var color : UIColor
    var name : String
    
    func draw(rect: CGRect) -> UIView {
        
        let v = UIView(frame: rect)
        v.layer.cornerRadius = rect.width / 2
        v.backgroundColor = self.color
        return v
        
    }
    
}
