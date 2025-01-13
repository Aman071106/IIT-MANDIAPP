import pdfplumber
import pandas as pd
import json

# Load the PDF file
file_path = "mess.pdf"

# Extract text and process
data = []
with pdfplumber.open(file_path) as pdf:
    for page in pdf.pages:
        # Extract tables from the page
        tables = page.extract_tables()
        if tables:
            for table in tables:
                data.extend(table)

# Convert the table data into a DataFrame
df = pd.DataFrame(data)
# print(df)


# print("Executing..")
#creating dict
menu={
    "Breakfast":{},
    "Lunch":{},
    "Dinner":{},
    "Snacks":{},    
}

for i in range(1,8):
    # print(i,df.iloc[1,i])
    dict={df.iloc[1,i]:list(df.iloc[2:14,i])}
    # print(dict)
    menu["Breakfast"].update(dict)
for i in range(1,8):
    # print(i,df.iloc[1,i])
    dict={df.iloc[1,i]:list(df.iloc[15:23,i])}
    # print(dict)
    menu["Lunch"].update(dict)
for i in range(1,8):
    # print(i,df.iloc[1,i])
    dict={df.iloc[1,i]:list(df.iloc[24:26,i])}
    # print(dict)
    menu["Snacks"].update(dict)
for i in range(1,8):
    # print(i,df.iloc[1,i])
    dict={df.iloc[1,i]:list(df.iloc[27:35,i])}
    # print(dict)
    menu["Dinner"].update(dict)


mess = {}

# Iterate over each meal type (Breakfast, Lunch, Dinner, Snacks)
for meal_type, days in menu.items():
    for day, items in days.items():
        if day not in mess:
            mess[day] = {}
        mess[day][meal_type] = items

# Print the new format dictionary
print(json.dumps(mess, indent=4))

# Save the new format dictionary to a new JSON file
with open('/home/friday_code/Desktop/White Rebels/ans.json', 'w') as file:
    json.dump(mess, file, indent=4)
    file.truncate()
