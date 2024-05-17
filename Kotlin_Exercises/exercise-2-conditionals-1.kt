fun equilateralTriangle(a: Int, b: Int, c: Int): Boolean {
    if (a==b && b==c){
        return true
    }
    else{
        return false
    }

}
fun salaryCalculator(hours: Int,hourlyRate : Double): Double{
    return hours * hourlyRate
}



fun main(){
    println(equilateralTriangle(1,1,1))
    println(salaryCalculator(10, 10.0))
}