//
// Created by Eryk Mariankowski on 11.06.2018.
//

import UIKit

extension UIColor {

    public convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red) / 255
        let newGreen = CGFloat(green) / 255
        let newBlue = CGFloat(blue) / 255
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }

    public convenience init(fromHexString hexString: String, withAlpha alpha: CGFloat = 1.0) {
        var hexInt: UInt32 = 0
        let scanner: Scanner = Scanner(string: hexString)
        scanner.charactersToBeSkipped = CharacterSet(charactersIn: "#")
        scanner.scanHexInt32(&hexInt)
        let hexint = Int(hexInt)
        let red = CGFloat((hexint & 0xff0000) >> 16) / 255.0
        let green = CGFloat((hexint & 0xff00) >> 8) / 255.0
        let blue = CGFloat((hexint & 0xff) >> 0) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

}
