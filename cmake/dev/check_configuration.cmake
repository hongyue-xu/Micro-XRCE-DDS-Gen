#########################
# Windows platform macro.
#########################
macro(check_msvc_arch)
    if(MSVC11)
        if(CMAKE_CL_64)
            set(MSVC_ARCH "x64Win64VS2012")
        else()
            set(MSVC_ARCH "i86Win32VS2012")
        endif()
    elseif(MSVC12)
        if(CMAKE_CL_64)
            set(MSVC_ARCH "x64Win64VS2013")
        else()
            set(MSVC_ARCH "i86Win32VS2013")
        endif()
    elseif(MSVC14)
        if(CMAKE_CL_64)
            set(MSVC_ARCH "x64Win64VS2015")
        else()
            set(MSVC_ARCH "i86Win32VS2015")
        endif()
    else()
        message(FATAL_ERROR "Not supported version of Visual Studio")
    endif()
endmacro()