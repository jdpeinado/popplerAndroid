MY_DIR := $(call my-dir)

## libjpeg
LOCAL_PATH := $(MY_DIR)/libpng
include $(CLEAR_VARS)

LOCAL_MODULE    := libpng
LOCAL_SRC_FILES :=\
	png.c pngerror.c pngget.c pngmem.c pngpread.c pngread.c pngrio.c pngrtran.c pngrutil.c pngset.c \
	pngtrans.c pngwio.c pngwrite.c pngwtran.c pngwutil.c 
	
LOCAL_C_INCLUDES += 	\
	$(LOCAL_PATH)/

include $(BUILD_STATIC_LIBRARY)

## libjpeg
LOCAL_PATH := $(MY_DIR)/libjpeg
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	jcapimin.c jcapistd.c jccoefct.c jccolor.c jcdctmgr.c jchuff.c \
	jcinit.c jcmainct.c jcmarker.c jcmaster.c jcomapi.c jcparam.c \
	jcprepct.c jcsample.c jctrans.c jdapimin.c jdapistd.c \
	jdatadst.c jdatasrc.c jdcoefct.c jdcolor.c jddctmgr.c jdhuff.c \
	jdinput.c jdmainct.c jdmarker.c jdmaster.c jdmerge.c \
	jdpostct.c jdsample.c jdtrans.c jerror.c jfdctflt.c jfdctfst.c \
	jfdctint.c jidctflt.c jidctfst.c jidctint.c jquant1.c \
	jquant2.c jutils.c jmemmgr.c jmemnobs.c jcphuff.c jdphuff.c \
	jidctred.c

LOCAL_C_INCLUDES += 	\
	$(LOCAL_PATH)/

LOCAL_MODULE := libjpeg

include $(BUILD_STATIC_LIBRARY)

##libtiff
LOCAL_PATH := $(MY_DIR)/libtiff
include $(CLEAR_VARS)

LOCAL_MODULE    := libtiff
LOCAL_CFLAGS    := -g -Dlinux -DFT2_BUILD_LIBRARY=1 -DPHYSFS_NO_CDROM_SUPPORT=1 -DAL_ALEXT_PROTOTYPES=1 -DHAVE_GCC_DESTRUCTOR=1 -DOPT_GENERIC -DREAL_IS_FLOAT
LOCAL_CPPFLAGS  := ${LOCAL_CFLAGS}

LOCAL_C_INCLUDES  :=  \
	${LOCAL_PATH}/libtiff/ \
	$(EXTERNAL_PATH)/libjpeg
		
LOCAL_SRC_FILES := \
	libtiff/tif_dir.c libtiff/tif_codec.c libtiff/tif_predict.c libtiff/tif_tile.c libtiff/tif_version.c libtiff/tif_unix.c \
	libtiff/tif_swab.c libtiff/tif_thunder.c libtiff/tif_next.c libtiff/tif_strip.c libtiff/tif_extension.c libtiff/tif_error.c \
	libtiff/tif_dirwrite.c libtiff/tif_fax3sm.c libtiff/tif_ojpeg.c libtiff/tif_flush.c libtiff/tif_warning.c libtiff/tif_fax3.c \
	libtiff/tif_jbig.c libtiff/tif_open.c libtiff/tif_write.c libtiff/tif_packbits.c libtiff/tif_compress.c libtiff/tif_color.c \
	libtiff/tif_print.c libtiff/tif_zip.c libtiff/tif_aux.c libtiff/tif_dumpmode.c libtiff/tif_dirread.c libtiff/tif_getimage.c \
	libtiff/tif_jpeg.c libtiff/tif_close.c libtiff/tif_read.c libtiff/tif_luv.c libtiff/tif_dirinfo.c libtiff/tif_lzw.c \
	libtiff/tif_pixarlog.c port/lfind.c 

include $(BUILD_STATIC_LIBRARY)

##libexpat
LOCAL_PATH := $(MY_DIR)/expat
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	lib/xmlparse.c lib/xmlrole.c lib/xmltok.c

LOCAL_CFLAGS += \
	-Wall \
    -Wmissing-prototypes -Wstrict-prototypes \
    -Wno-unused-parameter -Wno-missing-field-initializers \
    -fexceptions \
    -DHAVE_EXPAT_CONFIG_H

LOCAL_C_INCLUDES += $(LOCAL_PATH)/lib

LOCAL_MODULE:= libexpat

include $(BUILD_STATIC_LIBRARY)

