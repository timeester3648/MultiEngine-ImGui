include "../../premake/common_premake_defines.lua"

project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"
	tags { "use_shared_mle" }

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
		"%{IncludeDir.lunasvg}",
		"%{IncludeDir.freetype}",
		"%{IncludeDir.magic_enum}",
		"%{IncludeDir.intrinsics}",
		"%{IncludeDir.general_includes}"
	}

 	filter "system:windows"
		includedirs { "%{IncludeDir.general_includes}/windirent" }

	filter "toolset:msc"
		disablewarnings { "4267", "4996" }

project "ImGuiStatic"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "ImGui"
	inlining "Auto"
	tags { "use_static_mle" }

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
		"%{IncludeDir.lunasvg}",
		"%{IncludeDir.freetype}",
		"%{IncludeDir.magic_enum}",
		"%{IncludeDir.intrinsics}",
		"%{IncludeDir.general_includes}"
	}

 	filter "system:windows"
		includedirs { "%{IncludeDir.general_includes}/windirent" }

	filter "toolset:msc"
		disablewarnings { "4267", "4996" }
