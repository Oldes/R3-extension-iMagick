REBOL [
	purpose: {parsed spec from: pixel_wand.html}
	problems: []
]

ClearPixelWand: [
	"Clears resources associated with the wand"
	wand	"PixelWand *"	"the pixel wand."
	return: "void"
]

ClonePixelWand: [
	"Makes an exact copy of the specified wand"
	wand	"PixelWand *"	"the magick wand."
	return: "PixelWand*"
]

ClonePixelWands: [
	"Makes an exact copy of the specified wands"
	wands	"PixelWand **"	"the magick wands."
	number_wands	"size_t"	"the number of wands."
	return: "PixelWand**"
]

DestroyPixelWand: [
	"Deallocates resources associated with a PixelWand"
	wand	"PixelWand *"	"the pixel wand."
	return: "PixelWand*"
]

DestroyPixelWands: [
	{Deallocates resources associated with an array of pixel wands}
	wand	"PixelWand **"	"the pixel wand."
	number_wands	"size_t"	"the number of wands."
	return: "PixelWand**"
]

IsPixelWandSimilar: [
	{Returns MagickTrue if the distance between two colors is less than the specified distance}
	p	"PixelWand *"	"the pixel wand."
	q	"PixelWand *"	"the pixel wand."
	fuzz	"double"	{any two colors that are less than or equal to this distance squared are consider similar.}
	return: "MagickBooleanType"
]

IsPixelWand: [
	{Returns MagickTrue if the wand is verified as a pixel wand}
	wand	"PixelWand *"	"the magick wand."
	return: "MagickBooleanType"
]

NewPixelWand: [
	"Returns a new pixel wand"
	return: "PixelWand*"
]

NewPixelWands: [
	"Returns an array of pixel wands"
	number_wands	"size_t"	"the number of wands."
	return: "PixelWand**"
]

PixelClearException: [
	"Clear any exceptions associated with the iterator"
	wand	"PixelWand *"	"the pixel wand."
	return: "MagickBooleanType"
]

PixelGetAlpha: [
	{Returns the normalized alpha color of the pixel wand}
	wand	"PixelWand *"	"the pixel wand."
	return: "double"
]

PixelGetAlphaQuantum: [
	"Returns the alpha value of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	return: "Quantum"
]

PixelGetBlack: [
	{Returns the normalized black color of the pixel wand}
	wand	"PixelWand *"	"the pixel wand."
	return: "double"
]

PixelGetBlackQuantum: [
	"Returns the black color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	return: "Quantum"
]

PixelGetBlue: [
	{Returns the normalized blue color of the pixel wand}
	wand	"PixelWand *"	"the pixel wand."
	return: "double"
]

PixelGetBlueQuantum: [
	"Returns the blue color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	return: "Quantum"
]

PixelGetColorAsString: [
	"Returnsd the color of the pixel wand as a string"
	wand	"PixelWand *"	"the pixel wand."
	return: "char*"
]

PixelGetColorAsNormalizedString: [
	{Returns the normalized color of the pixel wand as a string}
	wand	"PixelWand *"	"the pixel wand."
	return: "char*"
]

PixelGetColorCount: [
	"Returns the color count associated with this color"
	wand	"PixelWand *"	"the pixel wand."
	return: "size_t"
]

PixelGetCyan: [
	{Returns the normalized cyan color of the pixel wand}
	wand	"PixelWand *"	"the pixel wand."
	return: "double"
]

PixelGetCyanQuantum: [
	"Returns the cyan color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	return: "Quantum"
]

PixelGetException: [
	{Returns the severity, reason, and description of any error that occurs when using other methods in this API}
	wand	"PixelWand *"	"the pixel wand."
	severity	"ExceptionType *"	"the severity of the error is returned here."
	return: "char*"
]

PixelGetExceptionType: [
	"The exception type associated with the wand"
	wand	"PixelWand *"	"the magick wand."
	return: "ExceptionType"
]

PixelGetFuzz: [
	{Returns the normalized fuzz value of the pixel wand}
	wand	"PixelWand *"	"the pixel wand."
	return: "double"
]

PixelGetGreen: [
	{Returns the normalized green color of the pixel wand}
	wand	"PixelWand *"	"the pixel wand."
	return: "double"
]

PixelGetGreenQuantum: [
	"Returns the green color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	return: "Quantum"
]

PixelGetHSL: [
	"Returns the normalized HSL color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	hue	"double *"	"Return the pixel hue, saturation, and brightness."
	saturation	"double *"	"Return the pixel hue, saturation, and brightness."
	lightness	"double *"	"Return the pixel hue, saturation, and brightness."
	return: "void"
]

PixelGetIndex: [
	"Returns the colormap index from the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	return: "IndexPacket"
]

