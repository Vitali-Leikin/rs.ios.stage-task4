
import Foundation

final class FillWithColor {
    
    var imageRes: [[Int]] = []
    var tem: Int = 0
    
    func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
        
        if ((0 <= row && row <= image.count) &&
                (0 <= column && column <= image[row].count ) &&
                (0 <= image[row][column] &&  image[row][column] <= 65536) &&
                (1 <=  image[row].count && image[row].count <= 50) &&
                (1 <=  image.count && image.count <= 50) &&
                (0 <= newColor && newColor < 65536)){
            
            imageRes = image
            tem = image[row][column]
            imageRes[row][column] = newColor
            
            newCreate(row, column, newColor)
            
        }else{
            return [[]]
        }
        
   return  imageRes
    }
    
    
    func newCreate(_ row: Int, _ column: Int, _ newColor: Int) {
        
        let left = column - 1
        let right = column + 1
        
        let top = row - 1
        let bottom = row + 1
        
        if left >= 0 &&  imageRes[row][left] == tem {
            
            imageRes[row][left] = newColor
            imageRes[row][left] = newColor
            
            if left > 0 {
                
            while imageRes[row][left - 1] == tem  &&  imageRes[row][left + 1] < imageRes[row].count{
                
                imageRes[row][left - 1] = newColor
                
                print(imageRes)}
            }
        }
        
        print(imageRes)
        
        if right <  imageRes.first?.count ?? 0 && imageRes[row][right] == tem {
            
            imageRes[row][right] = newColor
            
         
                
            while imageRes[row][right + 1] == tem  &&  imageRes[row][left + 1] < imageRes[row].count{
                
                imageRes[row][right + 1] = newColor
                
                print(imageRes)
            }
            
            print(imageRes)
            
        }
        
        
        if top >= 0 && imageRes[top][column] == tem{
            
            imageRes[top][column] = newColor
            
            if top > 0 {
            while imageRes[top][column] == tem  &&  imageRes[top - 1][column] < imageRes[row].count{
                
                imageRes[top - 1][column] = newColor
                
                print(imageRes)
                
            }
            }
            print(imageRes)
        }
        
        
        
        if bottom < imageRes.count && imageRes[bottom][column] == tem{
            
            imageRes[bottom][column] = newColor
            print(imageRes)
            
            while imageRes[bottom][column] == tem  &&  imageRes[bottom + 1][column] < imageRes[row].count{
                
                imageRes[bottom + 1][column] = newColor
                
                print(imageRes)
                
            }
            
            print(imageRes)
        }
        
        
        print(imageRes)
        
    }
    
}

