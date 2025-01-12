require("Manager")
require("Calculadora_IMS.IMS")
require("Planificador_de_Agua.Agua")
function Menu()
    os.execute("cls")
    print("    Salud y Bienestar ")
    print("-------------------------")
    print("1) Calculadora de IMC\n2) Planificador de agua\n"..Configuracion.Atajos["exit"]..") Salir")
    while true do
        local selection = io.read()
        if selection == "1" then
          MenuIMS()
            break
        elseif selection == "2" then
            MenuAgua()
                break
        elseif selection == Configuracion.Atajos["exit"] then
            os.exit()
        else
            print("Argumento invalido.")
        end
    end
end
Menu()