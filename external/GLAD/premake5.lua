
-- -----------------------------------------------
-- GLAD
-- -----------------------------------------------
project "GLAD"
    kind "StaticLib"
    language "C"
	staticruntime "off"
    
    targetdir (bin)
    objdir (binint)
    
    files {
         "**.h",      -- Core files
         "**.c"       -- Core files
    }
    
    defines {
        
    }

    includedirs{
        "%{IncludeDir.GLAD}/include"
    }
    
    filter "system:windows"
        links{
            "opengl32.lib"
        }