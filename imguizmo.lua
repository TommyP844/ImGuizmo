project "ImGuizmo"
    kind "StaticLib"
    language "C++"
    location ""
    cppdialect "C++20"
    architecture "x64"

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


