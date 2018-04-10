import UIKit
import XCPlayground

//: # Happy Valentine's Day from [http://flexmonkey.blogspot.co.uk/](http://flexmonkey.blogspot.co.uk/)

let layer = CAShapeLayer()
layer.strokeColor = UIColor.yellowColor().CGColor
layer.fillColor = UIColor(red: 1, green: 0.33, blue: 0.33, alpha: 1).CGColor
layer.lineWidth = 12
layer.lineCap = kCALineCapRound
layer.lineJoin = kCALineCapRound

let view = UIView(frame: CGRect(x: 0, y: 0, width: 640, height: 640 ))
view.layer.addSublayer(layer)

XCPlaygroundPage.currentPage.liveView = view

let points: [CGPoint] = 0.stride(to: M_PI * 2, by: 0.01).map
{
    let x = pow(sin($0), 3)
    var y = 13 * cos($0)
    y -= 5 * cos(2 * $0)
    y -= 2 * cos(3 * $0)
    y -= cos(4 * $0)
    y /= 16
    
    return CGPoint(x: 320 + (x * 300), y: 280 + (y * -300))
}

let path = CGPathCreateMutable()

CGPathAddLines(path, nil, points, points.count)

layer.path = path

