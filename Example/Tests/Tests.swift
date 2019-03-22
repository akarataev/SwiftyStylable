import XCTest
import SwiftyStylable

class Tests: XCTestCase {
    
    func testStyleApplying() {
        
        // MARK: - given
        
        let view = UIView()
        let color = UIColor.green
        
        
        // MARK: - when
        
        view.apply(.viewStyle(color: color))
        let result = (view.backgroundColor == color)
        
        
        // MARK: - then
        
        XCTAssert(result , "View style doesn't applying")
    }
    
}


// MARK: - implement style for UIView

extension SwiftyStyle where Control == UIView {
    
    static func viewStyle(color: UIColor) -> SwiftyStyle {
        return .style { view in view.backgroundColor = color }
    }
}
