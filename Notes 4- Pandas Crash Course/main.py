import pandas as pd # pyright: ignore[reportMissingModuleSource]

"""
DataFrame-2D level array
Series- 1D level array

CSV-Comma Separated Values
"""

#load CSV file
df=pd.read_csv("orders.csv")

print(df)