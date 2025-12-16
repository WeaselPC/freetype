project "freetype"
    kind "StaticLib"
    language "C"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        -- headers
        "include/ft2build.h",
        "include/freetype/*.h",
        "include/freetype/config/*.h",
        "include/freetype/internal/*.h",

        -- Base
        "src/base/ftbase.c",
        "src/base/ftinit.c",
        "src/base/ftsystem.c",
        "src/base/ftbitmap.c",
        "src/base/ftglyph.c",
        "src/base/ftmm.c",
        "src/base/ftdebug.c",

        -- Required modules for TTF/OTF rasterization
        "src/sfnt/sfnt.c",
        "src/truetype/truetype.c",
        "src/cff/cff.c",
        "src/psaux/psaux.c",
        "src/psnames/psnames.c",
        "src/raster/raster.c",
        "src/smooth/smooth.c",

        "src/autofit/autofit.c", -- Need to validate usage
    }

    includedirs
    {
		"%{prj.location}",
		"%{prj.location}/include"
    }

    defines
    {
        "FT2_BUILD_LIBRARY",
        "_CRT_SECURE_NO_WARNINGS",
        "_CRT_NONSTDC_NO_WARNINGS",
    }