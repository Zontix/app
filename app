import streamlit as st
import pandas as pd

# Título do aplicativo
st.title("Contagem de linhas em um arquivo CSV")

# Carrega o arquivo CSV
file = st.file_uploader("Selecione um arquivo CSV", type="csv")

if file is not None:
    # Lê o arquivo CSV usando o pandas
    df = pd.read_csv(file)

    # Conta a quantidade de linhas
    num_linhas = len(df)

    # Exibe o resultado
    st.write(f"A quantidade de linhas no arquivo é: {num_linhas}")
