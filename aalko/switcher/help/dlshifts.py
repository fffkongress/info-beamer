import requests

# share link to csv
# columns: time, type, duration, id
url = "https://docs.google.com/spreadsheets/d/e/.......output=csv"


response = requests.get(url)
with open("shifts.csv", "wb") as shifts:
    shifts.write(response.content)
shifts.close