--internationalization and localization implementation by amigojapan
--dictionary for english, kept in seperate file you can include it by require("localizations.lua")
i18n={}
i18n["English"]={
	["Language"]="English",
	["Start"]="Start!",
	["Nokori"]="",
	["Punkan"]=" Minutes Left",
	["Hamburgers"]="Hamburgers :",
	["Cheeseburgers"]="Cheeseburgers :",
	["Frenchfries"]="Frenchfries :",
	["Pieces"]="Pieces",
	["Made Hamburgers"]="Made Hamburgers： ",
	["Odered Hamburgers"]="Ordered Hamburgers：",
	["Waste"]="Waste：✖",
	["Incomplete Orders"]="Incomplete Orders：✖",
	["Perfect Balance Bonus"]="Perfect Balance Bonus：✔✔",
	["Made Cheeseburgers"]="Made Cheeseburgers： ",
	["Odered Cheeseburgers"]="Made Cheeseburgers：",
	["Made Frenchfries"]="Made Frenchfries： ",
	["Odered Frenchfries"]="Odered Frenchfries：",
	["Cleanlyness"]=" Cleanlyness：",
	["Total Points"]="Total Points：",
	["Difficulty"]="Difficulty",
	["Easy"]="Easy",
	["Medium"]="Medium",
	["Hard"]="Hard"
}
i18n["Japanese"]={
	["Language"]="日本語",
	["Start"]="スタート!",
	["Nokori"]="残り",
	["Punkan"]="分間",
	["Hamburgers"]="ハンバーガー :",
	["Cheeseburgers"]="チーズバーガー :",
	["Frenchfries"]="ポテトフライ :",
	["Pieces"]="個",
	["Made Hamburgers"]="作ったハンバーガー： ",
	["Odered Hamburgers"]="ハンバーガーオーダー：",
	["Waste"]="ゴミ：✖",
	["Incomplete Orders"]="未完成オーダー：✖",
	["Perfect Balance Bonus"]="パーフェクトバランスボーナス：✔✔",
	["Made Cheeseburgers"]="作ったチーズバーガー： ",
	["Odered Cheeseburgers"]="チーズバーガーオーダー：",
	["Made Frenchfries"]="作ったポテトフライ： ",
	["Odered Frenchfries"]="ポテトフライオーダー：",
	["Cleanlyness"]=" 清潔感：",
	["Total Points"]="トータルポイント：",
	["Difficulty"]="難易度（なんいど）",
	["Easy"]="かんたん",
	["Medium"]="ふつう",
	["Hard"]="むずかしい"
}
i18n["Spanish"]={
	["Language"]="Español",
	["Start"]="Comenzar!",
	["Nokori"]="Quedan ",
	["Punkan"]=" minutos",
	["Hamburgers"]="Hamburguesas :",
	["Cheeseburgers"]="Hamburguesas-queso :",
	["Frenchfries"]="Patatas fritas :",
	["Pieces"]="",
	["Made Hamburgers"]="Hamburguesas hechas： ",
	["Odered Hamburgers"]="Hamburguesas ordenadas：",
	["Waste"]="Basura：✖",
	["Incomplete Orders"]="Ordenes Incompletas：✖",
	["Perfect Balance Bonus"]="Puntos, perfecto balance：✔✔",
	["Made Cheeseburgers"]="Hamburquesas-queso hechas： ",
	["Odered Cheeseburgers"]="Hamburguesas-queso ordenadas：",
	["Made Frenchfries"]="Patatas fritas hechas： ",
	["Odered Frenchfries"]="Patatas fritas ordenadas：",
	["Cleanlyness"]=" Limpieza：",
	["Total Points"]="Puntos en total：",
	["Difficulty"]="Dificultad",
	["Easy"]="Facil",
	["Medium"]="Medio",
	["Hard"]="Dificil"
}
function i18n_setlang(lang)
	--print(i18n[lang]["Enter command:"])
	return i18n[lang]
end

--translate=i18n_setlang("English")
--print(translate["Hello World"])
--print(translate["Goodbye World"])
--translate=i18n_setlang("Spanish")
--print(translate["Hello World"])
--print(translate["Goodbye World"])
--translate=i18n_setlang("Japanese")
--print(translate["Hello World"])
--print(translate["Goodbye World"])　