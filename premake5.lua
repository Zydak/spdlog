project "spdlog"
    architecture "x86_64"
    kind "StaticLib"
    language "C++"
    location "build"
	staticruntime "on"

    objdir "build/obj/%{cfg.buildcfg}"
    targetdir "build/bin/%{cfg.buildcfg}"
    
    defines
    {
        "SPDLOG_COMPILED_LIB",
        "D_CRT_SECURE_NO_WARNINGS",
    }

    includedirs
    {
        ".",
        "include/",
        "include/spdlog/"
    }

    files
    {
        "src/**.cpp"
    }

  filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "speed"

  filter "configurations:Dist"
		runtime "Release"
		optimize "speed"
