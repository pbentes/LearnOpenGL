project "sandbox"
    kind "ConsoleApp"
    dependson { "engine" }
    language "C++"
    

    files { "./src/**.hpp", "./src/**.h", "./src/**.cpp", "./src/**.c" }

    includedirs { "%{wks.location}/vendor/vcpkg/installed/x64-windows/include" }
    libdirs { "%{wks.location}/vendor/vcpkg/installed/x64-windows/lib" }
    links { "glfw3dll" }

    filter { "system:windows" }
        cppdialect "C++20"
        buildoptions { "/Zc:__cplusplus", "/std:c++20" }

    filter "configurations:Release"
		defines
		{
			"NDEBUG",
		}
		optimize "On"

	filter "configurations:Debug*"
		defines
		{
			"_DEBUG",
            "DEBUG",
		}
		symbols "On"
