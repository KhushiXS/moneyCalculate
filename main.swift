import Foundation
var money:String = "5000"
var moneyDecimal = Decimal(string:money)
let aLine:String = "--------------------------------------------------------"

print("Are you a govement job ? Y/N")
let job = readLine()
if(job == "Y"){
    print("You are a govementer")
    print("Please enter the money you get for one month:")
    let moneyOneMonth = readLine()
    
    // age_get
    print("Please enter your age:")
    let ageString:String! = readLine()
    let age: Int! = Int(ageString)
    print("Your age is \(age!), and the money you get for one month is \(moneyOneMonth!)")
    print(aLine)
    var retiredAge:Int = 50
    
    // sex_get
    let sex = sexGet()
    if(sex == "man"){
        print("You are a man,and you retired age is 60")
        retiredAge = 60
    }else if(sex == "woman"){
        print("You are a woman,and you retired age is 50")
        retiredAge = 50
    }
    var workage = retiredAge - age
    
    // the money add
    print("Please enter the value of salary growth for one year:")
    let moneyGrowth:Int! = Int(readLine()!)
    
    // 13 salary or year-end bonus
    print("If your job is 13 salary,please enter '1',")
    print("If your job is year-end bonus,please enter '2',")
    print("If your job is 13 salary and year-end bonus,please enter '3',")
    let salaryCalculate:String! = readLine()
    
    
    
}


/** sex get
 *  @return String
 */
func sexGet() -> String{
    var thisSex:String = ""
    //var index = 10
    while thisSex != "man" 
    {
        print("Please enter your sex:")
        thisSex = readLine()!
        if(thisSex == "woman" || thisSex == "man"){
            break
        }
        print("Human only has two sex,man or woman!!!")
    }
    return(thisSex)
}


