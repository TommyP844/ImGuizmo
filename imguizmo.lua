project "ImGuizmo"
  kind "StaticLib"
  language "C++"
  location ""
  cppdialect "C++20"

  files {
    "ImGuizmo.h",
    "ImGuizmo.cpp"
  }

  -- visual studio filters
    filter "action:vs*"
        defines { "_CRT_SECURE_NO_WARNINGS" }      
    filter {"configurations:Debug"}
        buildoptions {"/MDd"}

    filter {"configurations:Release"}
        buildoptions {"/DT"}


