
import Foundation

import UIKit.UIColor
public typealias Color = UIColor

extension UIColor {
    convenience init(rgbaValue: UInt32) {
        let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
        let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
        let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
        let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

fileprivate struct MyColor {
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f2f6f8"></span>
    /// Alpha: 100% <br/> (0xf2f6f8ff)
    static let accountsGrey = Color(rgbaValue: 0xf2f6f8ff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#eef2f6"></span>
    /// Alpha: 100% <br/> (0xeef2f6ff)
    static let backgroundBlue1 = Color(rgbaValue: 0xeef2f6ff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#dee6ed"></span>
    /// Alpha: 100% <br/> (0xdee6edff)
    static let backgroundBlue2 = Color(rgbaValue: 0xdee6edff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#001936"></span>
    /// Alpha: 100% <br/> (0x001936ff)
    static let backgroundBlue3 = Color(rgbaValue: 0x001936ff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#aaaaaa"></span>
    /// Alpha: 100% <br/> (0xaaaaaaff)
    static let coolGrey1 = Color(rgbaValue: 0xaaaaaaff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#858585"></span>
    /// Alpha: 100% <br/> (0x858585ff)
    static let coolGrey2 = Color(rgbaValue: 0x858585ff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#666666"></span>
    /// Alpha: 100% <br/> (0x666666ff)
    static let coolGrey3 = Color(rgbaValue: 0x666666ff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#004165"></span>
    /// Alpha: 100% <br/> (0x004165ff)
    static let deepCurrent = Color(rgbaValue: 0x004165ff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#dee6ed"></span>
    /// Alpha: 100% <br/> (0xdee6edff)
    static let keylineBlue1 = Color(rgbaValue: 0xdee6edff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c6d3d9"></span>
    /// Alpha: 100% <br/> (0xc6d3d9ff)
    static let keylineBlue2 = Color(rgbaValue: 0xc6d3d9ff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#7fbedc"></span>
    /// Alpha: 100% <br/> (0x7fbedcff)
    static let navBlue = Color(rgbaValue: 0x7fbedcff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f6f8fa"></span>
    /// Alpha: 100% <br/> (0xf6f8faff)
    static let navGrey = Color(rgbaValue: 0xf6f8faff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#007dba"></span>
    /// Alpha: 100% <br/> (0x007dbaff)
    static let oceanBlue = Color(rgbaValue: 0x007dbaff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ff7f00"></span>
    /// Alpha: 100% <br/> (0xff7f00ff)
    static let orange = Color(rgbaValue: 0xff7f00ff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d90000"></span>
    /// Alpha: 100% <br/> (0xd90000ff)
    static let red = Color(rgbaValue: 0xd90000ff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#79b31d"></span>
    /// Alpha: 100% <br/> (0x79b31dff)
    static let tangyGreen = Color(rgbaValue: 0x79b31dff)
}

public extension Color {
    public static let accountsGrey = MyColor.accountsGrey
    public static let backgroundBlue1 = MyColor.backgroundBlue1
    public static let backgroundBlue2 = MyColor.backgroundBlue2
    public static let backgroundBlue3 = MyColor.backgroundBlue3
    public static let coolGrey1 = MyColor.coolGrey1
    public static let coolGrey2 = MyColor.coolGrey2
    public static let coolGrey3 = MyColor.coolGrey3
    public static let deepCurrent = MyColor.deepCurrent
    public static let keylineBlue1 = MyColor.keylineBlue1
    public static let keylineBlue2 = MyColor.keylineBlue2
    public static let navBlue = MyColor.navBlue
    public static let navGrey = MyColor.navGrey
    public static let oceanBlue = MyColor.oceanBlue
    public static let orange = MyColor.orange
    public static let red = MyColor.red
    public static let tangyGreen = MyColor.tangyGreen
}

