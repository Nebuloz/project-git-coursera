read -p "Enter the principal amount (e.g., 10000): " principal
read -p "Enter the time period in years (e.g., 5): " time
read -p "Enter the rate of interest (e.g., 5.5): " rate

# Check if all inputs are numeric
if [[ ! "$principal" =~ ^[0-9]+$ || ! "$time" =~ ^[0-9]+$ || ! "$rate" =~ ^[0-9]+\.[0-9]+$ ]]; then
  echo "Error: Please enter valid numeric values for principal, time, and rate."
  exit 1
fi

# Calculate simple interest
interest=$(echo "scale=2; $principal * $time * $rate / 100" | bc)

# Display the result
echo "The simple interest on a principal of $principal for $time years at a rate of $rate% is: $interest"
