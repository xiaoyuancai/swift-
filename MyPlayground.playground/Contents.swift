//: Playground - noun: a place where people can play

import UIKit

//if使用
var i = 90
if i>10{
    print("ddgf ")
}
//?:使用
var rsutlt = i > 10 ? "d" : "xiao"

i < 100 ? "xiao" : "d"
//指定变量类型
var a:NSString = "";

print("\"cai\"")

let th = 3

//类似oc中的nsstringFormat
let re = "\(th) time ddd is \(Double(th)*2.3)"

let r = "\(Double(th)*2.3)"
let cai:NSString = "xiaoyuancai"
let b = cai.length

var strs:NSString = "cai"

//元组使用
let tuple = (404,"Not Found")
var message = tuple.1
var code = tuple.0
print("code is \(tuple.0) message is \(tuple.1)")
//为元组定义标识
let tuple1 = (first:200,second:"not found")

var frst = tuple1.first
var sec = tuple1.second

//字符串转int
let ct = "123"
let ct1:Int = (ct as NSString).integerValue//字符串转int

let vale:NSString = "ffff"
var t = 34353
var strb = "\(t)"

let ttb = "\(ct) is chage \(vale)"

/***数组--------  var可变，let不可变***/
var array:Array<NSString>=["cai","yuan"];
//或者
//var array = ["cai","yuan"];

print("\(array)")

//数组两种追加方式
array.append("wwd")
array+=["cacai","bbbbb"]

array.insert("wu", atIndex: 0)
array = ["li","qing"]+array

//遍历数组
for item in array{
    print(item)
}

/***********字典************************/
var dic:Dictionary<NSString,NSString> = ["name":"yuan","last name":"le"]
var dic1 = ["name":12,"last name":"le"]

let removeValue = dic1.removeValueForKey("name")!
print(removeValue.classForCoder)
dic1.count
dic.count
//例用元组遍历字典
for(key,value)in dic{
    print("key is \(key) value is \(value)")
}
//字典values 与keys
let valueAry = Array(dic.values)
let keyAry = Array(dic.keys)

for obj in dic.keys{
    print(obj)
}

/*************分支语句***********************/
//if...else
var n2:Int = 2;
var n1:Int = 3;
if n2>n1{
    print("trye")
}else{
    print("fause")
}

//switch
let chars:Character = "e"
switch chars{
    case "a","b":
    print("e")
    case"e":
    print("true")
//    fallthrough
    case "c","e":
    print("last e")
default:
    print("over")
}

switch chars{
    case "a"..."z":
    print("hello 老婆")
default:
    print("over")
    
}

var tt = 0

//while tt<=3699{
//    var q = tt/1000
//    var bai = (tt-(q*1000))/100
//    var shi = (tt-(q*1000)-(bai*100))/10
//    var ge = tt - (q*1000)-(bai*100)-(shi*10)
//    
//    print("g = \(ge) shi = \(shi) b = \(bai) qian = \(q)")
//    tt += 1
//}

//swift 2.0 用repeat 代替 do
repeat {
    print("0")
    tt -= 1
} while tt>0

//for var xi=0; xi<10; xi++ {
//    print("fsfs")
//}

//for _ in 1...10{
//    print(1+1)
//}

//遍历字符串
let i1 = "hello"
for ch in "xiaoyuancai".characters{
//    print(ch)
    switch ch{
        case "a":
        print("find it")
    default:
        print("no")
    }
}
/******************方法使用**************/
func printDays(name:String,day:String)->String{

    return "hello \(name) today is \(day)"
}

printDays("caicai", day: "satday")


func printCount(name:String)->(c1:Int,c2:Int,c3:Int){
    var x:Int = 0,y:Int = 0,z:Int = 0
    
    for char in name.lowercaseString.characters{
        switch char{
            
        case "a":
            x += 1
        case "b":
            y += 1
        case "c":
            z += 1
        case "d":
            x += 1
        case "e":
            y += 1
        case "f":
            z += 1

        default:
            break
        }
        
    }
    
    return(x,y,z)
}

let result =  printCount("XX yyY ZZz")
result.c1


func funPoint(tf:Bool)->(Int)->Int{
    func forwad(fir:Int)->Int{return fir+1}
    func back(secs:Int)->Int{return secs-1}
    return tf ? forwad : back
}

let pointer = funPoint(true)

