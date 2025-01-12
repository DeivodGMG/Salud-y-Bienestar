require("Manager")
local Start = function ()
    os.execute("cls")
    print("Ingrese el peso en Kg:") --ASIGNAR VARIABLES
    local peso = tonumber(io.read())
    print("Ahora la estatura en metros:")
    local estatura = tonumber(io.read())
    local result = 0
    local ok,mensajeError = pcall(function ()
        local estatura_por_Metros = estatura * estatura
         result = (peso / estatura_por_Metros) 
    end)
    if ok == false then
        print(mensajeError)
        Upsesito()
    end
  os.execute("cls")
print("** Resultados **\n- Indice de masa corportal (IMC): "..result.."\n- Composicion corporal: "..Composicion_Corporal(result).."\n------------------------------------\n1) Reintentar proceso\n"..Configuracion.Atajos["exit"]..") Regresar al Menu principal")
while true do
    local select = io.read()
    if select == "1" then
        MenuIMS()
        break
    elseif select == Configuracion.Atajos["exit"] then
        Menu()
        break
    else
        print("Argumento invalido.")
    end
end
end
function MenuIMS()
    os.execute("cls")
    print("Recibe peso y altura. Calcula el indice de masa corporal e imprime una evaluacion\n1) Iniciar\n"..Configuracion.Atajos["exit"]..") Atras")
    while true do
        local select = io.read()
        if select == "1" then
            Start()
            break
        elseif select == Configuracion.Atajos["exit"] then
            Menu()
            break
        else
            print("Argumento invalido.")
        end
    end
end