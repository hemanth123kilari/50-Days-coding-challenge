📌 Insurance Premium Calculator – README Points
🔹 Project Overview
This project calculates the annual insurance premium based on customer details.
It considers factors like age, policy type, and claim history.
Designed as a beginner-friendly Python program with real-world logic.
🔹 Features
Takes user input for:
Customer name
Age
Policy type (health, vehicle, life)
Number of claims
Applies age-based premium adjustments
Applies claim-based loading or discount
Handles invalid policy type input
Displays base premium and final premium clearly
🔹 Business Logic
Base Premium:
Health → ₹8000
Vehicle → ₹12000
Life → ₹10000
Age Rules:
Below 25 → +20%
25 to 45 → No change
Above 45 → +15%
Claim Rules:
More than 2 claims → +25%
Zero claims → −10% discount
🔹 Function Used
calculate_premium(age, policy_type, claims)
Returns final premium
Includes validation for policy type
🔹 Skills Demonstrated
Python basics (variables, data types)
Conditional statements (if-elif-else)
Functions and modular programming
User input handling
Arithmetic calculations
Basic validation technique