## fontconfig
LOCAL_PATH := $(MY_DIR)/fontconfig
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	src/fcatomic.c src/fcblanks.c src/fccache.c src/fccfg.c src/fccharset.c src/fcdbg.c src/fcdefault.c src/fcdir.c \
	src/fcformat.c src/fcfreetype.c src/fcfs.c src/fcinit.c src/fclang.c src/fclist.c src/fcmatch.c src/fcmatrix.c \
	src/fcname.c src/fcpat.c src/fcserialize.c src/fcstr.c src/fcxml.c src/ftglue.c

LOCAL_C_INCLUDES += 	\
	$(MY_DIR)/customize/freetype2	\
	$(EXTERNAL_PATH)/freetype2/include	\
	$(EXTERNAL_PATH)/expat/lib		\
	$(EXTERNAL_PATH)/expat		\
	$(LOCAL_PATH)/src
	
LOCAL_CFLAGS := -DFONTCONFIG_PATH=\"/sdcard/.fcconfig\"
LOCAL_CFLAGS += -DFC_CACHEDIR=\"/sdcard/.fccache\"
LOCAL_CFLAGS += -DFC_DEFAULT_FONTS=\"/system/fonts\"

LOCAL_STATIC_LIBRARIES = -lboost_system

LOCAL_MODULE := fontconfig

include $(BUILD_STATIC_LIBRARY)

## freetype2
CUSTOMZIE_PATH := $(MY_DIR)/customize/freetype2
LOCAL_PATH := $(MY_DIR)/freetype2

include $(CLEAR_VARS)

LOCAL_SRC_FILES := 		\
	src/base/basepic.c src/base/ftadvanc.c src/base/ftapi.c src/base/ftbdf.c src/base/ftcalc.c 	\
	src/base/ftcid.c src/base/ftdbgmem.c src/base/ftdebug.c src/base/ftfntfmt.c src/base/ftfstype.c 	\
	src/base/ftgloadr.c src/base/ftgxval.c src/base/ftlcdfil.c src/base/ftmm.c src/base/ftotval.c 	\
	src/base/ftpatent.c src/base/ftpfr.c src/base/ftpic.c src/base/ftrfork.c src/base/ftsnames.c 	\
	src/base/ftstream.c src/base/ftsynth.c src/base/fttrigon.c src/base/fttype1.c src/base/ftwinfnt.c 	\
	src/base/ftbbox.c src/base/ftbitmap.c src/base/ftglyph.c src/base/ftstroke.c src/base/ftbase.c 	\
	src/base/ftsystem.c src/base/ftinit.c src/base/ftgasp.c src/raster/raster.c src/sfnt/sfnt.c 	\
	src/smooth/smooth.c src/autofit/autofit.c  	\
	src/truetype/truetype.c src/cff/cff.c src/psnames/psnames.c src/pshinter/pshinter.c src/type1/type1.c 	\
	src/cid/type1cid.c src/type42/type42.c src/winfonts/winfnt.c src/pcf/pcf.c src/bdf/bdf.c src/lzw/ftlzw.c 	\
	src/gzip/ftgzip.c src/psaux/psaux.c src/bzip2/ftbzip2.c src/cache/ftcache.c src/pfr/pfr.c

LOCAL_C_INCLUDES += 		\
	$(CUSTOMIZE_PATH)	\
	$(LOCAL_PATH)/builds 	\
	$(LOCAL_PATH)/include

LOCAL_CFLAGS += -W -Wall
LOCAL_CFLAGS += -fPIC -DPIC
LOCAL_CFLAGS += "-DDARWIN_NO_CARBON"
LOCAL_CFLAGS += "-DFT2_BUILD_LIBRARY"

LOCAL_CFLAGS += -O2

LOCAL_MODULE := libft2

include $(BUILD_STATIC_LIBRARY)

## poppler
LOCAL_PATH := $(MY_DIR)/poppler

CUSTOMZIE_PATH := $(MY_DIR)/customize/poppler

include $(CLEAR_VARS)

LOCAL_MODULE := libpoppler

LOCAL_CPP_EXTENSION := .cc .cpp