PixelGetMagenta: [
	{Returns the normalized magenta color of the pixel wand}
	wand	"PixelWand *"	"the pixel wand."
	return: "double"
]

PixelGetMagentaQuantum: [
	"Returns the magenta color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	return: "Quantum"
]

PixelGetOpacity: [
	{Returns the normalized opacity color of the pixel wand}
	wand	"PixelWand *"	"the pixel wand."
	return: "double"
]

PixelGetOpacityQuantum: [
	"Returns the opacity color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	return: "Quantum"
]

PixelGetQuantumColor: [
	"Gets the color of the pixel wand as a PixelPacket"
	wand	"PixelWand *"	"the pixel wand."
	color	"PixelPacket *"	"The pixel wand color is returned here."
	return: "void"
]

PixelGetRed: [
	"Returns the normalized red color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	return: "double"
]

PixelGetRedQuantum: [
	"Returns the red color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	return: "Quantum"
]

PixelGetYellow: [
	{Returns the normalized yellow color of the pixel wand}
	wand	"PixelWand *"	"the pixel wand."
	return: "double"
]

PixelGetYellowQuantum: [
	"Returns the yellow color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	return: "Quantum"
]

PixelSetAlpha: [
	"Sets the normalized alpha color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	alpha	"double"	{the level of transparency: 1.0 is fully opaque and 0.0 is fully transparent.}
	return: "void"
]

PixelSetAlphaQuantum: [
	"Sets the alpha color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	opacity	"Quantum"	"the opacity color."
	return: "void"
]

PixelSetBlack: [
	"Sets the normalized black color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	black	"double"	"the black color."
	return: "void"
]

PixelSetBlackQuantum: [
	"Sets the black color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	black	"Quantum"	"the black color."
	return: "void"
]

PixelSetBlue: [
	"Sets the normalized blue color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	blue	"double"	"the blue color."
	return: "void"
]

PixelSetBlueQuantum: [
	"Sets the blue color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	blue	"Quantum"	"the blue color."
	return: "void"
]

PixelSetColor: [
	"Sets the color of the pixel wand with a string (e"
	wand	"PixelWand *"	"the pixel wand."
	color	"char *"	"the pixel wand color."
	return: "MagickBooleanType"
]

PixelSetColorCount: [
	"Sets the color count of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	count	"size_t"	"the number of this particular color."
	return: "void"
]

PixelSetCyan: [
	"Sets the normalized cyan color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	cyan	"double"	"the cyan color."
	return: "void"
]

PixelSetCyanQuantum: [
	"Sets the cyan color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	cyan	"Quantum"	"the cyan color."
	return: "void"
]

PixelSetFuzz: [
	"Sets the fuzz value of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	fuzz	"double"	"the fuzz value."
	return: "void"
]

PixelSetGreen: [
	"Sets the normalized green color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	green	"double"	"the green color."
	return: "void"
]

PixelSetGreenQuantum: [
	"Sets the green color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	green	"Quantum"	"the green color."
	return: "void"
]

PixelSetHSL: [
	"Sets the normalized HSL color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	hue	"double"	"Return the pixel hue, saturation, and brightness."
	saturation	"double"	"Return the pixel hue, saturation, and brightness."
	lightness	"double"	"Return the pixel hue, saturation, and brightness."
	return: "void"
]

PixelSetIndex: [
	"Sets the colormap index of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	index	"IndexPacket"	"the colormap index."
	return: "void"
]

PixelSetMagenta: [
	{Sets the normalized magenta color of the pixel wand}
	wand	"PixelWand *"	"the pixel wand."
	magenta	"double"	"the magenta color."
	return: "void"
]

PixelSetMagentaQuantum: [
	"Sets the magenta color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	magenta	"Quantum"	"the green magenta."
	return: "void"
]

PixelSetOpacity: [
	{Sets the normalized opacity color of the pixel wand}
	wand	"PixelWand *"	"the pixel wand."
	opacity	"double"	"the opacity color."
	return: "void"
]

PixelSetOpacityQuantum: [
	"Sets the opacity color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	opacity	"Quantum"	"the opacity color."
	return: "void"
]

PixelSetRed: [
	"Sets the normalized red color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	red	"double"	"the red color."
	return: "void"
]

PixelSetRedQuantum: [
	"Sets the red color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	red	"Quantum"	"the red color."
	return: "void"
]

PixelSetYellow: [
	"Sets the normalized yellow color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	yellow	"double"	"the yellow color."
	return: "void"
]

PixelSetYellowQuantum: [
	"Sets the yellow color of the pixel wand"
	wand	"PixelWand *"	"the pixel wand."
	yellow	"Quantum"	"the yellow color."
	return: "void"
]

