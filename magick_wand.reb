REBOL [
	purpose: {parsed spec from: magick_wand.html}
	attention: [
	    "MagickClutImage" ["clut_wand"]
	    "MagickClutImageChannel" ["channel" "clut_wand"]
	    "MagickCompositeImage" ["composite_wand" "x"]
	    "MagickCompositeImageChannel" ["channel" "composite_wand" "x"]
	    "MagickCycleColormapImage" ["displace"]
	    "MagickDistortImage" ["wand"]
	    "MagickEvaluateImage" ["operator"]
	    "MagickEvaluateImages" ["operator"]
	    "MagickGammaImage" ["gamma"]
	    "MagickGammaImageChannel" ["gamma"]
	    "MagickHaldClutImage" ["hald_wand"]
	    "MagickHaldClutImageChannel" ["channel" "hald_wand"]
	    "MagickImplodeImage" ["radius"]
	    "MagickNewImage" ["columns" "rows"]
	    "MagickOrderedPosterizeImage" ["wand"]
	    "MagickOrderedPosterizeImageChannel" ["wand"]
	    "MagickRemapImage" ["remap_wand"]
	    "MagickSetImageColor" ["color"]
	    "MagickSetImageIterations" ["iterations"]
	    "MagickSetImageScene" ["scene"]
	    "MagickSetImageTicksPerSecond" ["ticks_per-second"]
	]
]

GetImageFromMagickWand: [
	"Returns the current image from the magick wand"
	wand	"MagickWand *"	"the magick wand."
	return: "Image*"
]

MagickAdaptiveBlurImage: [
	{Adaptively blurs the image by blurring less intensely near image edges and more intensely far from edges}
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	return: "MagickBooleanType"
]

MagickAdaptiveBlurImageChannel: [
	{Adaptively blurs the image by blurring less intensely near image edges and more intensely far from edges}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	return: "MagickBooleanType"
]

MagickAdaptiveResizeImage: [
	{Adaptively resize image with data dependent triangulation}
	wand	"MagickWand *"	"the magick wand."
	columns	" const size_t"	"the number of columns in the scaled image."
	rows	"size_t"	"the number of rows in the scaled image."
	return: "MagickBooleanType"
]

MagickAdaptiveSharpenImage: [
	{Adaptively sharpens the image by sharpening more intensely near image edges and less intensely far from edges}
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	return: "MagickBooleanType"
]

MagickAdaptiveSharpenImageChannel: [
	{Adaptively sharpens the image by sharpening more intensely near image edges and less intensely far from edges}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	return: "MagickBooleanType"
]

MagickAdaptiveThresholdImage: [
	{Selects an individual threshold for each pixel based on the range of intensity values in its local neighborhood}
	wand	"MagickWand *"	"the magick wand."
	width	"size_t"	"the width of the local neighborhood."
	height	"size_t"	"the height of the local neighborhood."
	offset	"ssize_t"	"the mean offset."
	return: "MagickBooleanType"
]

MagickAddImage: [
	{Adds the specified images at the current image location}
	wand	"MagickWand *"	"the magick wand."
	add_wand	"MagickWand *"	{A wand that contains images to add at the current image location.}
	return: "MagickBooleanType"
]

MagickAddNoiseImage: [
	"Adds random noise to the image"
	wand	"MagickWand *"	"the magick wand."
	noise_type	"NoiseType"	{The type of noise: Uniform, Gaussian, Multiplicative, Impulse, Laplacian, or Poisson.}
	return: "MagickBooleanType"
]

MagickAddNoiseImageChannel: [
	"Adds random noise to the image"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	noise_type	"NoiseType"	{The type of noise: Uniform, Gaussian, Multiplicative, Impulse, Laplacian, or Poisson.}
	return: "MagickBooleanType"
]

MagickAffineTransformImage: [
	{Transforms an image as dictated by the affine matrix of the drawing wand}
	wand	"MagickWand *"	"the magick wand."
	drawing_wand	"DrawingWand *"	"the draw wand."
	return: "MagickBooleanType"
]

MagickAnnotateImage: [
	"Annotates an image with text"
	wand	"MagickWand *"	"the magick wand."
	drawing_wand	"DrawingWand *"	"the draw wand."
	x	"double"	"x ordinate to left of text"
	y	"double"	"y ordinate to text baseline"
	angle	"double"	"rotate text relative to this angle."
	text	"char *"	"text to draw"
	return: "MagickBooleanType"
]

MagickAnimateImages: [
	"Animates an image or image sequence"
	wand	"MagickWand *"	"the magick wand."
	server_name	"char *"	"the X server name."
	return: "MagickBooleanType"
]

MagickAppendImages: [
	"Append a set of images"
	wand	"MagickWand *"	"the magick wand."
	stack	"MagickBooleanType"	{By default, images are stacked left-to-right. Set stack to MagickTrue to stack them top-to-bottom.}
	return: "MagickWand*"
]

