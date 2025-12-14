project "freetype"
    kind "StaticLib"
    language "C"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "include/ft2build.h",
        "include/freetype/*.h",
        "include/freetype/config/*.h",
        "include/freetype/internal/*.h",

        -- Base (compile these only)
        "src/base/ftbase.c",
        "src/base/ftinit.c",
        "src/base/ftsystem.c",

        -- Modules / drivers
        "src/autofit/autofit.c",
        "src/bdf/bdf.c",
        "src/bzip2/ftbzip2.c",
        "src/cache/ftcache.c",
        "src/cff/cff.c",
        "src/cid/type1cid.c",
        "src/gzip/ftgzip.c",
        "src/lzw/ftlzw.c",
        "src/pcf/pcf.c",
        "src/pfr/pfr.c",
        "src/psaux/psaux.c",
        "src/pshinter/pshinter.c",
        "src/psnames/psnames.c",
        "src/raster/raster.c",
        "src/sdf/sdf.c",
        "src/sfnt/sfnt.c",
        "src/smooth/smooth.c",
        "src/truetype/truetype.c",
        "src/type1/type1.c",
        "src/type42/type42.c",
        "src/winfonts/winfnt.c",
        "src/base/ftbitmap.c",
        "src/base/ftdebug.c",
        "src/base/ftmm.c",
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