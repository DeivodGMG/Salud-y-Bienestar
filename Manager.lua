
Configuracion = {
    Atajos = {
        ["exit"] = "q"
    }
}
Upsesito = function ()
    print("Algo salio mal :(")
    print(Configuracion.Atajos["exit"]..") Regresar al menu.")
    while true do
        local select = io.read()
        if select == Configuracion.Atajos["exit"] then
            Menu()
        end
    end
end

Composicion_Corporal = function (valor)
    if valor < 18.5 then
        return "Peso inferior al normal."
    elseif valor >= 18.5 and valor <=24.9 then
        return "Normal."
    elseif valor > 24.9 and valor <= 29.9 then
        return "Peso superior al normal."
    else
        return "Obesidad"
    end
end