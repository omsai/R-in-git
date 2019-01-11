number <- 37
if (number > 100) {
  print("greater than 100")
}

number <- -3
if (number > 0) {
  print(1)
} else if (number < 0) {
  print(-1)
} else {
  print(0)
}

number1 <- 15
number2 <- 40
if (number1 >= 0 & number2 >= 0) {
  print("both numbers are positive")
} else {
  print("at least one number was negative")
}


# Functions

fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * 5 / 9) + 273.15
  return(kelvin)
}
# Freezing point
fahr_to_kelvin(32)
# Boiling point
fahr_to_kelvin(212)

kelvin_to_celcius <- function(temp) {
  celcius <- temp - 273.15
  return(celcius)
}
# Absolute zero
kelvin_to_celcius(0)





# Function to convert fahrenheit to kelvin
fahr_to_kelvin <- function(temp) {
  
  temp <- ((temp - 32) * (5 / 9)) + 273.15
  return(temp)
}

# Store the current temperature in F
temp <- 73


# Get the temperature in kelvin
kelvin_temp <- fahr_to_kelvin(temp)


# Print the temperature
print(temp)