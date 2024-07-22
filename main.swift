
import Foundation

var money:String = "5000"
var moneyDecimal = Decimal(string:money)
let aLine:String = "--------------------------------------------------------"


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

    
    var moneyOneMonthStr:String
    repeat{
        print("Please enter the money you get for one month:")
        moneyOneMonthStr = readLine()!
    }while moneyOneMonthStr.isEmpty
    var moneyOneMonth:Int! = Int(moneyOneMonthStr)
    
    
    // the money add
    print("Please enter the value of salary growth for one year:")
    let moneyGrowth:Int! = Int(readLine()!)
    
    // 13 salary or year-end bonus
    print("If your job is 13 salary,please enter '1',")
    print("If your job is year-end bonus,please enter '2',")
    print("If your job is 13 salary and year-end bonus,please enter '3',")
    var salaryCalculate:String! = readLine()
    while true
    {
        if(salaryCalculate == "1"){
            print("Your job is 13 salary.")
            break
        }else if(salaryCalculate == "2"){
            print("Your job is year-end bonus.")
            break
        }else if(salaryCalculate == "3"){
            print("Your job is 13 salary and year-end bonus.")
            break
        }else{
            print("Please enter the right key")
            salaryCalculate = readLine()
        }
    }
    
    print("Please enter the maximum salary you expect to reach:")
    let maxSalary:Int! = Int(readLine()!)
    print("The maximum salary you will reach is \(maxSalary!)")
    
    var moneyLife = Decimal(workage) * Decimal(moneyOneMonth) * 12
    var i:Int = age
    var sum = Decimal(0)
    while age <= retiredAge
    {
        i += 1
        sum = sum +  Decimal(moneyOneMonth) * 12
        if(moneyOneMonth < moneyGrowth){
            moneyOneMonth = moneyOneMonth + moneyGrowth
        }
    }
    
    print("You will make \(sum) in your life time!")
    






/** civilServant
 *  @return String
 */
func civilServant() -> String {
    var job = scanOutIn(scanOutStr:"Are you a civil servant ? Y/N")
    while true
    {
        if(job == "Y"){
             print("You are a civil servant.")
              break
         }else if(job == "N"){
             print("You are a private employee.")
             break
          }else{
              print("Please enter the right key !")
              job = scanOutIn(scanOutStr:"Are you a civil servant ? Y/N")
          }
    }
}


/** scanOutIn
 *  @param scanOutStr:String
 *  @return String
 */
func scanOutIn(scanOutStr:String) -> String{
    let scanInStr:String
    repeat{
        print(scanOutStr)
        scanInStr = readLine()!
    }while scanInStr.isEmpty
    return scanInStr
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
