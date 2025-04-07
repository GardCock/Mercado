
import pandas as pd
import seaborn as sns
import sqlalchemy

user = "root"
passw = ""
host = "127.0.0.7:3307"
database = "Mercado"

engine = sqlalchemy.create_engine(f"mysql+pymysql://{user}:{passw}@{host}/{database}")

product = pd.read_sql('SELECT * FROM Produto', engine)
cate = pd.read_sql('SELECT * FROM Categoria', engine)
func = pd.read_sql('SELECT * FROM Funcionario', engine)

print(product, cate, func)

pd.read_sql('INSERT INTO Categoria (nome) VALUES ("Alimentos")', engine)
pd.read_sql('INSERT INTO Setor (nome) VALUES ("Adminstrativo")', engine)
pd.read_sql('INSERT INTO Vendas (produto_id, data, quantidade, funcionario_id) VALUES (4, "2024-10-01", 4, 1)', engine)

box = sns.boxplot(product["preco"])
print(box)

plot = product["preco"].plot(kind="hist")
print(plot)

dist = sns.distplot(product["preco"])
print(dist)

desc = product["preco"].describe()
print(desc)