MagickAutoGammaImage: [
	{Extracts the 'mean' from the image and adjust the image to try make set its gamma appropriatally}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickAutoGammaImageChannel: [
	{Extracts the 'mean' from the image and adjust the image to try make set its gamma appropriatally}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	return: "MagickBooleanType"
]

MagickAutoLevelImage: [
	{Adjusts the levels of a particular image channel by scaling the minimum and maximum values to the full quantum range}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickAutoLevelImageChannel: [
	{Adjusts the levels of a particular image channel by scaling the minimum and maximum values to the full quantum range}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	return: "MagickBooleanType"
]

MagickBlackThresholdImage: [
	{Is like MagickThresholdImage() but  forces all pixels below the threshold into black while leaving all pixels above the threshold unchanged}
	wand	"MagickWand *"	"the magick wand."
	threshold	"PixelWand *"	"the pixel wand."
	return: "MagickBooleanType"
]

MagickBlueShiftImage: [
	{Mutes the colors of the image to simulate a scene at nighttime in the moonlight}
	wand	"MagickWand *"	"the magick wand."
	factor	"double"	"the blue shift factor (default 1.5)"
	return: "MagickBooleanType"
]

MagickBlurImage: [
	"Blurs an image"
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	{the radius of the , in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the , in pixels."
	return: "MagickBooleanType"
]

MagickBlurImageChannel: [
	"Blurs an image"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	radius	"double"	{the radius of the , in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the , in pixels."
	return: "MagickBooleanType"
]

MagickBorderImage: [
	{Surrounds the image with a border of the color defined by the bordercolor pixel wand}
	wand	"MagickWand *"	"the magick wand."
	bordercolor	"PixelWand *"	"the border color pixel wand."
	width	"size_t"	"the border width."
	height	"size_t"	"the border height."
	return: "MagickBooleanType"
]

MagickBrightnessContrastImage: [
	{To change the brightness and/or contrast of an image}
	wand	"MagickWand *"	"the magick wand."
	brightness	"double"	"the brightness percent (-100 .. 100)."
	contrast	"double"	"the contrast percent (-100 .. 100)."
	return: "MagickBooleanType"
]

MagickBrightnessContrastImageChannel: [
	{To change the brightness and/or contrast of an image}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	brightness	"double"	"the brightness percent (-100 .. 100)."
	contrast	"double"	"the contrast percent (-100 .. 100)."
	return: "MagickBooleanType"
]

MagickCharcoalImage: [
	"Simulates a charcoal drawing"
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	return: "MagickBooleanType"
]

MagickChopImage: [
	{Removes a region of an image and collapses the image to occupy the removed portion}
	wand	"MagickWand *"	"the magick wand."
	width	"size_t"	"the region width."
	height	"size_t"	"the region height."
	x	"ssize_t"	"the region x offset."
	y	"ssize_t"	"the region y offset."
	return: "MagickBooleanType"
]

MagickClampImage: [
	{Restricts the color range from 0 to the quantum depth}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickClampImageChannel: [
	{Restricts the color range from 0 to the quantum depth}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the channel."
	return: "MagickBooleanType"
]

MagickClipImage: [
	{Clips along the first path from the 8BIM profile, if present}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickClipImagePath: [
	{Clips along the named paths from the 8BIM profile, if present}
	wand	"MagickWand *"	"the magick wand."
	pathname	"char *"	{name of clipping path resource. If name is preceded by #, use clipping path numbered by name.}
	inside	"MagickBooleanType"	{if non-zero, later operations take effect inside clipping path. Otherwise later operations take effect outside clipping path.}
	return: "MagickBooleanType"
]

MagickClutImage: [
	{Replaces colors in the image from a color lookup table}
	wand	"MagickWand *"	"the magick wand."
	clut_wand	"MagickWand *"	none
	return: "MagickBooleanType"
]

MagickClutImageChannel: [
	{Replaces colors in the image from a color lookup table}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	none
	clut_wand	"MagickWand *"	none
	return: "MagickBooleanType"
]

MagickCoalesceImages: [
	{Composites a set of images while respecting any page offsets and disposal methods}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickWand*"
]

MagickColorDecisionListImage: [
	{Accepts a lightweight Color Correction Collection (CCC) file which solely contains one or more color corrections and applies the color correction to the image}
	wand	"MagickWand *"	"the magick wand."
	color_correction_collection	"char"	"the color correction collection in XML."
	return: "MagickBooleanType"
]

MagickColorizeImage: [
	"Blends the fill color with each pixel in the image"
	wand	"MagickWand *"	"the magick wand."
	colorize	"PixelWand *"	"the colorize pixel wand."
	opacity	"PixelWand *"	"the opacity pixel wand."
	return: "MagickBooleanType"
]

MagickColorMatrixImage: [
	"Apply color transformation to an image"
	wand	"MagickWand *"	"the magick wand."
	color_matrix	"KernelInfo *"	"the color matrix."
	return: "MagickBooleanType"
]

MagickCombineImages: [
	"Combines one or more images into a single image"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the channel."
	return: "MagickWand*"
]

MagickCommentImage: [
	"Adds a comment to your image"
	wand	"MagickWand *"	"the magick wand."
	comment	"char *"	"the image comment."
	return: "MagickBooleanType"
]

MagickCompareImageChannels: [
	{Compares one or more image channels of an image to a reconstructed image and returns the difference image}
	wand	"MagickWand *"	"the magick wand."
	reference	"MagickWand *"	"the reference wand."
	channel	"ChannelType"	"the channel."
	metric	"MetricType"	"the metric."
	distortion	"double *"	"the computed distortion between the images."
	return: "MagickWand*"
]

MagickCompareImageLayers: [
	{Compares each image with the next in a sequence and returns the maximum bounding region of any pixel differences it discovers}
	wand	"MagickWand *"	"the magick wand."
	method	"ImageLayerMethod"	"the compare method."
	return: "MagickWand*"
]

MagickCompareImages: [
	{Compares an image to a reconstructed image and returns the specified difference image}
	wand	"MagickWand *"	"the magick wand."
	reference	"MagickWand *"	"the reference wand."
	metric	"MetricType"	"the metric."
	distortion	"double *"	"the computed distortion between the images."
	return: "MagickWand*"
]

MagickCompositeImage: [
	{Composite one image onto another at the specified offset}
	wand	"MagickWand *"	"the magick wand."
	composite_wand	"MagickWand *"	none
	compose	"CompositeOperator"	{This operator affects how the composite is applied to the image.}
	x	"ssize_t"	"the column offset of the composited image."
	y	"ssize_t"	"the row offset of the composited image."
	return: "MagickBooleanType"
]

MagickCompositeImageChannel: [
	{Composite one image onto another at the specified offset}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	none
	composite_wand	"MagickWand *"	none
	compose	"CompositeOperator"	{This operator affects how the composite is applied to the image.}
	x	"ssize_t"	"the column offset of the composited image."
	y	"ssize_t"	"the row offset of the composited image."
	return: "MagickBooleanType"
]

MagickContrastImage: [
	{Enhances the intensity differences between the lighter and darker elements of the image}
	wand	"MagickWand *"	"the magick wand."
	sharpen	"MagickBooleanType"	"Increase or decrease image contrast."
	return: "MagickBooleanType"
]

MagickContrastStretchImage: [
	{Enhances the contrast of a color image by adjusting the pixels color to span the entire range of colors available}
	wand	"MagickWand *"	"the magick wand."
	black_point	"double"	"the black point."
	white_point	"double"	"the white point."
	return: "MagickBooleanType"
]

MagickContrastStretchImageChannel: [
	{Enhances the contrast of a color image by adjusting the pixels color to span the entire range of colors available}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	black_point	"double"	"the black point."
	white_point	"double"	"the white point."
	return: "MagickBooleanType"
]

MagickConvolveImage: [
	"Applies a custom convolution kernel to the image"
	wand	"MagickWand *"	"the magick wand."
	order	"size_t"	{the number of columns and rows in the filter kernel.}
	kernel	"double *"	{An array of doubles representing the convolution kernel.}
	return: "MagickBooleanType"
]

MagickConvolveImageChannel: [
	"Applies a custom convolution kernel to the image"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	order	"size_t"	{the number of columns and rows in the filter kernel.}
	kernel	"double *"	{An array of doubles representing the convolution kernel.}
	return: "MagickBooleanType"
]

MagickCropImage: [
	"Extracts a region of the image"
	wand	"MagickWand *"	"the magick wand."
	width	"size_t"	"the region width."
	height	"size_t"	"the region height."
	x	"ssize_t"	"the region x-offset."
	y	"ssize_t"	"the region y-offset."
	return: "MagickBooleanType"
]

MagickCycleColormapImage: [
	{Displaces an image's colormap by a given number of positions}
	wand	"MagickWand *"	"the magick wand."
	displace	"ssize_t"	none
	return: "MagickBooleanType"
]

MagickConstituteImage: [
	{Adds an image to the wand comprised of the pixel data you supply}
	wand	"MagickWand *"	"the magick wand."
	columns	"size_t"	"width in pixels of the image."
	rows	"size_t"	"height in pixels of the image."
	map	"char *"	{This string reflects the expected ordering of the pixel array. It can be any combination or order of R = red, G = green, B = blue, A = alpha (0 is transparent), O = opacity (0 is opaque), C = cyan, Y = yellow, M = magenta, K = black, I = intensity (for grayscale), P = pad.}
	storage	"StorageType"	{Define the data type of the pixels.  Float and double types are expected to be normalized [0..1] otherwise [0..QuantumRange].  Choose from these types: CharPixel, DoublePixel, FloatPixel, IntegerPixel, LongPixel, QuantumPixel, or ShortPixel.}
	pixels	"void *"	{This array of values contain the pixel components as defined by map and type.  You must preallocate this array where the expected length varies depending on the values of width, height, map, and type.}
	return: "MagickBooleanType"
]

MagickDecipherImage: [
	"Converts cipher pixels to plain pixels"
	wand	"MagickWand *"	"the magick wand."
	passphrase	"char *"	"the passphrase."
	return: "MagickBooleanType"
]

MagickDeconstructImages: [
	{Compares each image with the next in a sequence and returns the maximum bounding region of any pixel differences it discovers}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickWand*"
]

MagickDeskewImage: [
	"Removes skew from the image"
	wand	"MagickWand *"	"the magick wand."
	threshold	"double"	"separate background from foreground."
	return: "MagickBooleanType"
]

MagickDespeckleImage: [
	{Reduces the speckle noise in an image while perserving the edges of the original image}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickDestroyImage: [
	{Dereferences an image, deallocating memory associated with the image if the reference count becomes zero}
	image	"Image *"	"the image."
	return: "Image*"
]

MagickDisplayImage: [
	"Displays an image"
	wand	"MagickWand *"	"the magick wand."
	server_name	"char *"	"the X server name."
	return: "MagickBooleanType"
]

MagickDisplayImages: [
	"Displays an image or image sequence"
	wand	"MagickWand *"	"the magick wand."
	server_name	"char *"	"the X server name."
	return: "MagickBooleanType"
]

MagickDistortImage: [
	{Distorts an image using various distortion methods, by mapping color lookups of the source image to a new destination image usally of the same size as the source image, unless 'bestfit' is set to true}
	wand	"MagickWand *"	none
	method	"DistortImageMethod"	"the method of image distortion."
	number_arguments	"size_t"	{the number of arguments given for this distortion method.}
	arguments	"double *"	"the arguments for this distortion method."
	bestfit	"MagickBooleanType"	{Attempt to resize destination to fit distorted source.}
	return: "MagickBooleanType"
]

MagickDrawImage: [
	"Renders the drawing wand on the current image"
	wand	"MagickWand *"	"the magick wand."
	drawing_wand	"DrawingWand *"	"the draw wand."
	return: "MagickBooleanType"
]

MagickEdgeImage: [
	{Enhance edges within the image with a convolution filter of the given radius}
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	"the radius of the pixel neighborhood."
	return: "MagickBooleanType"
]

MagickEmbossImage: [
	{Returns a grayscale image with a three-dimensional effect}
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	return: "MagickBooleanType"
]

MagickEncipherImage: [
	"Converts plaint pixels to cipher pixels"
	wand	"MagickWand *"	"the magick wand."
	passphrase	"char *"	"the passphrase."
	return: "MagickBooleanType"
]

MagickEnhanceImage: [
	{Applies a digital filter that improves the quality of a noisy image}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickEqualizeImage: [
	"Equalizes the image histogram"
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickEqualizeImageChannel: [
	"Equalizes the image histogram"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	return: "MagickBooleanType"
]

MagickEvaluateImage: [
	{Applys an arithmetic, relational, or logical expression to an image}
	wand	"MagickWand *"	"the magick wand."
	operator	"MagickEvaluateOperator"	"A channel operator."
	value	"double"	"A value value."
	return: "MagickBooleanType"
]

MagickEvaluateImages: [
	{Applys an arithmetic, relational, or logical expression to an image}
	wand	"MagickWand *"	"the magick wand."
	operator	"MagickEvaluateOperator"	"A channel operator."
	return: "MagickWand*"
]

MagickEvaluateImageChannel: [
	{Applys an arithmetic, relational, or logical expression to an image}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the channel(s)."
	operator	"MagickEvaluateOperator"	"A channel operator."
	value	"double"	"A value value."
	return: "MagickBooleanType"
]

MagickExportImagePixels: [
	{Extracts pixel data from an image and returns it to you}
	wand	"MagickWand *"	"the magick wand."
	x	"ssize_t"	{These values define the perimeter of a region of pixels you want to extract.}
	y	"ssize_t"	{These values define the perimeter of a region of pixels you want to extract.}
	columns	"size_t"	{These values define the perimeter of a region of pixels you want to extract.}
	rows	"size_t"	{These values define the perimeter of a region of pixels you want to extract.}
	map	"char *"	{This string reflects the expected ordering of the pixel array. It can be any combination or order of R = red, G = green, B = blue, A = alpha (0 is transparent), O = opacity (0 is opaque), C = cyan, Y = yellow, M = magenta, K = black, I = intensity (for grayscale), P = pad.}
	storage	"StorageType"	{Define the data type of the pixels.  Float and double types are expected to be normalized [0..1] otherwise [0..QuantumRange].  Choose from these types: CharPixel, DoublePixel, FloatPixel, IntegerPixel, LongPixel, QuantumPixel, or ShortPixel.}
	pixels	"void *"	{This array of values contain the pixel components as defined by map and type.  You must preallocate this array where the expected length varies depending on the values of width, height, map, and type.}
	return: "MagickBooleanType"
]

MagickExtentImage: [
	{Extends the image as defined by the geometry, gravity, and wand background color}
	wand	"MagickWand *"	"the magick wand."
	width	"size_t"	"the region width."
	height	"size_t"	"the region height."
	x	"ssize_t"	"the region x offset."
	y	"ssize_t"	"the region y offset."
	return: "MagickBooleanType"
]

MagickFilterImage: [
	"Applies a custom convolution kernel to the image"
	wand	"MagickWand *"	"the magick wand."
	kernel	"KernelInfo *"	{An array of doubles representing the convolution kernel.}
	return: "MagickBooleanType"
]

MagickFilterImageChannel: [
	"Applies a custom convolution kernel to the image"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	kernel	"KernelInfo *"	{An array of doubles representing the convolution kernel.}
	return: "MagickBooleanType"
]

MagickFlipImage: [
	{Creates a vertical mirror image by reflecting the pixels around the central x-axis}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickFloodfillPaintImage: [
	{Changes the color value of any pixel that matches target and is an immediate neighbor}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the channel(s)."
	fill	"PixelWand *"	"the floodfill color pixel wand."
	fuzz	"double"	{By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill.}
	bordercolor	"PixelWand *"	"the border color pixel wand."
	x	"ssize_t"	"the starting location of the operation."
	y	"ssize_t"	"the starting location of the operation."
	invert	"MagickBooleanType"	{paint any pixel that does not match the target color.}
	return: "MagickBooleanType"
]

MagickFlopImage: [
	{Creates a horizontal mirror image by reflecting the pixels around the central y-axis}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickForwardFourierTransformImage: [
	{Implements the discrete Fourier transform (DFT) of the image either as a magnitude / phase or real / imaginary image pair}
	wand	"MagickWand *"	"the magick wand."
	magnitude	"MagickBooleanType"	{if true, return as magnitude / phase pair otherwise a real / imaginary image pair.}
	return: "MagickBooleanType"
]

MagickFrameImage: [
	{Adds a simulated three-dimensional border around the image}
	wand	"MagickWand *"	"the magick wand."
	matte_color	"PixelWand *"	"the frame color pixel wand."
	width	"size_t"	"the border width."
	height	"size_t"	"the border height."
	inner_bevel	"ssize_t"	"the inner bevel width."
	outer_bevel	"ssize_t"	"the outer bevel width."
	return: "MagickBooleanType"
]

MagickFunctionImage: [
	{Applys an arithmetic, relational, or logical expression to an image}
	wand	"MagickWand *"	"the magick wand."
	function	"MagickFunction"	"the image function."
	number_arguments	"size_t"	"the number of function arguments."
	arguments	"double *"	"the function arguments."
	return: "MagickBooleanType"
]

MagickFunctionImageChannel: [
	{Applys an arithmetic, relational, or logical expression to an image}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the channel(s)."
	function	"MagickFunction"	"the image function."
	number_arguments	"size_t"	"the number of function arguments."
	arguments	"double *"	"the function arguments."
	return: "MagickBooleanType"
]

MagickFxImage: [
	"Evaluate expression for each pixel in the image"
	wand	"MagickWand *"	"the magick wand."
	expression	"char *"	"the expression."
	return: "MagickWand*"
]

MagickFxImageChannel: [
	"Evaluate expression for each pixel in the image"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	expression	"char *"	"the expression."
	return: "MagickWand*"
]

MagickGammaImage: [
	"Gamma-corrects an image"
	wand	"MagickWand *"	"the magick wand."
	gamma	"double"	none
	return: "MagickBooleanType"
]

MagickGammaImageChannel: [
	"Gamma-corrects an image"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the channel."
	gamma	"double"	none
	return: "MagickBooleanType"
]

MagickGaussianBlurImage: [
	"Blurs an image"
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	return: "MagickBooleanType"
]

MagickGaussianBlurImageChannel: [
	"Blurs an image"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	return: "MagickBooleanType"
]

MagickGetImage: [
	"Gets the image at the current image index"
	wand	"MagickWand *"	"the magick wand."
	return: "MagickWand*"
]

MagickGetImageAlphaChannel: [
	{Returns MagickFalse if the image alpha channel is not activated}
	wand	"MagickWand *"	"the magick wand."
	return: "size_t"
]

MagickGetImageClipMask: [
	{Gets the image clip mask at the current image index}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickWand*"
]

MagickGetImageBackgroundColor: [
	"Returns the image background color"
	wand	"MagickWand *"	"the magick wand."
	background_color	"PixelWand *"	"Return the background color."
	return: "MagickBooleanType"
]

MagickGetImageBlob: [
	"Implements direct to memory image formats"
	wand	"MagickWand *"	"the magick wand."
	length	"size_t *"	"the length of the blob."
	return: "unsigned char*"
]

MagickGetImagesBlob: [
	"Implements direct to memory image formats"
	wand	"MagickWand *"	"the magick wand."
	length	"size_t *"	"the length of the blob."
	return: "unsigned char*"
]

MagickGetImageBluePrimary: [
	{Returns the chromaticy blue primary point for the image}
	wand	"MagickWand *"	"the magick wand."
	x	"double *"	"the chromaticity blue primary x-point."
	y	"double *"	"the chromaticity blue primary y-point."
	return: "MagickBooleanType"
]

MagickGetImageBorderColor: [
	"Returns the image border color"
	wand	"MagickWand *"	"the magick wand."
	border_color	"PixelWand *"	"Return the border color."
	return: "MagickBooleanType"
]

MagickGetImageChannelDepth: [
	"Gets the depth for one or more image channels"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	return: "size_t"
]

MagickGetImageChannelDistortion: [
	{Compares one or more image channels of an image to a reconstructed image and returns the specified distortion metric}
	wand	"MagickWand *"	"the magick wand."
	reference	"MagickWand *"	"the reference wand."
	channel	"ChannelType"	"the channel."
	metric	"MetricType"	"the metric."
	distortion	"double *"	"the computed distortion between the images."
	return: "MagickBooleanType"
]

MagickGetImageChannelDistortions: [
	{Compares one or more image channels of an image to a reconstructed image and returns the specified distortion metrics}
	wand	"MagickWand *"	"the magick wand."
	reference	"MagickWand *"	"the reference wand."
	metric	"MetricType"	"the metric."
	return: "double*"
]

MagickGetImageChannelFeatures: [
	{Returns features for each channel in the image in each of four directions (horizontal, vertical, left and right diagonals) for the specified distance}
	wand	"MagickWand *"	"the magick wand."
	distance	"size_t"	"the distance."
	return: "ChannelFeatures*"
]

MagickGetImageChannelKurtosis: [
	{Gets the kurtosis and skewness of one or more image channels}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	kurtosis	"double *"	"The kurtosis for the specified channel(s)."
	skewness	"double *"	"The skewness for the specified channel(s)."
	return: "MagickBooleanType"
]

MagickGetImageChannelMean: [
	{Gets the mean and standard deviation of one or more image channels}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	mean	"double *"	"The mean pixel value for the specified channel(s)."
	standard_deviation	"double *"	{The standard deviation for the specified channel(s).}
	return: "MagickBooleanType"
]

MagickGetImageChannelRange: [
	"Gets the range for one or more image channels"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	minima	"double *"	{The minimum pixel value for the specified channel(s).}
	maxima	"double *"	{The maximum pixel value for the specified channel(s).}
	return: "MagickBooleanType"
]

MagickGetImageChannelStatistics: [
	"Returns statistics for each channel in the image"
	wand	"MagickWand *"	"the magick wand."
	return: "ChannelStatistics*"
]

MagickGetImageColormapColor: [
	"Returns the color of the specified colormap index"
	wand	"MagickWand *"	"the magick wand."
	index	"size_t"	"the offset into the image colormap."
	color	"PixelWand *"	"Return the colormap color in this wand."
	return: "MagickBooleanType"
]

MagickGetImageColors: [
	"Gets the number of unique colors in the image"
	wand	"MagickWand *"	"the magick wand."
	return: "size_t"
]

MagickGetImageColorspace: [
	"Gets the image colorspace"
	wand	"MagickWand *"	"the magick wand."
	return: "ColorspaceType"
]

MagickGetImageCompose: [
	{Returns the composite operator associated with the image}
	wand	"MagickWand *"	"the magick wand."
	return: "CompositeOperator"
]

MagickGetImageCompression: [
	"Gets the image compression"
	wand	"MagickWand *"	"the magick wand."
	return: "CompressionType"
]

MagickGetImageCompressionQuality: [
	"Gets the image compression quality"
	wand	"MagickWand *"	"the magick wand."
	return: "size_t"
]

MagickGetImageDelay: [
	"Gets the image delay"
	wand	"MagickWand *"	"the magick wand."
	return: "size_t"
]

MagickGetImageDepth: [
	"Gets the image depth"
	wand	"MagickWand *"	"the magick wand."
	return: "size_t"
]

MagickGetImageDistortion: [
	{Compares an image to a reconstructed image and returns the specified distortion metric}
	wand	"MagickWand *"	"the magick wand."
	reference	"MagickWand *"	"the reference wand."
	metric	"MetricType"	"the metric."
	distortion	"double *"	"the computed distortion between the images."
	return: "MagickBooleanType"
]

MagickGetImageDispose: [
	"Gets the image disposal method"
	wand	"MagickWand *"	"the magick wand."
	return: "DisposeType"
]

MagickGetImageFilename: [
	{Returns the filename of a particular image in a sequence}
	wand	"MagickWand *"	"the magick wand."
	return: "char*"
]

MagickGetImageFormat: [
	{Returns the format of a particular image in a sequence}
	wand	"MagickWand *"	"the magick wand."
	return: "const char*"
]

MagickGetImageFuzz: [
	"Gets the image fuzz"
	wand	"MagickWand *"	"the magick wand."
	return: "double"
]

MagickGetImageGamma: [
	"Gets the image gamma"
	wand	"MagickWand *"	"the magick wand."
	return: "double"
]

MagickGetImageGravity: [
	"Gets the image gravity"
	wand	"MagickWand *"	"the magick wand."
	return: "GravityType"
]

MagickGetImageGreenPrimary: [
	"Returns the chromaticy green primary point"
	wand	"MagickWand *"	"the magick wand."
	x	"double *"	"the chromaticity green primary x-point."
	y	"double *"	"the chromaticity green primary y-point."
	return: "MagickBooleanType"
]

MagickGetImageHeight: [
	"Returns the image height"
	wand	"MagickWand *"	"the magick wand."
	return: "size_t"
]

MagickGetImageHistogram: [
	{Returns the image histogram as an array of PixelWand wands}
	wand	"MagickWand *"	"the magick wand."
	number_colors	"size_t *"	{the number of unique colors in the image and the number of pixel wands returned.}
	return: "PixelWand**"
]

MagickGetImageInterlaceScheme: [
	"Gets the image interlace scheme"
	wand	"MagickWand *"	"the magick wand."
	return: "InterlaceType"
]

MagickGetImageInterpolateMethod: [
	{Returns the interpolation method for the sepcified image}
	wand	"MagickWand *"	"the magick wand."
	return: "InterpolatePixelMethod"
]

MagickGetImageIterations: [
	"Gets the image iterations"
	wand	"MagickWand *"	"the magick wand."
	return: "size_t"
]

MagickGetImageLength: [
	"Returns the image length in bytes"
	wand	"MagickWand *"	"the magick wand."
	length	"MagickSizeType *"	"the image length in bytes."
	return: "MagickBooleanType"
]

MagickGetImageMatteColor: [
	"Returns the image matte color"
	wand	"MagickWand *"	"the magick wand."
	matte_color	"PixelWand *"	"Return the matte color."
	return: "MagickBooleanType"
]

MagickGetImageOrientation: [
	"Returns the image orientation"
	wand	"MagickWand *"	"the magick wand."
	return: "OrientationType"
]

MagickGetImagePage: [
	{Returns the page geometry associated with the image}
	wand	"MagickWand *"	"the magick wand."
	width	"size_t *"	"the page width."
	height	"size_t *"	"the page height."
	x	"ssize_t *"	"the page x-offset."
	y	"ssize_t *"	"the page y-offset."
	return: "MagickBooleanType"
]

MagickGetImagePixelColor: [
	"Returns the color of the specified pixel"
	wand	"MagickWand *"	"the magick wand."
	x	"ssize_t"	"the pixel offset into the image."
	y	"ssize_t"	"the pixel offset into the image."
	color	"PixelWand *"	"Return the colormap color in this wand."
	return: "MagickBooleanType"
]

MagickGetImageRedPrimary: [
	"Returns the chromaticy red primary point"
	wand	"MagickWand *"	"the magick wand."
	x	"double *"	"the chromaticity red primary x-point."
	y	"double *"	"the chromaticity red primary y-point."
	return: "MagickBooleanType"
]

MagickGetImageRegion: [
	{Extracts a region of the image and returns it as a a new wand}
	wand	"MagickWand *"	"the magick wand."
	width	"size_t"	"the region width."
	height	"size_t"	"the region height."
	x	"ssize_t"	"the region x offset."
	y	"ssize_t"	"the region y offset."
	return: "MagickWand*"
]

MagickGetImageRenderingIntent: [
	"Gets the image rendering intent"
	wand	"MagickWand *"	"the magick wand."
	return: "RenderingIntent"
]

MagickGetImageResolution: [
	"Gets the image X and Y resolution"
	wand	"MagickWand *"	"the magick wand."
	x	"double *"	"the image x-resolution."
	y	"double *"	"the image y-resolution."
	return: "MagickBooleanType"
]

MagickGetImageScene: [
	"Gets the image scene"
	wand	"MagickWand *"	"the magick wand."
	return: "size_t"
]

MagickGetImageSignature: [
	{Generates an SHA-256 message digest for the image pixel stream}
	wand	"MagickWand *"	"the magick wand."
	return: "const char"
]

MagickGetImageTicksPerSecond: [
	"Gets the image ticks-per-second"
	wand	"MagickWand *"	"the magick wand."
	return: "size_t"
]

MagickGetImageType: [
	"Gets the potential image type:"
	wand	"MagickWand *"	"the magick wand."
	return: "ImageType"
]

MagickGetImageUnits: [
	"Gets the image units of resolution"
	wand	"MagickWand *"	"the magick wand."
	return: "ResolutionType"
]

MagickGetImageVirtualPixelMethod: [
	{Returns the virtual pixel method for the sepcified image}
	wand	"MagickWand *"	"the magick wand."
	return: "VirtualPixelMethod"
]

MagickGetImageWhitePoint: [
	"Returns the chromaticy white point"
	wand	"MagickWand *"	"the magick wand."
	x	"double *"	"the chromaticity white x-point."
	y	"double *"	"the chromaticity white y-point."
	return: "MagickBooleanType"
]

MagickGetImageWidth: [
	"Returns the image width"
	wand	"MagickWand *"	"the magick wand."
	return: "size_t"
]

MagickGetNumberImages: [
	{Returns the number of images associated with a magick wand}
	wand	"MagickWand *"	"the magick wand."
	return: "size_t"
]

MagickGetImageTotalInkDensity: [
	"Gets the image total ink density"
	wand	"MagickWand *"	"the magick wand."
	return: "double"
]

MagickHaldClutImage: [
	{Replaces colors in the image from a Hald color lookup table}
	wand	"MagickWand *"	"the magick wand."
	hald_wand	"MagickWand *"	none
	return: "MagickBooleanType"
]

MagickHaldClutImageChannel: [
	{Replaces colors in the image from a Hald color lookup table}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	none
	hald_wand	"MagickWand *"	none
	return: "MagickBooleanType"
]

MagickHasNextImage: [
	{Returns MagickTrue if the wand has more images when traversing the list in the forward direction}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickHasPreviousImage: [
	{Returns MagickTrue if the wand has more images when traversing the list in the reverse direction}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickIdentifyImage: [
	{Identifies an image by printing its attributes to the file}
	wand	"MagickWand *"	"the magick wand."
	return: "const char*"
]

MagickImplodeImage: [
	{Creates a new image that is a copy of an existing one with the image pixels 'implode' by the specified percentage}
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	none
	return: "MagickBooleanType"
]

MagickImportImagePixels: [
	{Accepts pixel datand stores it in the image at the location you specify}
	wand	"MagickWand *"	"the magick wand."
	x	"ssize_t"	{These values define the perimeter of a region of pixels you want to define.}
	y	"ssize_t"	{These values define the perimeter of a region of pixels you want to define.}
	columns	"size_t"	{These values define the perimeter of a region of pixels you want to define.}
	rows	"size_t"	{These values define the perimeter of a region of pixels you want to define.}
	map	"char *"	{This string reflects the expected ordering of the pixel array. It can be any combination or order of R = red, G = green, B = blue, A = alpha (0 is transparent), O = opacity (0 is opaque), C = cyan, Y = yellow, M = magenta, K = black, I = intensity (for grayscale), P = pad.}
	storage	"StorageType"	{Define the data type of the pixels.  Float and double types are expected to be normalized [0..1] otherwise [0..QuantumRange].  Choose from these types: CharPixel, ShortPixel, IntegerPixel, LongPixel, FloatPixel, or DoublePixel.}
	pixels	"void *"	{This array of values contain the pixel components as defined by map and type.  You must preallocate this array where the expected length varies depending on the values of width, height, map, and type.}
	return: "MagickBooleanType"
]

MagickInverseFourierTransformImage: [
	{Implements the inverse discrete Fourier transform (DFT) of the image either as a magnitude / phase or real / imaginary image pair}
	magnitude_wand	"MagickWand *"	"the magnitude or real wand."
	phase_wand	"MagickWand *"	"the phase or imaginary wand."
	magnitude	"MagickBooleanType"	{if true, return as magnitude / phase pair otherwise a real / imaginary image pair.}
	return: "MagickBooleanType"
]

MagickLabelImage: [
	"Adds a label to your image"
	wand	"MagickWand *"	"the magick wand."
	label	"char *"	"the image label."
	return: "MagickBooleanType"
]

MagickLevelImage: [
	{Adjusts the levels of an image by scaling the colors falling between specified white and black points to the full available quantum range}
	wand	"MagickWand *"	"the magick wand."
	black_point	"double"	"the black point."
	gamma	"double"	"the gamma."
	white_point	"double"	"the white point."
	return: "MagickBooleanType"
]

MagickLevelImageChannel: [
	{Adjusts the levels of an image by scaling the colors falling between specified white and black points to the full available quantum range}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	{Identify which channel to level: RedChannel, GreenChannel,}
	black_point	"double"	"the black point."
	gamma	"double"	"the gamma."
	white_point	"double"	"the white point."
	return: "MagickBooleanType"
]

MagickLinearStretchImage: [
	"Stretches with saturation the image intensity"
	wand	"MagickWand *"	"the magick wand."
	black_point	"double"	"the black point."
	white_point	"double"	"the white point."
	return: "MagickBooleanType"
]

MagickLiquidRescaleImage: [
	"Rescales image with seam carving"
	wand	"MagickWand *"	"the magick wand."
	columns	" const size_t"	"the number of columns in the scaled image."
	rows	"size_t"	"the number of rows in the scaled image."
	delta_x	" const double"	{maximum seam transversal step (0 means straight seams).}
	rigidity	"double"	{introduce a bias for non-straight seams (typically 0).}
	return: "MagickBooleanType"
]

MagickMagnifyImage: [
	{Is a convenience method that scales an image proportionally to twice its original size}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickMedianFilterImage: [
	{Applies a digital filter that improves the quality of a noisy image}
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	"the radius of the pixel neighborhood."
	return: "MagickBooleanType"
]

MagickMergeImageLayers: [
	{Composes all the image layers from the current given image onward to produce a single image of the merged layers}
	wand	"MagickWand *"	"the magick wand."
	method	"ImageLayerMethod"	{the method of selecting the size of the initial canvas.}
	return: "MagickWand*"
]

MagickMinifyImage: [
	{Is a convenience method that scales an image proportionally to one-half its original size}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickModulateImage: [
	{Lets you control the brightness, saturation, and hue of an image}
	wand	"MagickWand *"	"the magick wand."
	brightness	"double"	"the percent change in brighness."
	saturation	"double"	"the percent change in saturation."
	hue	"double"	"the percent change in hue."
	return: "MagickBooleanType"
]

MagickMontageImage: [
	{Creates a composite image by combining several separate images}
	wand	"MagickWand *"	"the magick wand."
	drawing_wand	"DrawingWand"	{the drawing wand.  The font name, size, and color are obtained from this wand.}
	tile_geometry	"char *"	{the number of tiles per row and page (e.g. 6x4+0+0).}
	thumbnail_geometry	"char *"	{Preferred image size and border size of each thumbnail (e.g. 120x120+4+3>).}
	mode	"MontageMode"	{Thumbnail framing mode: Frame, Unframe, or Concatenate.}
	frame	"char *"	{Surround the image with an ornamental border (e.g. 15x15+3+3). The frame color is that of the thumbnail's matte color.}
	return: "MagickWand*"
]

MagickMorphImages: [
	"Method morphs a set of images"
	wand	"MagickWand *"	"the magick wand."
	number_frames	"size_t"	"the number of in-between images to generate."
	return: "MagickWand*"
]

MagickMorphologyImage: [
	{Applies a user supplied kernel to the image according to the given mophology method}
	wand	"MagickWand *"	"the magick wand."
	method	"MorphologyMethod"	"the morphology method to be applied."
	iterations	"ssize_t"	{apply the operation this many times (or no change). A value of -1 means loop until no change found.  How this is applied may depend on the morphology method.  Typically this is a value of 1.}
	kernel	"KernelInfo *"	{An array of doubles representing the morphology kernel.}
	return: "MagickBooleanType"
]

MagickMorphologyImageChannel: [
	{Applies a user supplied kernel to the image according to the given mophology method}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	method	"MorphologyMethod"	"the morphology method to be applied."
	iterations	"ssize_t"	{apply the operation this many times (or no change). A value of -1 means loop until no change found.  How this is applied may depend on the morphology method.  Typically this is a value of 1.}
	kernel	"KernelInfo *"	{An array of doubles representing the morphology kernel.}
	return: "MagickBooleanType"
]

MagickMotionBlurImage: [
	"Simulates motion blur"
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	angle	"double"	"Apply the effect along this angle."
	return: "MagickBooleanType"
]

MagickMotionBlurImageChannel: [
	"Simulates motion blur"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	angle	"double"	"Apply the effect along this angle."
	return: "MagickBooleanType"
]

MagickNegateImage: [
	"Negates the colors in the reference image"
	wand	"MagickWand *"	"the magick wand."
	gray	"MagickBooleanType"	{If MagickTrue, only negate grayscale pixels within the image.}
	return: "MagickBooleanType"
]

MagickNegateImageChannel: [
	"Negates the colors in the reference image"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	gray	"MagickBooleanType"	{If MagickTrue, only negate grayscale pixels within the image.}
	return: "MagickBooleanType"
]

MagickNewImage: [
	{Adds a blank image canvas of the specified size and background color to the wand}
	wand	"MagickWand *"	"the magick wand."
	columns	"size_t"	none
	rows	"size_t"	none
	background	"PixelWand *"	"the image color."
	return: "MagickBooleanType"
]

MagickNextImage: [
	{Associates the next image in the image list with a magick wand}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickNormalizeImage: [
	{Enhances the contrast of a color image by adjusting the pixels color to span the entire range of colors available}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickNormalizeImageChannel: [
	{Enhances the contrast of a color image by adjusting the pixels color to span the entire range of colors available}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	return: "MagickBooleanType"
]

MagickOilPaintImage: [
	{Applies a special effect filter that simulates an oil painting}
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	"the radius of the circular neighborhood."
	return: "MagickBooleanType"
]

MagickOpaquePaintImage: [
	{Changes any pixel that matches color with the color defined by fill}
	wand	"MagickWand *"	"the magick wand."
	target	"PixelWand *"	{Change this target color to the fill color within the image.}
	fill	"PixelWand *"	"the fill pixel wand."
	fuzz	"double"	{By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill.}
	invert	"MagickBooleanType"	{paint any pixel that does not match the target color.}
	return: "MagickBooleanType"
]

MagickOpaquePaintImageChannel: [
	{Changes any pixel that matches color with the color defined by fill}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the channel(s)."
	target	"PixelWand *"	{Change this target color to the fill color within the image.}
	fill	"PixelWand *"	"the fill pixel wand."
	fuzz	"double"	{By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill.}
	invert	"MagickBooleanType"	{paint any pixel that does not match the target color.}
	return: "MagickBooleanType"
]

MagickOptimizeImageLayers: [
	{Compares each image the GIF disposed forms of the previous image in the sequence}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickWand*"
]

MagickOrderedPosterizeImage: [
	{Performs an ordered dither based on a number of pre-defined dithering threshold maps, but over multiple intensity levels, which can be different for different channels, according to the input arguments}
	wand	"MagickWand *"	none
	threshold_map	"char *"	{A string containing the name of the threshold dither map to use, followed by zero or more numbers representing the number of color levels tho dither between.}
	return: "MagickBooleanType"
]

MagickOrderedPosterizeImageChannel: [
	{Performs an ordered dither based on a number of pre-defined dithering threshold maps, but over multiple intensity levels, which can be different for different channels, according to the input arguments}
	wand	"MagickWand *"	none
	channel	"ChannelType"	"the channel or channels to be thresholded."
	threshold_map	"char *"	{A string containing the name of the threshold dither map to use, followed by zero or more numbers representing the number of color levels tho dither between.}
	return: "MagickBooleanType"
]

MagickPingImage: [
	{Is like MagickReadImage() except the only valid information returned is the image width, height, size, and format}
	wand	"MagickWand *"	"the magick wand."
	filename	"char *"	"the image filename."
	return: "MagickBooleanType"
]

MagickPingImageBlob: [
	"Pings an image or image sequence from a blob"
	wand	"MagickWand *"	"the magick wand."
	blob	"void *"	"the blob."
	length	"size_t"	"the blob length."
	return: "MagickBooleanType"
]

MagickPingImageFile: [
	{Pings an image or image sequence from an open file descriptor}
	wand	"MagickWand *"	"the magick wand."
	file	"FILE *"	"the file descriptor."
	return: "MagickBooleanType"
]

MagickPolaroidImage: [
	"Simulates a Polaroid picture"
	wand	"MagickWand *"	"the magick wand."
	drawing_wand	"DrawingWand *"	"the draw wand."
	angle	"double"	"Apply the effect along this angle."
	return: "MagickBooleanType"
]

MagickPosterizeImage: [
	{Reduces the image to a limited number of color level}
	wand	"MagickWand *"	"the magick wand."
	levels	"unsigned"	{Number of color levels allowed in each channel.  Very low values (2, 3, or 4) have the most visible effect.}
	dither	"MagickBooleanType"	{Set this integer value to something other than zero to dither the mapped image.}
	return: "MagickBooleanType"
]

MagickPreviewImages: [
	{Tiles 9 thumbnails of the specified image with an image processing operation applied at varying strengths}
	wand	"MagickWand *"	"the magick wand."
	preview	"PreviewType"	"the preview type."
	return: "MagickWand*"
]

MagickPreviousImage: [
	{Assocates the previous image in an image list with the magick wand}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickQuantizeImage: [
	{Analyzes the colors within a reference image and chooses a fixed number of colors to represent the image}
	wand	"MagickWand *"	"the magick wand."
	number_colors	"size_t"	"the number of colors."
	colorspace	"ColorspaceType"	{Perform color reduction in this colorspace, typically RGBColorspace.}
	treedepth	"size_t"	{Normally, this integer value is zero or one.  A zero or one tells Quantize to choose a optimal tree depth of Log4(number_colors).      A tree of this depth generally allows the best representation of the reference image with the least amount of memory and the fastest computational speed.  In some cases, such as an image with low color dispersion (a few number of colors), a value other than Log4(number_colors) is required.  To expand the color tree completely, use a value of 8.}
	dither	"MagickBooleanType"	{A value other than zero distributes the difference between an original image and the corresponding color reduced image to neighboring pixels along a Hilbert curve.}
	measure_error	"MagickBooleanType"	{A value other than zero measures the difference between the original and quantized images.  This difference is the total quantization error.  The error is computed by summing over all pixels in an image the distance squared in RGB space between each reference pixel value and its quantized value.}
	return: "MagickBooleanType"
]

MagickQuantizeImages: [
	{Analyzes the colors within a sequence of images and chooses a fixed number of colors to represent the image}
	wand	"MagickWand *"	"the magick wand."
	number_colors	"size_t"	"the number of colors."
	colorspace	"ColorspaceType"	{Perform color reduction in this colorspace, typically RGBColorspace.}
	treedepth	"size_t"	{Normally, this integer value is zero or one.  A zero or one tells Quantize to choose a optimal tree depth of Log4(number_colors).      A tree of this depth generally allows the best representation of the reference image with the least amount of memory and the fastest computational speed.  In some cases, such as an image with low color dispersion (a few number of colors), a value other than Log4(number_colors) is required.  To expand the color tree completely, use a value of 8.}
	dither	"MagickBooleanType"	{A value other than zero distributes the difference between an original image and the corresponding color reduced algorithm to neighboring pixels along a Hilbert curve.}
	measure_error	"MagickBooleanType"	{A value other than zero measures the difference between the original and quantized images.  This difference is the total quantization error.  The error is computed by summing over all pixels in an image the distance squared in RGB space between each reference pixel value and its quantized value.}
	return: "MagickBooleanType"
]

MagickRadialBlurImage: [
	"Radial blurs an image"
	wand	"MagickWand *"	"the magick wand."
	angle	"double"	"the angle of the blur in degrees."
	return: "MagickBooleanType"
]

MagickRadialBlurImageChannel: [
	"Radial blurs an image"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	angle	"double"	"the angle of the blur in degrees."
	return: "MagickBooleanType"
]

MagickRaiseImage: [
	{Creates a simulated three-dimensional button-like effect by lightening and darkening the edges of the image}
	wand	"MagickWand *"	"the magick wand."
	width	"size_t"	"Define the dimensions of the area to raise."
	height	"size_t"	"Define the dimensions of the area to raise."
	x	"ssize_t"	"Define the dimensions of the area to raise."
	y	"ssize_t"	"Define the dimensions of the area to raise."
	raise	"MagickBooleanType"	{A value other than zero creates a 3-D raise effect, otherwise it has a lowered effect.}
	return: "MagickBooleanType"
]

MagickRandomThresholdImage: [
	{Changes the value of individual pixels based on the intensity of each pixel compared to threshold}
	wand	"MagickWand *"	"the magick wand."
	low	"double"	{Specify the high and low thresholds.  These values range from 0 to QuantumRange.}
	high	"double"	{Specify the high and low thresholds.  These values range from 0 to QuantumRange.}
	return: "MagickBooleanType"
]

MagickRandomThresholdImageChannel: [
	{Changes the value of individual pixels based on the intensity of each pixel compared to threshold}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	low	"double"	{Specify the high and low thresholds.  These values range from 0 to QuantumRange.}
	high	"double"	{Specify the high and low thresholds.  These values range from 0 to QuantumRange.}
	return: "MagickBooleanType"
]

MagickReadImage: [
	"Reads an image or image sequence"
	wand	"MagickWand *"	"the magick wand."
	filename	"char *"	"the image filename."
	return: "MagickBooleanType"
]

MagickReadImageBlob: [
	"Reads an image or image sequence from a blob"
	wand	"MagickWand *"	"the magick wand."
	blob	"void *"	"the blob."
	length	"size_t"	"the blob length."
	return: "MagickBooleanType"
]

MagickReadImageFile: [
	{Reads an image or image sequence from an open file descriptor}
	wand	"MagickWand *"	"the magick wand."
	file	"FILE *"	"the file descriptor."
	return: "MagickBooleanType"
]

MagickReduceNoiseImage: [
	{Smooths the contours of an image while still preserving edge information}
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	"the radius of the pixel neighborhood."
	return: "MagickBooleanType"
]

MagickRemapImage: [
	{Replaces the colors of an image with the closest color from a reference image}
	wand	"MagickWand *"	"the magick wand."
	remap_wand	"MagickWand *"	none
	method	"DitherMethod"	{choose from these dither methods: NoDitherMethod, RiemersmaDitherMethod, or FloydSteinbergDitherMethod.}
	return: "MagickBooleanType"
]

MagickRemoveImage: [
	"Removes an image from the image list"
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickResampleImage: [
	"Resample image to desired resolution"
	wand	"MagickWand *"	"the magick wand."
	x_resolution	"double"	"the new image x resolution."
	y_resolution	"double"	"the new image y resolution."
	filter	"FilterTypes"	"Image filter to use."
	blur	"double"	"the blur factor where > 1 is blurry, < 1 is sharp."
	return: "MagickBooleanType"
]

MagickResetImagePage: [
	"Resets the Wand page canvas and position"
	wand	"MagickWand *"	"the magick wand."
	page	"char *"	"the relative page specification."
	return: "MagickBooleanType"
]

MagickResizeImage: [
	{Scales an image to the desired dimensions with one of these filters:}
	wand	"MagickWand *"	"the magick wand."
	columns	"size_t"	"the number of columns in the scaled image."
	rows	"size_t"	"the number of rows in the scaled image."
	filter	"FilterTypes"	"Image filter to use."
	blur	"double"	"the blur factor where > 1 is blurry, < 1 is sharp."
	return: "MagickBooleanType"
]

MagickRollImage: [
	"Offsets an image as defined by x and y"
	wand	"MagickWand *"	"the magick wand."
	x	"ssize_t"	"the x offset."
	y	"size_t"	"the y offset."
	return: "MagickBooleanType"
]

MagickRotateImage: [
	"Rotates an image the specified number of degrees"
	wand	"MagickWand *"	"the magick wand."
	background	"PixelWand *"	"the background pixel wand."
	degrees	"double"	"the number of degrees to rotate the image."
	return: "MagickBooleanType"
]

MagickSampleImage: [
	{Scales an image to the desired dimensions with pixel sampling}
	wand	"MagickWand *"	"the magick wand."
	columns	"size_t"	"the number of columns in the scaled image."
	rows	"size_t"	"the number of rows in the scaled image."
	return: "MagickBooleanType"
]

MagickScaleImage: [
	{Scales the size of an image to the given dimensions}
	wand	"MagickWand *"	"the magick wand."
	columns	"size_t"	"the number of columns in the scaled image."
	rows	"size_t"	"the number of rows in the scaled image."
	return: "MagickBooleanType"
]

MagickSegmentImage: [
	{Segments an image by analyzing the histograms of the color components and identifying units that are homogeneous with the fuzzy C-means technique}
	wand	"MagickWand *"	"the wand."
	colorspace	"ColorspaceType"	"the image colorspace."
	verbose	"MagickBooleanType"	{Set to MagickTrue to print detailed information about the identified classes.}
	cluster_threshold	"double"	{This represents the minimum number of pixels contained in a hexahedra before it can be considered valid (expressed as a percentage).}
	smooth_threshold	"double"	{the smoothing threshold eliminates noise in the second derivative of the histogram.  As the value is increased, you can expect a smoother second derivative.}
	return: "MagickBooleanType"
]

MagickSelectiveBlurImage: [
	{Selectively blur an image within a contrast threshold}
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	{the radius of the gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the gaussian, in pixels."
	threshold	"double"	{only pixels within this contrast threshold are included in the blur operation.}
	return: "MagickBooleanType"
]

MagickSelectiveBlurImageChannel: [
	{Selectively blur an image within a contrast threshold}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	radius	"double"	{the radius of the gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the gaussian, in pixels."
	threshold	"double"	{only pixels within this contrast threshold are included in the blur operation.}
	return: "MagickBooleanType"
]

MagickSeparateImageChannel: [
	{Separates a channel from the image and returns a grayscale image}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	return: "MagickBooleanType"
]

MagickSepiaToneImage: [
	{Applies a special effect to the image, similar to the effect achieved in a photo darkroom by sepia toning}
	wand	"MagickWand *"	"the magick wand."
	threshold	"double"	"Define the extent of the sepia toning."
	return: "MagickBooleanType"
]

MagickSetImage: [
	{Replaces the last image returned by MagickSetImageIndex(), MagickNextImage(), MagickPreviousImage() with the images from the specified wand}
	wand	"MagickWand *"	"the magick wand."
	set_wand	"MagickWand *"	"the set_wand wand."
	return: "MagickBooleanType"
]

MagickSetImageAlphaChannel: [
	{Activates, deactivates, resets, or sets the alpha channel}
	wand	"MagickWand *"	"the magick wand."
	alpha_type	"AlphaChannelType"	{the alpha channel type: ActivateAlphaChannel, DeactivateAlphaChannel, OpaqueAlphaChannel, or SetAlphaChannel.}
	return: "MagickBooleanType"
]

MagickSetImageBackgroundColor: [
	"Sets the image background color"
	wand	"MagickWand *"	"the magick wand."
	background	"PixelWand *"	"the background pixel wand."
	return: "MagickBooleanType"
]

MagickSetImageBias: [
	{Sets the image bias for any method that convolves an image (e}
	wand	"MagickWand *"	"the magick wand."
	bias	"double"	"the image bias."
	return: "MagickBooleanType"
]

MagickSetImageBluePrimary: [
	"Sets the image chromaticity blue primary point"
	wand	"MagickWand *"	"the magick wand."
	x	"double"	"the blue primary x-point."
	y	"double"	"the blue primary y-point."
	return: "MagickBooleanType"
]

MagickSetImageBorderColor: [
	"Sets the image border color"
	wand	"MagickWand *"	"the magick wand."
	border	"PixelWand *"	"the border pixel wand."
	return: "MagickBooleanType"
]

MagickSetImageChannelDepth: [
	"Sets the depth of a particular image channel"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	depth	"size_t"	"the image depth in bits."
	return: "MagickBooleanType"
]

MagickSetImageClipMask: [
	"Sets image clip mask"
	wand	"MagickWand *"	"the magick wand."
	clip_mask	"MagickWand *"	"the clip_mask wand."
	return: "MagickBooleanType"
]

MagickSetImageColor: [
	"Set the entire wand canvas to the specified color"
	wand	"MagickWand *"	"the magick wand."
	color	"PixelWand *"	none
	return: "MagickBooleanType"
]

MagickSetImageColormapColor: [
	"Sets the color of the specified colormap index"
	wand	"MagickWand *"	"the magick wand."
	index	"size_t"	"the offset into the image colormap."
	color	"PixelWand *"	"Return the colormap color in this wand."
	return: "MagickBooleanType"
]

MagickSetImageColorspace: [
	"Sets the image colorspace"
	wand	"MagickWand *"	"the magick wand."
	colorspace	"ColorspaceType"	{the image colorspace:   UndefinedColorspace, RGBColorspace, GRAYColorspace, TransparentColorspace, OHTAColorspace, XYZColorspace, YCbCrColorspace, YCCColorspace, YIQColorspace, YPbPrColorspace, YPbPrColorspace, YUVColorspace, CMYKColorspace, sRGBColorspace, HSLColorspace, or HWBColorspace.}
	return: "MagickBooleanType"
]

MagickSetImageCompose: [
	{Sets the image composite operator, useful for specifying how to composite the image thumbnail when using the MagickMontageImage() method}
	wand	"MagickWand *"	"the magick wand."
	compose	"CompositeOperator"	"the image composite operator."
	return: "MagickBooleanType"
]

MagickSetImageCompression: [
	"Sets the image compression"
	wand	"MagickWand *"	"the magick wand."
	compression	"CompressionType"	"the image compression type."
	return: "MagickBooleanType"
]

MagickSetImageCompressionQuality: [
	"Sets the image compression quality"
	wand	"MagickWand *"	"the magick wand."
	quality	"size_t"	"the image compression tlityype."
	return: "MagickBooleanType"
]

MagickSetImageDelay: [
	"Sets the image delay"
	wand	"MagickWand *"	"the magick wand."
	delay	"size_t"	"the image delay in ticks-per-second units."
	return: "MagickBooleanType"
]

MagickSetImageDepth: [
	"Sets the image depth"
	wand	"MagickWand *"	"the magick wand."
	depth	"size_t"	"the image depth in bits: 8, 16, or 32."
	return: "MagickBooleanType"
]

MagickSetImageDispose: [
	"Sets the image disposal method"
	wand	"MagickWand *"	"the magick wand."
	dispose	"DisposeType"	"the image disposeal type."
	return: "MagickBooleanType"
]

MagickSetImageExtent: [
	"Sets the image size (i"
	wand	"MagickWand *"	"the magick wand."
	columns	"size_t"	"The image width in pixels."
	rows	"unsigned"	"The image height in pixels."
	return: "MagickBooleanType"
]

MagickSetImageFilename: [
	{Sets the filename of a particular image in a sequence}
	wand	"MagickWand *"	"the magick wand."
	filename	"char *"	"the image filename."
	return: "MagickBooleanType"
]

MagickSetImageFormat: [
	{Sets the format of a particular image in a sequence}
	wand	"MagickWand *"	"the magick wand."
	format	"char *"	"the image format."
	return: "MagickBooleanType"
]

MagickSetImageFuzz: [
	"Sets the image fuzz"
	wand	"MagickWand *"	"the magick wand."
	fuzz	"double"	"the image fuzz."
	return: "MagickBooleanType"
]

MagickSetImageGamma: [
	"Sets the image gamma"
	wand	"MagickWand *"	"the magick wand."
	gamma	"double"	"the image gamma."
	return: "MagickBooleanType"
]

MagickSetImageGravity: [
	"Sets the image gravity type"
	wand	"MagickWand *"	"the magick wand."
	gravity	"GravityType"	{the image interlace scheme: NoInterlace, LineInterlace, PlaneInterlace, PartitionInterlace.}
	return: "MagickBooleanType"
]

MagickSetImageGreenPrimary: [
	"Sets the image chromaticity green primary point"
	wand	"MagickWand *"	"the magick wand."
	x	"double"	"the green primary x-point."
	y	"double"	"the green primary y-point."
	return: "MagickBooleanType"
]

MagickSetImageInterlaceScheme: [
	"Sets the image interlace scheme"
	wand	"MagickWand *"	"the magick wand."
	interlace	"InterlaceType"	{the image interlace scheme: NoInterlace, LineInterlace, PlaneInterlace, PartitionInterlace.}
	return: "MagickBooleanType"
]

MagickSetImageInterpolateMethod: [
	"Sets the image interpolate pixel method"
	wand	"MagickWand *"	"the magick wand."
	method	"InterpolatePixelMethod"	{the image interpole pixel methods: choose from Undefined, Average, Bicubic, Bilinear, Filter, Integer, Mesh, NearestNeighbor.}
	return: "MagickBooleanType"
]

MagickSetImageIterations: [
	"Sets the image iterations"
	wand	"MagickWand *"	"the magick wand."
	iterations	"size_t"	none
	return: "MagickBooleanType"
]

MagickSetImageMatte: [
	"Sets the image matte channel"
	wand	"MagickWand *"	"the magick wand."
	matte	"MagickBooleanType *"	{Set to MagickTrue to enable the image matte channel otherwise MagickFalse.}
	return: "MagickBooleanType"
]

MagickSetImageMatteColor: [
	"Sets the image matte color"
	wand	"MagickWand *"	"the magick wand."
	matte	"PixelWand *"	"the matte pixel wand."
	return: "MagickBooleanType"
]

MagickSetImageOpacity: [
	"Sets the image to the specified opacity level"
	wand	"MagickWand *"	"the magick wand."
	alpha	"double"	{the level of transparency: 1.0 is fully opaque and 0.0 is fully transparent.}
	return: "MagickBooleanType"
]

MagickSetImageOrientation: [
	"Sets the image orientation"
	wand	"MagickWand *"	"the magick wand."
	orientation	"OrientationType"	"the image orientation type."
	return: "MagickBooleanType"
]

MagickSetImagePage: [
	"Sets the page geometry of the image"
	wand	"MagickWand *"	"the magick wand."
	width	"size_t"	"the page width."
	height	"size_t"	"the page height."
	x	"ssize_t"	"the page x-offset."
	y	"ssize_t"	"the page y-offset."
	return: "MagickBooleanType"
]

MagickSetImageProgressMonitor: [
	{Sets the wand image progress monitor to the specified method and returns the previous progress monitor if any}
	wand	"MagickWand *"	"the magick wand."
	progress_monitor	"MagickProgressMonitor"	{Specifies a pointer to a method to monitor progress of an image operation.}
	client_data	"void *"	"Specifies a pointer to any client data."
	return: "MagickProgressMonitor"
]

MagickSetImageRedPrimary: [
	"Sets the image chromaticity red primary point"
	wand	"MagickWand *"	"the magick wand."
	x	"double"	"the red primary x-point."
	y	"double"	"the red primary y-point."
	return: "MagickBooleanType"
]

MagickSetImageRenderingIntent: [
	"Sets the image rendering intent"
	wand	"MagickWand *"	"the magick wand."
	rendering_intent	"RenderingIntent"	{the image rendering intent: UndefinedIntent, SaturationIntent, PerceptualIntent, AbsoluteIntent, or RelativeIntent.}
	return: "MagickBooleanType"
]

MagickSetImageResolution: [
	"Sets the image resolution"
	wand	"MagickWand *"	"the magick wand."
	x_resolution	"double"	"the image x resolution."
	y_resolution	"doubtl"	"the image y resolution."
	return: "MagickBooleanType"
]

MagickSetImageScene: [
	"Sets the image scene"
	wand	"MagickWand *"	"the magick wand."
	scene	"size_t"	none
	return: "MagickBooleanType"
]

MagickSetImageTicksPerSecond: [
	"Sets the image ticks-per-second"
	wand	"MagickWand *"	"the magick wand."
	ticks_per-second	"ssize_t"	none
	return: "MagickBooleanType"
]

MagickSetImageType: [
	"Sets the image type"
	wand	"MagickWand *"	"the magick wand."
	image_type	"ImageType"	{the image type:   UndefinedType, BilevelType, GrayscaleType, GrayscaleMatteType, PaletteType, PaletteMatteType, TrueColorType, TrueColorMatteType, ColorSeparationType, ColorSeparationMatteType, or OptimizeType.}
	return: "MagickBooleanType"
]

MagickSetImageUnits: [
	"Sets the image units of resolution"
	wand	"MagickWand *"	"the magick wand."
	units	"ResolutionType"	{the image units of resolution : UndefinedResolution, PixelsPerInchResolution, or PixelsPerCentimeterResolution.}
	return: "MagickBooleanType"
]

MagickSetImageVirtualPixelMethod: [
	"Sets the image virtual pixel method"
	wand	"MagickWand *"	"the magick wand."
	method	"VirtualPixelMethod"	{the image virtual pixel method : UndefinedVirtualPixelMethod, ConstantVirtualPixelMethod,  EdgeVirtualPixelMethod, MirrorVirtualPixelMethod, or TileVirtualPixelMethod.}
	return: "VirtualPixelMethod"
]

MagickSetImageWhitePoint: [
	"Sets the image chromaticity white point"
	wand	"MagickWand *"	"the magick wand."
	x	"double"	"the white x-point."
	y	"double"	"the white y-point."
	return: "MagickBooleanType"
]

MagickShadeImage: [
	{Shines a distant light on an image to create a three-dimensional effect}
	wand	"MagickWand *"	"the magick wand."
	gray	"MagickBooleanType"	{A value other than zero shades the intensity of each pixel.}
	azimuth	"double"	"Define the light source direction."
	elevation	"double"	"Define the light source direction."
	return: "MagickBooleanType"
]

MagickShadowImage: [
	"Simulates an image shadow"
	wand	"MagickWand *"	"the magick wand."
	opacity	"double"	"percentage transparency."
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	x	"ssize_t"	"the shadow x-offset."
	y	"ssize_t"	"the shadow y-offset."
	return: "MagickBooleanType"
]

MagickSharpenImage: [
	"Sharpens an image"
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	return: "MagickBooleanType"
]

MagickSharpenImageChannel: [
	"Sharpens an image"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	return: "MagickBooleanType"
]

MagickShaveImage: [
	"Shaves pixels from the image edges"
	wand	"MagickWand *"	"the magick wand."
	columns	"size_t"	"the number of columns in the scaled image."
	rows	"size_t"	"the number of rows in the scaled image."
	return: "MagickBooleanType"
]

MagickShearImage: [
	{Slides one edge of an image along the X or Y axis, creating a parallelogram}
	wand	"MagickWand *"	"the magick wand."
	background	"PixelWand *"	"the background pixel wand."
	x_shear	"double"	"the number of degrees to shear the image."
	y_shear	"onst double"	"the number of degrees to shear the image."
	return: "MagickBooleanType"
]

MagickSigmoidalContrastImage: [
	{Adjusts the contrast of an image with a non-linear sigmoidal contrast algorithm}
	wand	"MagickWand *"	"the magick wand."
	sharpen	"MagickBooleanType"	"Increase or decrease image contrast."
	alpha	"double"	{strength of the contrast, the larger the number the more 'threshold-like' it becomes.}
	beta	"double"	{midpoint of the function as a color value 0 to QuantumRange.}
	return: "MagickBooleanType"
]

MagickSigmoidalContrastImageChannel: [
	{Adjusts the contrast of an image with a non-linear sigmoidal contrast algorithm}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	{Identify which channel to level: RedChannel, GreenChannel,}
	sharpen	"MagickBooleanType"	"Increase or decrease image contrast."
	alpha	"double"	{strength of the contrast, the larger the number the more 'threshold-like' it becomes.}
	beta	"double"	{midpoint of the function as a color value 0 to QuantumRange.}
	return: "MagickBooleanType"
]

MagickSimilarityImage: [
	{Compares the reference image of the image and returns the best match offset}
	wand	"MagickWand *"	"the magick wand."
	reference	"MagickWand *"	"the reference wand."
	offset	"RectangeInfo *"	{the best match offset of the reference image within the image.}
	similarity	"double *"	"the computed similarity between the images."
	return: "MagickWand*"
]

MagickSketchImage: [
	"Simulates a pencil sketch"
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	angle	"double"	"Apply the effect along this angle."
	return: "MagickBooleanType"
]

MagickSolarizeImage: [
	{Applies a special effect to the image, similar to the effect achieved in a photo darkroom by selectively exposing areas of photo sensitive paper to light}
	wand	"MagickWand *"	"the magick wand."
	threshold	"double"	"Define the extent of the solarization."
	return: "MagickBooleanType"
]

MagickSpliceImage: [
	"Splices a solid color into the image"
	wand	"MagickWand *"	"the magick wand."
	width	"size_t"	"the region width."
	height	"size_t"	"the region height."
	x	"ssize_t"	"the region x offset."
	y	"ssize_t"	"the region y offset."
	return: "MagickBooleanType"
]

MagickSpreadImage: [
	{Is a special effects method that randomly displaces each pixel in a block defined by the radius parameter}
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	{Choose a random pixel in a neighborhood of this extent.}
	return: "MagickBooleanType"
]

MagickSteganoImage: [
	"Hides a digital watermark within the image"
	wand	"MagickWand *"	"the magick wand."
	watermark_wand	"MagickWand *"	"the watermark wand."
	offset	"ssize_t"	"Start hiding at this offset into the image."
	return: "MagickWand*"
]

MagickStereoImage: [
	{Composites two images and produces a single image that is the composite of a left and right image of a stereo pair}
	wand	"MagickWand *"	"the magick wand."
	offset_wand	"MagickWand *"	"Another image wand."
	return: "MagickWand*"
]

MagickStripImage: [
	"Strips an image of all profiles and comments"
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickSwirlImage: [
	{Swirls the pixels about the center of the image, where degrees indicates the sweep of the arc through which each pixel is moved}
	wand	"MagickWand *"	"the magick wand."
	degrees	"double"	"Define the tightness of the swirling effect."
	return: "MagickBooleanType"
]

MagickTextureImage: [
	{Repeatedly tiles the texture image across and down the image canvas}
	wand	"MagickWand *"	"the magick wand."
	texture_wand	"MagickWand *"	"the texture wand"
	return: "MagickWand*"
]

MagickThresholdImage: [
	{Changes the value of individual pixels based on the intensity of each pixel compared to threshold}
	wand	"MagickWand *"	"the magick wand."
	threshold	"double"	"Define the threshold value."
	return: "MagickBooleanType"
]

MagickThresholdImageChannel: [
	{Changes the value of individual pixels based on the intensity of each pixel compared to threshold}
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	threshold	"double"	"Define the threshold value."
	return: "MagickBooleanType"
]

MagickThumbnailImage: [
	{Changes the size of an image to the given dimensions and removes any associated profiles}
	wand	"MagickWand *"	"the magick wand."
	columns	"size_t"	"the number of columns in the scaled image."
	rows	"size_t"	"the number of rows in the scaled image."
	return: "MagickBooleanType"
]

MagickTintImage: [
	"Applies a color vector to each pixel in the image"
	wand	"MagickWand *"	"the magick wand."
	tint	"PixelWand *"	"the tint pixel wand."
	opacity	"PixelWand *"	"the opacity pixel wand."
	return: "MagickBooleanType"
]

MagickTransformImage: [
	{Is a convenience method that behaves like MagickResizeImage() or MagickCropImage() but accepts scaling and/or cropping information as a region geometry specification}
	wand	"MagickWand *"	"the magick wand."
	crop	"char *"	{A crop geometry string.  This geometry defines a subregion of the image to crop.}
	geometry	"char *"	{An image geometry string.  This geometry defines the final size of the image.}
	return: "MagickWand*"
]

MagickTransformImageColorspace: [
	"Transform the image colorspace"
	wand	"MagickWand *"	"the magick wand."
	colorspace	"ColorspaceType"	{the image colorspace:   UndefinedColorspace, RGBColorspace, GRAYColorspace, TransparentColorspace, OHTAColorspace, XYZColorspace, YCbCrColorspace, YCCColorspace, YIQColorspace, YPbPrColorspace, YPbPrColorspace, YUVColorspace, CMYKColorspace, sRGBColorspace, HSLColorspace, or HWBColorspace.}
	return: "MagickBooleanType"
]

MagickTransparentPaintImage: [
	{Changes any pixel that matches color with the color defined by fill}
	wand	"MagickWand *"	"the magick wand."
	target	"PixelWand *"	{Change this target color to specified opacity value within the image.}
	alpha	"double"	{the level of transparency: 1.0 is fully opaque and 0.0 is fully transparent.}
	fuzz	"double"	{By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill.}
	invert	"MagickBooleanType"	{paint any pixel that does not match the target color.}
	return: "MagickBooleanType"
]

MagickTransposeImage: [
	{Creates a vertical mirror image by reflecting the pixels around the central x-axis while rotating them 90-degrees}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickTransverseImage: [
	{Creates a horizontal mirror image by reflecting the pixels around the central y-axis while rotating them 270-degrees}
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickTrimImage: [
	{Remove edges that are the background color from the image}
	wand	"MagickWand *"	"the magick wand."
	fuzz	"double"	{By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill.}
	return: "MagickBooleanType"
]

MagickUniqueImageColors: [
	"Discards all but one of any pixel color"
	wand	"MagickWand *"	"the magick wand."
	return: "MagickBooleanType"
]

MagickUnsharpMaskImage: [
	"Sharpens an image"
	wand	"MagickWand *"	"the magick wand."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	amount	"double"	{the percentage of the difference between the original and the blur image that is added back into the original.}
	threshold	"double"	{the threshold in pixels needed to apply the diffence amount.}
	return: "MagickBooleanType"
]

MagickUnsharpMaskImageChannel: [
	"Sharpens an image"
	wand	"MagickWand *"	"the magick wand."
	channel	"ChannelType"	"the image channel(s)."
	radius	"double"	{the radius of the Gaussian, in pixels, not counting the center pixel.}
	sigma	"double"	"the standard deviation of the Gaussian, in pixels."
	amount	"double"	{the percentage of the difference between the original and the blur image that is added back into the original.}
	threshold	"double"	{the threshold in pixels needed to apply the diffence amount.}
	return: "MagickBooleanType"
]

MagickVignetteImage: [
	"Softens the edges of the image in vignette style"
	wand	"MagickWand *"	"the magick wand."
	black_point	"double"	"the black point."
	white_point	"double"	"the white point."
	x	"ssize_t"	"Define the x and y ellipse offset."
	y	"ssize_t"	"Define the x and y ellipse offset."
	return: "MagickBooleanType"
]

MagickWaveImage: [
	{Creates a 'ripple' effect in the image by shifting the pixels vertically along a sine wave whose amplitude and wavelength is specified by the given parameters}
	wand	"MagickWand *"	"the magick wand."
	amplitude	"double"	{Define the amplitude and wave length of the sine wave.}
	wave_length	"double"	{Define the amplitude and wave length of the sine wave.}
	return: "MagickBooleanType"
]

MagickWhiteThresholdImage: [
	{Is like ThresholdImage() but  force all pixels above the threshold into white while leaving all pixels below the threshold unchanged}
	wand	"MagickWand *"	"the magick wand."
	threshold	"PixelWand *"	"the pixel wand."
	return: "MagickBooleanType"
]

MagickWriteImage: [
	"Writes an image to the specified filename"
	wand	"MagickWand *"	"the magick wand."
	filename	"char *"	"the image filename."
	return: "MagickBooleanType"
]

MagickWriteImageFile: [
	"Writes an image to an open file descriptor"
	wand	"MagickWand *"	"the magick wand."
	file	"FILE *"	"the file descriptor."
	return: "MagickBooleanType"
]

MagickWriteImages: [
	"Writes an image or image sequence"
	wand	"MagickWand *"	"the magick wand."
	filename	"char *"	"the image filename."
	adjoin	"MagickBooleanType"	"join images into a single multi-image file."
	return: "MagickBooleanType"
]

MagickWriteImagesFile: [
	{Writes an image sequence to an open file descriptor}
	wand	"MagickWand *"	"the magick wand."
	file	"FILE *"	"the file descriptor."
	return: "MagickBooleanType"
]

