void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	properties.name("ImGui");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eStaticLib);
	properties.license("./LICENSE.txt");
	properties.tags("use_header_only_mle");

	properties.project_includes({
		"fmt",
		"mle",
		"stb",
		"fmt",
		"glfw",
		"imgui",
		"boost",
		"spdlog",
		"lunasvg",
		"freetype",
		"magic_enum",
		"intrinsics"
	});

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"."
	});

	properties.files({
		"./*.h",
		"./*.cpp",

		"./misc/cpp/*.h",
		"./misc/freetype/*.h",

		"./misc/cpp/*.cpp",
		"./misc/freetype/*.cpp"
	});

	{
		MultiBuild::ScopedFilter _(workspace, "project.compiler:VisualCpp");
		properties.disable_warnings({ "4267", "4996" });
	}
}