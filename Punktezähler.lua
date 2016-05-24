--========Team A======Team B========
--|                |               |
--|			42     :    	72	   |
--|                |               |
--==================================

function drawScoreCounter(pointsA,pointsB)
	print("========Team A======Team B========")
    print("|                |               |")

	punktezeile="|        "..pointsA
	--print(punktezeile)


	if(tonumber(pointsA)<10) then
		punktezeile= punktezeile.. " ".."      :      "..pointsB
	elseif(tonumber(pointsA)<100) then
		punktezeile= punktezeile.. "      :      " ..pointsB
	elseif(tonumber(pointsA)<1000) then
		punktezeile= punktezeile.. "     :      "  ..pointsB
	end

	if(tonumber(pointsB)<10) then
		punktezeile=punktezeile.."        ".. "|"
	elseif(tonumber(pointsB)<100) then
		punktezeile=punktezeile.."       ".."|"
	elseif(tonumber(pointsB)<1000) then
		punktezeile=punktezeile.."      ".."|"
	end


	print(punktezeile)
	print("|                |               |")
	print("==================================")

end

--pointsA= io.read()
--pointsB= io.read()

pointsA=0
pointsB=0

drawScoreCounter(pointsA,pointsB)

spielLauft = true
while spielLauft do
	--print("step")

	--Einlesen welches Team gepunktet hat
	print("Welches Team hat gepunktet oder ist das Spiel zu Ende?")
	team=io.read()



	-- Punkte dem Team gutschreiben
	if("Ende"==team) then
		spielLauft  = false
	else
		-- Einlesen wie viele Punkte
		print("wie viele Punkte wurden gemacht ?")
		punkte=io.read()

		if("Team A"==team) then
			if(tonumber(punkte)==1) then
				pointsA = pointsA + 1
			elseif(tonumber(punkte)==2) then
				pointsA=pointsA + 2
			elseif(tonumber(punkte)==3) then
				pointsA=pointsA + 3

			end
		end

		if("Team B"==team) then
			if(tonumber(punkte)==1) then
				pointsB = pointsB + 1
			elseif(tonumber(punkte)==2) then
				pointsB=pointsB + 2
			elseif(tonumber(punkte)==3) then
				pointsB=pointsB + 3
			end
		end

	end


--irgendwann ist das Spiel zu Ende


	drawScoreCounter(pointsA,pointsB)
end
