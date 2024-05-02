PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//13469021/1162875/2.50/15/4/Integrated Circuit

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r55_25"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.250) (shapeHeight 0.550))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r57.5_25"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.250) (shapeHeight 0.575))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r125_40"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.400) (shapeHeight 1.250))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r100_40"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.400) (shapeHeight 1.000))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r45_22.5"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.225) (shapeHeight 0.450))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r105_40"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.400) (shapeHeight 1.050))
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
	(patternDef "TPS61288RQQR" (originalName "TPS61288RQQR")
		(multiLayer
			(pad (padNum 1) (padStyleRef r57.5_25) (pt -1.413, 0.875) (rotation 90))
			(pad (padNum 2) (padStyleRef r55_25) (pt -1.425, 0.375) (rotation 90))
			(pad (padNum 3) (padStyleRef r125_40) (pt -1.075, -0.200) (rotation 90))
			(pad (padNum 4) (padStyleRef r100_40) (pt 0.000, -0.250) (rotation 0))
			(pad (padNum 5) (padStyleRef r125_40) (pt 1.075, -0.200) (rotation 90))
			(pad (padNum 6) (padStyleRef r55_25) (pt 1.425, 0.375) (rotation 90))
			(pad (padNum 7) (padStyleRef r57.5_25) (pt 1.413, 0.875) (rotation 90))
			(pad (padNum 8) (padStyleRef r55_25) (pt 0.750, 1.175) (rotation 0))
			(pad (padNum 9) (padStyleRef r55_25) (pt 0.250, 1.175) (rotation 0))
			(pad (padNum 10) (padStyleRef r55_25) (pt -0.250, 1.175) (rotation 0))
			(pad (padNum 11) (padStyleRef r55_25) (pt -0.750, 1.175) (rotation 0))
			(pad (padNum 12) (padStyleRef r45_22.5) (pt -1.237, 1.225) (rotation 0))
			(pad (padNum 13) (padStyleRef r105_40) (pt -0.650, -0.925) (rotation 0))
			(pad (padNum 14) (padStyleRef r105_40) (pt 0.650, -0.925) (rotation 0))
			(pad (padNum 15) (padStyleRef r45_22.5) (pt 1.237, 1.225) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0.000, 0.000) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.5 -1.25) (pt 1.5 -1.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.5 -1.25) (pt 1.5 1.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.5 1.25) (pt -1.5 1.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.5 1.25) (pt -1.5 -1.25) (width 0.025))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -2.7 2.45) (pt 2.7 2.45) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 2.7 2.45) (pt 2.7 -2.45) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 2.7 -2.45) (pt -2.7 -2.45) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -2.7 -2.45) (pt -2.7 2.45) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.4 0.875) (pt -2.4 0.875) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -2.35, 0.875) (radius 0.05) (startAngle 180.0) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.3 0.875) (pt -2.3 0.875) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -2.35, 0.875) (radius 0.05) (startAngle .0) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.4 0.875) (pt -2.4 0.875) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -2.35, 0.875) (radius 0.05) (startAngle 180.0) (sweepAngle 180.0) (width 0.2))
		)
	)
	(symbolDef "TPS61288RQQR" (originalName "TPS61288RQQR")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -225 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 4) (pt 0 mils -300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -325 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 5) (pt 0 mils -400 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -425 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 6) (pt 0 mils -500 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -525 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 7) (pt 0 mils -600 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -625 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 8) (pt 0 mils -700 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -725 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 9) (pt 1300 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 10) (pt 1300 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 11) (pt 1300 mils -200 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -225 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 12) (pt 1300 mils -300 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -325 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 13) (pt 1300 mils -400 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -425 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 14) (pt 1300 mils -500 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -525 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 15) (pt 1300 mils -600 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -625 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 100 mils) (pt 1100 mils 100 mils) (width 6 mils))
		(line (pt 1100 mils 100 mils) (pt 1100 mils -800 mils) (width 6 mils))
		(line (pt 1100 mils -800 mils) (pt 200 mils -800 mils) (width 6 mils))
		(line (pt 200 mils -800 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 1150 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 1150 mils 200 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "TPS61288RQQR" (originalName "TPS61288RQQR") (compHeader (numPins 15) (numParts 1) (refDesPrefix IC)
		)
		(compPin "1" (pinName "FB_1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "2" (pinName "COMP") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "3" (pinName "PGND_1") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "4" (pinName "SW_1") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "5" (pinName "VOUT_1") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "6" (pinName "EN") (partNum 1) (symPinNum 6) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "7" (pinName "VIN_1") (partNum 1) (symPinNum 7) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "8" (pinName "BST") (partNum 1) (symPinNum 8) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "9" (pinName "SW_2") (partNum 1) (symPinNum 9) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "10" (pinName "AGND") (partNum 1) (symPinNum 10) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "11" (pinName "VCC") (partNum 1) (symPinNum 11) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "12" (pinName "FB_2") (partNum 1) (symPinNum 12) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "13" (pinName "PGND_2") (partNum 1) (symPinNum 13) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "14" (pinName "VOUT_2") (partNum 1) (symPinNum 14) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "15" (pinName "VIN_2") (partNum 1) (symPinNum 15) (gateEq 0) (pinEq 0) (pinType Unknown))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "TPS61288RQQR"))
		(attachedPattern (patternNum 1) (patternName "TPS61288RQQR")
			(numPads 15)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
				(padNum 5) (compPinRef "5")
				(padNum 6) (compPinRef "6")
				(padNum 7) (compPinRef "7")
				(padNum 8) (compPinRef "8")
				(padNum 9) (compPinRef "9")
				(padNum 10) (compPinRef "10")
				(padNum 11) (compPinRef "11")
				(padNum 12) (compPinRef "12")
				(padNum 13) (compPinRef "13")
				(padNum 14) (compPinRef "14")
				(padNum 15) (compPinRef "15")
			)
		)
		(attr "Mouser Part Number" "595-TPS61288RQQR")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TPS61288RQQR?qs=eP2BKZSCXI7ZX8saYJkaIw%3D%3D")
		(attr "Manufacturer_Name" "Texas Instruments")
		(attr "Manufacturer_Part_Number" "TPS61288RQQR")
		(attr "Description" "18V, 15A synch boost converter")
		(attr "<Hyperlink>" "https://www.ti.com/lit/ds/symlink/tps61288.pdf?ts=1609351344517&ref_url=https%253A%252F%252Fwww.ti.com%252Fpower-management%252Fnon-isolated-dc-dc-switching-regulators%252Fstep-up-boost%252Fboost-converters-integrated-switch%252Fproducts.html")
		(attr "<Component Height>" "1")
		(attr "<STEP Filename>" "TPS61288RQQR.stp")
		(attr "<STEP Offsets>" "X=0;Y=0;Z=0")
		(attr "<STEP Rotation>" "X=0;Y=0;Z=0")
	)

)