LOCAL_SRC_FILES :=      \
	utils/pdfinfo.cc fofi/FoFiBase.cc fofi/FoFiEncodings.cc	fofi/FoFiTrueType.cc fofi/FoFiType1.cc		\
	fofi/FoFiType1C.cc fofi/FoFiIdentifier.cc goo/gfile.cc goo/gmempp.cc goo/GooHash.cc			\
	goo/NetPBMWriter.cc goo/GooList.cc goo/GooTimer.cc goo/GooString.cc goo/gmem.cc	goo/grandom.cc goo/FixedPoint.cc		\
	goo/gstrtod.cc goo/JpegWriter.cc goo/ImgWriter.cc poppler/CachedFile.cc poppler/GlobalParams.cc poppler/FlateStream.cc		\
	goo/PNGWriter.cc goo/TiffWriter.cc poppler/PreScanOutputDev.cc poppler/PSOutputDev.cc poppler/strtok_r.cpp	\
	poppler/XpdfPluginAPI.cc	\
	poppler/Annot.cc poppler/Array.cc poppler/BuiltinFont.cc poppler/BuiltinFontTables.cc poppler/Catalog.cc 		\
	poppler/CharCodeToUnicode.cc poppler/CMap.cc poppler/DateInfo.cc poppler/DCTStream.cc poppler/Decrypt.cc poppler/Dict.cc 		\
	poppler/FileSpec.cc	poppler/FontEncodingTables.cc poppler/Form.cc poppler/FontInfo.cc poppler/Function.cc		\
	poppler/Gfx.cc poppler/Hints.cc	poppler/Linearization.cc poppler/ViewerPreferences.cc poppler/GfxFont.cc 		\
	poppler/GfxState.cc	poppler/JArithmeticDecoder.cc poppler/JBIG2Stream.cc poppler/JPXStream.cc		\
	poppler/Lexer.cc poppler/Link.cc poppler/LocalPDFDocBuilder.cc poppler/MarkedContentOutputDev.cc poppler/Movie.cc       \
	poppler/NameToCharCode.cc poppler/Rendition.cc poppler/Object.cc poppler/OptionalContent.cc	poppler/Outline.cc		\
	poppler/OutputDev.cc poppler/Page.cc poppler/PageTransition.cc poppler/Parser.cc poppler/PDFDoc.cc 		\
	poppler/PDFDocFactory.cc poppler/PDFDocEncoding.cc poppler/PopplerCache.cc poppler/ProfileData.cc		\
	poppler/PSTokenizer.cc poppler/StdinCachedFile.cc poppler/StdinPDFDocBuilder.cc poppler/StructTreeRoot.cc		\
	poppler/StructElement.cc poppler/Stream.cc poppler/UnicodeMap.cc poppler/UnicodeTypeTable.cc poppler/XRef.cc			\
	poppler/PageLabelInfo.cc poppler/SecurityHandler.cc	poppler/Sound.cc poppler/Error.cc poppler/SplashOutputDev.cc	\
	poppler/UTF.cc splash/Splash.cc	splash/SplashBitmap.cc splash/SplashClip.cc	splash/SplashFTFont.cc splash/SplashFTFontEngine.cc	\
	splash/SplashFTFontFile.cc splash/SplashFont.cc	splash/SplashFontEngine.cc splash/SplashFontFile.cc	splash/SplashFontFileID.cc	\
	splash/SplashPath.cc splash/SplashPattern.cc splash/SplashScreen.cc	splash/SplashState.cc splash/SplashXPath.cc		\
	splash/SplashXPathScanner.cc splash/SplashT1Font.cc	splash/SplashT1FontEngine.cc splash/SplashT1FontFile.cc \
	utils/pdftoppm.cc utils/parseargs.cc poppler/TextOutputDev.cc 		\
	utils/printencodings.cc		\
	../customize/poppler/GlobalParamsAndroid.cc	\
	../customize/poppler/customize.cc

LOCAL_C_INCLUDES :=         	\
	$(CUSTOMZIE_PATH)	\
	$(CUSTOMZIE_PATH)/poppler	\
	$(LOCAL_PATH)/		\
	$(LOCAL_PATH)/poppler	\
	$(LOCAL_PATH)/goo	\
	$(LOCAL_PATH)/splash	\
	$(EXTERNAL_PATH)/fontconfig		\
	$(EXTERNAL_PATH)/fontconfig/src		\
	$(EXTERNAL_PATH)/libjpeg	\
	$(EXTERNAL_PATH)/libpng	\
	$(EXTERNAL_PATH)/libtiff/libtiff	\
	$(EXTERNAL_PATH)/freetype2/include

LOCAL_CFLAGS += -w -DPLATFORM_ANDROID
LOCAL_CFLAGS += "-DENABLE_LIBJPEG"
LOCAL_CFLAGS += "-DENABLE_LIBOPENJPEG"
LOCAL_CFLAGS += "-DENABLE_LIBPNG"
LOCAL_CFLAGS += "-DENABLE_LIBTIFF"

include $(BUILD_STATIC_LIBRARY)

