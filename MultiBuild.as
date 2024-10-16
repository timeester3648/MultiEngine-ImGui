void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	project.name("ImGui");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eStaticLib);
	project.license("./LICENSE.txt");
	properties.tags({ "use_header_only_mle", "utf8" });

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
		MultiBuild::ScopedFilter _(project, "project.compiler:VisualCpp");
		properties.disable_warnings({ "4267", "4996" });
	}
}