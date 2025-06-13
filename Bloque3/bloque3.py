#Caso práctico: Trabajar con ventas.csv y clientes.json para calcular ventas por región.Leer y unir los archivos usando pandas.
#Calcular ventas por región y generar Excel con resumen.
#Comentar el código explicando cada paso.
#Compilar y generar archivo (.exe)

import pandas as pd


#leer archivo csv 
df_ventas= pd.read_csv("ventas.csv")
#leer archivo JSON 
df_clientes= pd.read_json("clientes.json")

#unir archivos
df_unido = pd.merge(df_ventas, df_clientes, on='ID_Cliente')

#sumar y agrupar por region
resumen = df_unido.groupby("Regi\u00f3n")["Venta"].sum().reset_index()
resumen.rename(columns={"Venta": "Total_Ventas"}, inplace=True)

# guardar en un excel
resumen.to_excel("ventas_region.xlsx", index=False)


#No aplican .exe ya que no se peude compilar estas hojas ya que son archivos de datos 
# y un .exe debe ser eecutado directamente del sistema operativo