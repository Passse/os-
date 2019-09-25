/*var sumInts = [8, -6, 2, 109, 3, 71]

func minMax(a:[Int]) -> (min:Int , max : Int){
    var cmin = a[0]
    var cmax = a[0]
    for value in a {
        if value < cmin {
            cmin = value
        }
        else if value > cmax {
            cmax = value
        }
    }
    return (cmin, cmax)
}
var bounds = minMax(a: sumInts)
//bounds.min = 1
print("最小值为 \(bounds.min) , 最大值为 \(bounds.max)")*/
var y = Float(3.14)
func a(b : Float) -> (m:Float , z:Float)
{
    let cm = b * b * y
    let cz = 2 * y * b
    return (cm,cz)
}
while true{
    let input = readLine()!
    var num = 0
    if input != "end"{
        num = Int(input)!
        let bounds = a(b: Float(num))
        print("您输入的半径为: \(num) , 面积为: \(bounds.m) , 周长为: \(bounds.z)")
    }
    else
    {
        break
    }
}
