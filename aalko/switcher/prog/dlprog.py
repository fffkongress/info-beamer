import requests

#share link from google prog sheet as csv
# columns: time, theme,room [optional:news]
url = "https://docs.google.com/spreadsheets/d/e/...........&single=true&output=csv"

response = requests.get(url)
with open("prog.csv", "wb") as shifts:
    shifts.write(response.content)
shifts.close