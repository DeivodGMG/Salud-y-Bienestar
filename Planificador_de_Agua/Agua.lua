local Start = function ()
    os.execute("cls")
    print("Ingrese el peso en Kg:") 
    local results = 0
    local peso = tonumber(io.read()) --ASIGNAR VARIABLE PESO
    local ok,mensajeError = pcall(function ()
         results = peso * 35
    end)
    if ok == false then
        print(mensajeError)
        Upsesito()
    end
    os.execute("cls")
print("** Resultados **\nCantidad de agua que debe beber: "..results.."ml\n------------------------------------\n1) Reintentar proceso\n"..Configuracion.Atajos["exit"]..") Regresar al Menu principal")
while true do
    local select = io.read()
    if select == "1" then
        MenuAgua()
        break
    elseif select == Configuracion.Atajos["exit"] then
        Menu()
        break
    else
        print("Argumento invalido.")
    end
end
end



function MenuAgua() -- MENU DE LA CATEGORIA
    os.execute("cls")
    print("Con base a tu peso, el programa arrojara la cantidad de agua que\ndebes de beber al dia.\n1) Iniciar\n"..Configuracion.Atajos["exit"]..") Atras")
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