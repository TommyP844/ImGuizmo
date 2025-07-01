project "ImGuizmo"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    architecture "x64"
    staticruntime "Off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir    ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    includedirs {
        "../imgui"
    }

    files {
        "ImGuizmo.h",
        "ImGuizmo.cpp"
    }

    -- visual studio filters
    filter "action:vs*"
        defines { "_CRT_SECURE_NO_WARNINGS" }

    filter { "configurations:Debug" }
        runtime "Debug"

    filter {"configurations:Release"}
        runtime "Release"


