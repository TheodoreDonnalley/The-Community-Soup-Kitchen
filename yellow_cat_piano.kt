fun main(args: Array<String>) {

    // Input of information for how many meals will be served
    print("How many meals will be served today? ")
    var mealsServed: Int = readLine()!!.toInt()

    // Track the total meals served for the week
    var totalMealsServed: Int = 0

    // Tracking the number of volunteers needed for the week
    var totalVolunteersNeeded: Int = 0

    // Receive donations for the soup kitchen
    print("What donations were received for the soup kitchen? ")
    val donationsReceived: Int = readLine()!!.toInt()

    // Calculate the number of meals that can be served with the donations
    print("What is the number of meals that can be served with the donations? ")
    var mealsUsingDonations: Int = donationsReceived * 4

    // Add donations to the total meals served
    totalMealsServed += mealsUsingDonations

    // Calculate the number of volunteers needed
    totalVolunteersNeeded = mealsServed / 10

    // Calculate the remaining meals that will be left over
    var mealsLeftOver: Int = mealsServed - totalMealsServed

    // Output the total number of meals that were served for the week
    println("The total number of meals that were served for the week is: $totalMealsServed")

    // Output the number of volunteers needed for the week
    println("The total number of volunteers needed for the week is: $totalVolunteersNeeded")

    // Output the number of meals that were left over
    println("The total number of meals that were left over is: $mealsLeftOver")

}