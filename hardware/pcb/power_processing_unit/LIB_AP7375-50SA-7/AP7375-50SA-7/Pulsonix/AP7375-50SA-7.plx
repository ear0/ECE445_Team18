PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//17149685/1162875/2.50/3/3/Integrated Circuit

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r110_65"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.65) (shapeHeight 1.1))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "SOT96P240X110-3N" (originalName "SOT96P240X110-3N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r110_65) (pt -1.05, 0.96) (rotation 90))
			(pad (padNum 2) (padStyleRef r110_65) (pt -1.05, -0.96) (rotation 90))
			(pad (padNum 3) (padStyleRef r110_65) (pt 1.05, 0) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.85 1.75) (pt 1.85 1.75) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.85 1.75) (pt 1.85 -1.75) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.85 -1.75) (pt -1.85 -1.75) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.85 -1.75) (pt -1.85 1.75) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.65 1.45) (pt 0.65 1.45) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.65 1.45) (pt 0.65 -1.45) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.65 -1.45) (pt -0.65 -1.45) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.65 -1.45) (pt -0.65 1.45) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.65 0.49) (pt 0.31 1.45) (width 0.025))
		)
		(layerContents (layerNumRef 18)
			(line (pt -0.15 1.45) (pt 0.15 1.45) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 0.15 1.45) (pt 0.15 -1.45) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 0.15 -1.45) (pt -0.15 -1.45) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -0.15 -1.45) (pt -0.15 1.45) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.6 1.535) (pt -0.5 1.535) (width 0.2))
		)
	)
	(symbolDef "AP7375-50SA-7" (originalName "AP7375-50SA-7")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 3) (pt 1100 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 870 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 100 mils) (pt 900 mils 100 mils) (width 6 mils))
		(line (pt 900 mils 100 mils) (pt 900 mils -200 mils) (width 6 mils))
		(line (pt 900 mils -200 mils) (pt 200 mils -200 mils) (width 6 mils))
		(line (pt 200 mils -200 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 950 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 950 mils 200 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "AP7375-50SA-7" (originalName "AP7375-50SA-7") (compHeader (numPins 3) (numParts 1) (refDesPrefix IC)
		)
		(compPin "1" (pinName "VIN") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "2" (pinName "VOUT") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "3" (pinName "GND") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Unknown))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "AP7375-50SA-7"))
		(attachedPattern (patternNum 1) (patternName "SOT96P240X110-3N")
			(numPads 3)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
			)
		)
		(attr "Mouser Part Number" "621-AP7375-50SA-7")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Diodes-Incorporated/AP7375-50SA-7?qs=t7xnP681wgX8yYKy1Pe5iA%3D%3D")
		(attr "Manufacturer_Name" "Diodes Incorporated")
		(attr "Manufacturer_Part_Number" "AP7375-50SA-7")
		(attr "Description" "LDO Voltage Regulators LDO CMOS LowCurr SOT23 T&R 3K")
		(attr "<Hyperlink>" "")
		(attr "<Component Height>" "1.1")
		(attr "<STEP Filename>" "AP7375-50SA-7.stp")
		(attr "<STEP Offsets>" "X=0;Y=0;Z=0")
		(attr "<STEP Rotation>" "X=0;Y=0;Z=0")
	)

)
