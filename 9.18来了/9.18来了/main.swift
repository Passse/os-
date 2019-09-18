/*var i = 0
var s = 0
while i < 100
{
    i = i + 1
    if i % 7 == 0
    {
        continue
    }
    s = s + i;
}
print(s)*/

/*var soneInts:[Int] = [10,20,30,40,50]

for i in "soneInts"//soneInts
{
    print(i)
}*/

/*var s = "Hello World!"
print(s)
if s.isEmpty//判断字符串是否为空
{
    print("A")
}
else
{
    print("B")
}*/

/*var a = 20
let b = 100
var c:Float = 20.0

var sA = "\(a) 乘以 \(b) 等于 \(c * 100)"
print(sA)*/

/*let cA = "cai:"
let cB = "http://"
print("\(cA + cB)ch\(cA.count)")*/

/*var a:[Int] = [10,20]
var b:[String] = ["1","2"]
for i in a{
    print(i)
}

var array:[Int] = [Int](repeating: 0, count: 5)//var array:[Int] = [Int]()
for j in array {
    print(j)
}*/

/*var a:[Int] = [10,20,30,40,50]
var s = 0
for i in a
{
    s = s + i
}
print(s)*/

var array:[Int] = [2,4,5,10,46,13,6,7,9]
var max = array[0]
for i in array
{
    if i > max
    {
        max = i
    }
}
print(max)
