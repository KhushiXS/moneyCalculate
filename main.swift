
import Foundation

var money:String = "5000"
var moneyDecimal = Decimal(string:money)
let aLine:String = "--------------------------------------------------------"


//获取年龄 
let age:String = getAge()
let retiredAge:String = "65"

//获取月薪
var moneyOneMonth:String = getMoneyOneMonth()

//获取薪资增长值
var moneyGrowth:String = getMoneyGrowth()

//获取薪资发放规则
var salaryCalculateMethod:String = getSalaryCalculateMethod()

//获取薪资增长后的最大月薪
var maxSalary:String = getMaxSalary()

    
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


/** get_age
 *  @return String
 */
func getAge() -> String{
    var age:String = scanOutIn(scanOutStr:"Please enter your age:")
    print("Your age is \(age)!")
    return age
}


/** get_moneyOneMonth
 *  @return String
 */
func getMoneyOneMonth() -> String {
    var moneyOneMonth:String = scanOutIn(scanOutStr:"Please enter the money you get for one month:")
    print("The money you get for one month is \(moneyOneMonth)")
    return moneyOneMonth
}


/** get_moneyGrowth
 *  @return String
 */
func getMoneyGrowth() -> String {
    var moneyGrowth:String = scanOutIn(scanOutStr:"Please enter the value of salary growth for one year:")
    print("The value of salary growth for one year is \(moneyGrowth)")
    return moneyGrowth
}


/** get_salaryCalculateMethod
 *  @return String
 */
func getSalaryCalculateMethod() -> String {
    // 13 salary or year-end bonus
    print("If your job is 13 salary,please enter '1',")
    print("If your job is year-end bonus,please enter '2',")
    print("If your job is 13 salary and year-end bonus,please enter '3',")
    var salaryCalculateMethod:String = scanOutIn(scanOutStr:"Please enter:")
    while true
    {
        if(salaryCalculateMethod == "1"){
            print("Your job is 13 salary.")
            break
        }else if(salaryCalculateMethod == "2"){
            print("Your job is year-end bonus.")
            break
        }else if(salaryCalculateMethod == "3"){
            print("Your job is 13 salary and year-end bonus.")
            break
        }else{
            print("Please enter the right key")
            salaryCalculateMethod = scanOutIn(scanOutStr:"Please enter:")
        }
    }
    return salaryCalculateMethod
}


/** get_maxSalary
 *  @return String
 */
func getMaxSalary() -> String {
    var maxSalary:String = scanOutIn(scanOutStr:"Please enter the maximum salary you expect to reach:")
    print("The maximum salary you will reach is \(maxSalary)")
    return maxSalary
}


/** civilServant
 *  @return String
 */
func civilServant() -> String {
    var job = scanOutIn(scanOutStr:"Are you a civil servant ? Y/N")
    while true
    {
        if(job == "Y"){
             print("You are a civil servant.")
              return job
         }else if(job == "N"){
             print("You are a private employee.")
             return job
          }else{
              print("Please enter the right key !")
              job = scanOutIn(scanOutStr:"Are you a civil servant ? Y/N")
          }
    }
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
