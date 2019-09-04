var name = "菜鸟驿站"
var site = "aaaaaa"
print("\(name)的地址为\(site)")

let pi = 3.1415

var a = "He\"llo"
print(a)
var b = "He\\llo"
print(b)
var c = "He\tllo"
print(c)

var d:Bool=true

var e = 10 % 3
print(e)
var g = 12
var k = 33
print("A+B= \(g+k)")
print("A-B= \(g-k)")
print("A*B= \(g*k)")
print("A%B= \(g%k)")
g += 1
print("A += 1 后 \(g)")
k -= 1
print("A -= 1 后 \(k)")

var v = 13
var l = 45
print("\(v<=l)")

var n = true
var p = false
print("\(!n && p)")

var A = 10
A += 10
print("\(A)")

/*var B = readLine()!
print(B)*/
var C = 12
if C>2 {
    print("Yes")
}


print("请输入用户名")
var U = readLine()!
if U == "admin"
{
    print("请输入密码")
    var P = readLine()!
        if P == "888888" {
        print("正确")
        print("Welcome to Mac Os")
        }
        else {
        print("错误")
        }
}
else
{
    print("用户名不存在")
}
