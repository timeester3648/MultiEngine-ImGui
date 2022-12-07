include "../../premake/common_premake_defines.lua"

project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	files {
		"./*.h",
		"./*.cpp",

		"./misc/cpp/*.h",
		"./misc/freetype/*.h",

		"./misc/cpp/*.cpp",
		"./misc/freetype/*.cpp"
	}

	includedirs {
		"%{IncludeDir.fmt}",
		"%{IncludeDir.mle}",
		"%{IncludeDir.stb}",
		"%{IncludeDir.fmt}",
		"%{IncludeDir.glfw}",
		"%{IncludeDir.imgui}",
		"%{IncludeDir.boost}",
		"%{IncludeDir.spdlog}",
		"%{IncludeDir.freetype}",
		"%{IncludeDir.intrinsics}",
		"%{IncludeDir.general_includes}"
	}

 	filter "system:windows"
		includedirs { "%{IncludeDir.general_includes}/windirent" }

	filter "action:vs*"
		disablewarnings { "4267", "4996" }
