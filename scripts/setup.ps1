cd ..;
$Env:VCPKG_DEFAULT_TRIPLET = "x64-windows";
.\vendor\vcpkg\bootstrap-vcpkg.bat -disableMetrics;

.\vendor\vcpkg\vcpkg.exe install glfw3;
.\vendor\vcpkg\vcpkg.exe install glad;

.\vendor\windows\premake5\premake5.exe vs2022;

cd .\scripts;