//旧语法
//for var l = 0;l < 10;l += 1 {
//    let su = pointer(l)
//    print("su = \(su)")
//}

//2.2新语法
for l in 0..<10{
    let su = pointer(l)
    print("su = \(su)")
}

var back = ["xaio","yuan","cai"]
let forwd = back.sort { (str1, str2) -> Bool in
    return str1>str2
}

/***********************************弱点**************************************/
//闭包定义
var blocks = {(b1:Int,b2:Int)->Int in
    return b1+b2
}

var rs = blocks(30,50)
print(rs)

var bi = {(ff:Int,ss:Int)->Int in
    return 3
}

//闭包作为函数参数
func blocParat(blk:(first:Int,second:Int)->Int,second:Int)->String{
    blk(first: 40,second: 60)
    return "block is success!!!"
}

//调用含有闭包参数的函数

var resu = blocParat({ (first, second) -> Int in
    if first>second{
        return first + second
    }
    else{
        return first - second
    }
    }, second: 23)


print(resu)

/**********************************类与结构体****************************/
//定义结构体
struct location{
    var lo:Int?
    var la :Int?
    static var sta = 8;//表态属性，使用关键字static
}

//定义类
class Person{
    var name:String?
    var loc = location()//类似c++会调用默认构造器
    var year:Int?
    static let sta = 4
    
}


//使用
var myloccaon = location()//初始化方法一
var mylocation = location(lo: 234,la: 456)//初始化方法二

var perC = Person()//初始化方法一，会调用默认构造器

//延时加载
class atfer{
    var data = "test"
}

class myClass {
    lazy var aftr = atfer();
}

let rest = myClass()//这人时候不会实例atfer,因为现在还没有使用，所以不会加载，
rest.aftr.data = "xiaoyuancai"//这个时候会加载atfer,先初始化atfer,然后调用成员变量data

print(rest.aftr.data)

//计算属性（设置get set方法）**************************************************/

struct Point {
    var x = 0,y = 0
}

struct Size1 {
    var w = 0,h = 0
}

struct Rect {
    var origin = Point()
    var size = Size1()
    
    var centr:Point{
        get{
            let centerX = origin.x+(size.w/2)
            let centerY = origin.y+(size.h/2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x-(size.w/2)
            origin.y = newCenter.y-(size.h/2)
            
        }
    }
}

var res = Rect(origin: Point(x: 0, y: 0), size: Size1(w: 10, h: 10))
let or = res.centr;
print(or)
res.centr = Point(x: 20, y: 20)
print(res.origin)

//属性观察者
class look{
    var total:Int = 9 {
        willSet(newTotal){
            print("will new is \(newTotal)")
        }
        didSet{
            print("new value is \(total)")
            print("old value is \(oldValue)")
        }
    }
}

var prot = look()
prot.total = 3
prot.total = 4


struct swift {
    static let max = 10;
    static var min = 20;
    var vate :Int = 0{
        didSet{
            if vate>swift.min {
                print("vate is max");
            }
            if vate<swift.min {
                print("vate is min min")
            }
        }
    }
    
}

var swifS = swift();
swifS.vate = 23;
swifS.vate = 12;

//方法
class Man{
    var cont :Int = 0;
    
    func eate(food:Int) -> Void {
        print("eat \(food)")
        self.cont+=food;
    }
    
    func drink(drik:Int) -> Int{
        cont = cont+drik;
        return cont;
    }
}

let manC = Man()
manC.eate(12)
var resut = manC.drink(20)

//下标
struct index{
    let multi:Int
    subscript(index:Int)->Int{//下标关键字 subscript
    return index * multi
    }
}
//使用下标
var stuc = index(multi:23)
var va = stuc[3]

//类的进一步使用-------------继承
//定义基类
class PersomOfstudent{
    var number:Int
    var boy:Int
    func prin() -> String {
        return "total \(number) students and boy are \(boy)"
    }
    
    init() {
        number = 10
        boy = 10
    }
}

var person = PersomOfstudent()
person.prin()
//定义子类
class girstStudents:PersomOfstudent{
    //2.2语法
    //重写父类方法（还可以重写属性和下标）
    override init() {
        super.init()
        number = 200
        boy = 100
    }
    override func prin() -> String {
        return "override class punc total \(number) students and boy are \(boy)"
    }
    //旧语法
//    init() {
//        super.init()
//        number = 200
//        boy = 100
//    }
}

var girlS = girstStudents()
girlS.prin()







