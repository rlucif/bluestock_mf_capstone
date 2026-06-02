import requests
import pandas as pd
from pathlib import Path

# scheme code are taken from the provided fund_master dataset
# and capstone specification
schemes = {
    "SBI_Bluechip": 119551,
    "ICICI_Bluechip": 120503,
    "Nippon_Large_Cap": 118632,
    "Axis_Bluechip": 119092,
    "Kotak_Bluechip": 120841,
}

output_dir = Path("data/raw")

for name, code in schemes.items():
    url = f"https://api.mfapi.in/mf/{code}"

    response = requests.get(url)
    response.raise_for_status()

    data = response.json()
    nav_df = pd.DataFrame(data["data"])

    file_name = f"{name}_{code}.csv"
    output_path = output_dir / file_name
    nav_df.to_csv(output_path, index = False)

    print(f"Saved: {file_name}")
    print(f" - Records: {len(nav_df)}")
    print("-" * 40)