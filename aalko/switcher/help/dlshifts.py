import requests


url = "https://docs.google.com/spreadsheets/d/e/2PACX-1vTsr7Ti2aSGa0x36iyMNSJcWug0iBz3ix76cOG4wqf7ZSZHTBPmo6NSxCRR8we0z3Q8N1JPpSs8vmQy/pub?gid=515953011&single=true&output=csv"


response = requests.get(url)
with open("shifts.csv", "wb") as shifts:
    shifts.write(response.content)
shifts.close