///Part of unimelb ESD2 Student's Fun.
///Shared under MIT License.



import Foundation

//Convert Binary to Decimal!
func convertBiToDec(binaryData: String) -> Double {
    
    ///Decomposes String to two parts: before and after binary point
    var beforePointComponenets = binaryData.components(separatedBy: ".").first
    var afterPointComponents = binaryData.components(separatedBy: ".").last
    
    ///Stores and accepts calculated decimal result
    var result: Double = 0
    
    ///This loop powers and sums binary data representation before the b. point
    while (beforePointComponenets?.characters.count)! != 0 {
        if beforePointComponenets?.characters.first == "1" {
            result += (pow(2, ((Double((beforePointComponenets?.characters.count)! - 1)))))

            if (beforePointComponenets?.characters.count)! > 0 {
                beforePointComponenets?.characters.removeFirst()
            }
        } else {
            result += 0
            
            if (beforePointComponenets?.characters.count)! > 0 {
                beforePointComponenets?.characters.removeFirst()
            }
        }
    }
    
    ///This loop powers and sums binary data representation after the b. point
    while (afterPointComponents?.characters.count)! != 0 {
        if afterPointComponents?.characters.last == "1" {
            result += (1.0 / (pow(2, ((Double((afterPointComponents?.characters.count)!))))))
            
            if (afterPointComponents?.characters.count)! > 0 {
                afterPointComponents?.characters.removeLast()
            }
        } else {
            result += 0
            
            if (afterPointComponents?.characters.count)! > 0 {
                afterPointComponents?.characters.removeLast()
            }
        }
    }
    
    ///Print and return the result!
    print(result)
    
    return result
}

//Call me like so!
convertBiToDec(binaryData: "110101.101")



