
import Cocoa

//Exercise 01:
print("Exercise 1 \n \n ")

//generic function to take two and exchange them
func Swap<T>(num1 : inout T, num2 : inout T ){
    let temp = num1
    num1 = num2
    num2 = temp
}

// swap two numbers
var num1 = 12;
var num2 = 24;
print("before the swap function num1: \(num1), num2: \(num2)")

Swap(num1: &num1, num2: &num2)
print("after the swap function num1: \(num1), num2: \(num2)")


//swap two strings
var string1 = "swift";
var string2 = "rust";
print("before the swap function string1: \(string1), string2: \(string2)")

Swap(num1: &string1, num2: &string2)
print("after the swap function string1: \(string1), string2: \(string2)")

//swap two doubles
var doubleNum1 = 12.23;
var doubleNum2 = 24.55;
print("before the swap function doubleNum1: \(doubleNum1), doubleNum2: \(doubleNum2)")

Swap(num1: &doubleNum1, num2: &doubleNum2)
print("after the swap function doubleNum1: \(doubleNum1), doubleNum2: \(doubleNum2)")

print("____________________________________________________________________ \n")
//Exercise 03:
print("Exercise 3 \n \n ")
let tempReadings = [
    "Monday": [12,25,10], // three values, represents morning, day time and evening temperature
    "Tuesday" : [2, 15, 9],
    "Wednesday" : [11, 29, 22],
    "Thursday" : [7, 11, 9],
    "Friday" : [ 16, 22, 20]
    ]

// function that return the average temprturn from diven dictionary and return dictionary
func AvgDayTemp(tempReading :[String:Array<Int>]) -> [String:Float]{
    var result : [String:Float] = [:];
    
    for day in tempReading.keys {
        
        let dataArray = tempReading[day]
        var avgData = 0;
        for data in dataArray! {
            avgData += data
        }
        result[day] = Float(avgData) / Float(dataArray!.count)
    }
    
    return result
    
}


// print the dictionary using the given key value pair , specify the range (avg,max,min)
func PrintTempDict(tempReadings: [String:Array<Float>], range : String ){

    for (key,value) in tempReadings {
        
        print("\(range) \(key) tempreture \(String(format: "%.2f",value))")
        
        
    }
}

func PrintTempDict(tempReadings: [String:Float], range : String ){

    for (key,value) in tempReadings {
        
        print("\(range) \(key) tempreture \(String(format: "%.2f",value))")
        
        
    }
}



var avgTempByDay = AvgDayTemp(tempReading: tempReadings)

print("Print avg temp for all the days")
PrintTempDict(tempReadings: avgTempByDay,range:  "Average")

print("____________________________________________________________________ \n")

// function to find average week tempreture
func AvgWeekTemp(tempReading: [String:Array<Int>]) -> Float{
    let result : [String:Float]  = AvgDayTemp(tempReading: tempReading)
    var avgTemp : Float = 0.0
    for (_,value) in result {
        avgTemp += value
    }
    return avgTemp / Float(result.count)
}

let avgWeekTempreture = AvgWeekTemp(tempReading: tempReadings)


print(String(format: "Avg tempreture for week : %.2f",avgWeekTempreture))

print("____________________________________________________________________ \n")

// and find  highest tempreture of the day
func FindHighDayTemp(tempReading: [String:Array<Int>]) -> [String:Int]{
    var result : [String:Int] = [:];
    
    for day in tempReading.keys {
        
        let dataArray = tempReading[day]
        let highest = dataArray?.max()
        result[day] = highest
    }
    
    return result
}

let highTempDict = FindHighDayTemp(tempReading: tempReadings)

// print the dictionary
func PrintDict<String,Int>(tempReadings: [String:Int], range : String ){

    for (key,value) in tempReadings {
        
        print("\(range) \(key) tempreture \(value)")
    }
}

PrintDict(tempReadings: highTempDict,range:  "Highest")



print("____________________________________________________________________ \n")
//Exercise 04:
print("Exercise 4 \n \n ")
var stockValues = [30.50, 10.25, 60.75, 100.25, 45.45, 89.60, 20.50, 55.55,
90.0, 70.0]

// modify the each item in the array
func ModifyStockValues(stockVal : inout [Double], increment : Int){
    for i in 0..<stockVal.count {
        stockVal[i] += Double (increment)
    }
}

print(" stockvalue before increment:  \(stockValues) " );
ModifyStockValues(stockVal: &stockValues,increment : 10)

print(" increase the each value by 10.00 :  \(stockValues) " );

// modify the only element if you find it with new value
func ModifyStockElement(stockVal : inout [Double], oldValue : Double , newValue : Double){
    for i in 0..<stockVal.count {
        if(stockVal[i] == oldValue){
            stockVal[i] = newValue
        }
    }
}
print();
print("Stock values before increment :\(stockValues)")

ModifyStockElement(stockVal: &stockValues, oldValue: 110.25, newValue: 125.25)

print("After incrementing the value 110.25 to 125.25 \(stockValues)")
	
