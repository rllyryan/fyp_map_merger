import pandas as pd

data = [['John', 10, 100],
        ['Mary', 10, 104],
        [None, None, None]]

df1 = pd.DataFrame(data, columns = ['Name', 'Age', 'Height'])

print(df1)

df1.to_csv('test.csv', mode = 'w', index = False)

data = [['Meow', 10, 100],
        ['Man', 11, 104],
        [None, None, None]]

df2 = pd.DataFrame(data, columns = ['Type', 'Ag', 'Hght'])

df2.to_csv('test.csv', mode = 'a', index = False)

