1️⃣ Remove Duplicates & Preserve Order
Use a set() to track seen elements
Use a list to store result
Loop through original list
Check if element is already in set
If not → add to result list
Also add to set to avoid future duplicates
Maintains original order
Efficient solution (O(n))
2️⃣ Frequency Counter
Use a dictionary to store counts
Loop through product list
Use dict.get(key, 0) for default value
Increment count for each item
Handles repeated elements easily
Useful in real-time analytics
Time complexity: O(n)
3️⃣ Find Top Scorer
Use max() function
Pass dictionary as input
Use key=marks.get to compare values
Returns key with highest value
Simple and efficient
Time complexity: O(n)
4️⃣ Common Elements in Two Lists
Convert lists into set()
Use intersection() to find common items
Convert result back to list
Removes duplicates automatically
Fast comparison using sets
Time complexity: O(n)
5️⃣ Sort Dictionary by Values
Use sorted() function
Use dict.items() to get key-value pairs
Apply lambda to sort by value
lambda x: x[1] → sorts by values
Returns list of tuples
Useful for ranking/ordering data
Time complexity: O(n log n
