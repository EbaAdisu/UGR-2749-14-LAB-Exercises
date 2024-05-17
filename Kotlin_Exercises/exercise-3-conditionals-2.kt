fun season(month:Int, day:Int): String{
    if (month == 1 || month == 2){
        return "Winter"
    }
    else if (month == 3){
        if (day < 20){
            return "Winter"
        }
        else{
            return "Spring"
        }
    }
    else if (month == 4 || month == 5){
        return "Spring"
    }
    else if (month == 6){
        if (day < 21){
            return "Spring"
        }
        else{
            return "Summer"
        }
    }
    else if (month == 7 || month == 8){
        return "Summer"
    }
    else if (month == 9){
        if (day < 22){
            return "Summer"
        }
        else{
            return "Fall"
        }
    }
    else if (month == 10 || month == 11){
        return "Fall"
    }
    else if (month == 12){
        if (day < 21){
            return "Fall"
        }
        else{
            return "Winter"
        }
    }
    else{
        return "Invalid"
    }
}


fun largestOfThree(num1: Int, num2: Int, num3: Int): Int {
    return if (num1 > num2) {
        if (num1 > num3) {
            num1
        } else {
            num3
        }
    } else {
        if (num2 > num3) {
            num2
        } else {
            num3
        }
    }
}

fun main(){
    println(season(1, 1))
    println(largestOfThree(1,2,3))
}