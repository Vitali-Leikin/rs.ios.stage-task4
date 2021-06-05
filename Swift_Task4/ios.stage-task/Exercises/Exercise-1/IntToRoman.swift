import Foundation

public extension Int {
    
    var roman: String? {
        var remainder = 0
        var roman: String?
           
        if self <= 0 || self > 3999 {
           return nil
        }else{
            roman = ""
        }
        
        let romStr: [(intNumber: Int, romanNumber: String)] =
                   [(1000, "M"),
                    (900, "CM"),
                    (500, "D"),
                    (400, "CD"),
                    (100, "C"),
                    (90, "XC"),
                    (50, "L"),
                    (40, "XL"),
                    (10, "X"),
                    (9, "IX"),
                    (5, "V"),
                    (4, "IV"),
                    (1, "I")]
            
               for item in romStr {
                   let quotient = (self - remainder) / item.intNumber
                   remainder += quotient * item.intNumber
                roman! += String(repeating: item.romanNumber, count: quotient)
               }
               
               return roman!
        
    }
}










//extension Int {
//    var romanNumeral: String {
//        var integerValue = self
//        var numeralString = ""
//        let mappingList: [(Int, String)] = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"), (100, "C"), (90, "XC"), (50, "L"), (40, "XL"), (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")]
//        for i in mappingList {
//            while (integerValue >= i.0) {
//                integerValue -= i.0
//                numeralString += i.1
//            }
//        }
//        return numeralString
//    }
//}

