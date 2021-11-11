; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "PlaneWSar"
!define PRODUCT_VERSION "1.3"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\PlaneWar.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\main\PlaneWar.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Setup.exe"
InstallDir "$PROGRAMFILES\PlaneWSar"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR\main"
  SetOverwrite try
  File "..\dist\main\api-ms-win-core-console-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-datetime-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-debug-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-errorhandling-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-file-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-file-l1-2-0.dll"
  File "..\dist\main\api-ms-win-core-file-l2-1-0.dll"
  File "..\dist\main\api-ms-win-core-handle-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-heap-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-interlocked-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-libraryloader-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-localization-l1-2-0.dll"
  File "..\dist\main\api-ms-win-core-memory-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-namedpipe-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-processenvironment-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-processthreads-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-processthreads-l1-1-1.dll"
  File "..\dist\main\api-ms-win-core-profile-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-rtlsupport-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-string-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-synch-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-synch-l1-2-0.dll"
  File "..\dist\main\api-ms-win-core-sysinfo-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-timezone-l1-1-0.dll"
  File "..\dist\main\api-ms-win-core-util-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-conio-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-convert-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-environment-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-filesystem-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-heap-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-locale-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-math-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-multibyte-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-process-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-runtime-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-stdio-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-string-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-time-l1-1-0.dll"
  File "..\dist\main\api-ms-win-crt-utility-l1-1-0.dll"
  File "..\dist\main\base_library.zip"
  SetOutPath "$INSTDIR\main\data"
  File "..\dist\main\data\simhei.ttf"
  SetOutPath "$INSTDIR\main"
  File "..\dist\main\freetype.dll"
  SetOutPath "$INSTDIR\main\images"
  File "..\dist\main\images\again.png"
  File "..\dist\main\images\background.png"
  File "..\dist\main\images\bomb.png"
  File "..\dist\main\images\bomb_supply.png"
  File "..\dist\main\images\bullet1.png"
  File "..\dist\main\images\bullet2.png"
  File "..\dist\main\images\bullet_supply.png"
  File "..\dist\main\images\enemy1.png"
  File "..\dist\main\images\enemy1_down1.png"
  File "..\dist\main\images\enemy1_down2.png"
  File "..\dist\main\images\enemy1_down3.png"
  File "..\dist\main\images\enemy1_down4.png"
  File "..\dist\main\images\enemy2.png"
  File "..\dist\main\images\enemy2_down1.png"
  File "..\dist\main\images\enemy2_down2.png"
  File "..\dist\main\images\enemy2_down3.png"
  File "..\dist\main\images\enemy2_down4.png"
  File "..\dist\main\images\enemy2_hit.png"
  File "..\dist\main\images\enemy3_down1.png"
  File "..\dist\main\images\enemy3_down2.png"
  File "..\dist\main\images\enemy3_down3.png"
  File "..\dist\main\images\enemy3_down4.png"
  File "..\dist\main\images\enemy3_down5.png"
  File "..\dist\main\images\enemy3_down6.png"
  File "..\dist\main\images\enemy3_hit.png"
  File "..\dist\main\images\enemy3_n1.png"
  File "..\dist\main\images\enemy3_n2.png"
  File "..\dist\main\images\gameover.png"
  File "..\dist\main\images\icon.ico"
  File "..\dist\main\images\life.png"
  File "..\dist\main\images\me1.png"
  File "..\dist\main\images\me2.png"
  File "..\dist\main\images\me_destroy_1.png"
  File "..\dist\main\images\me_destroy_2.png"
  File "..\dist\main\images\me_destroy_3.png"
  File "..\dist\main\images\me_destroy_4.png"
  File "..\dist\main\images\pause_nor.png"
  File "..\dist\main\images\pause_pressed.png"
  File "..\dist\main\images\resume_nor.png"
  File "..\dist\main\images\resume_pressed.png"
  SetOutPath "$INSTDIR\main\importlib_metadata-2.0.0-py3.8.egg-info"
  File "..\dist\main\importlib_metadata-2.0.0-py3.8.egg-info\direct_url.json"
  File "..\dist\main\importlib_metadata-2.0.0-py3.8.egg-info\INSTALLER"
  File "..\dist\main\importlib_metadata-2.0.0-py3.8.egg-info\LICENSE"
  File "..\dist\main\importlib_metadata-2.0.0-py3.8.egg-info\METADATA"
  File "..\dist\main\importlib_metadata-2.0.0-py3.8.egg-info\RECORD"
  File "..\dist\main\importlib_metadata-2.0.0-py3.8.egg-info\REQUESTED"
  File "..\dist\main\importlib_metadata-2.0.0-py3.8.egg-info\top_level.txt"
  File "..\dist\main\importlib_metadata-2.0.0-py3.8.egg-info\WHEEL"
  SetOutPath "$INSTDIR\main\Include"
  File "..\dist\main\Include\pyconfig.h"
  SetOutPath "$INSTDIR\main"
  File "..\dist\main\libcrypto-1_1-x64.dll"
  File "..\dist\main\libffi-7.dll"
  File "..\dist\main\libFLAC-8.dll"
  File "..\dist\main\libfreetype-6.dll"
  File "..\dist\main\libjpeg-9.dll"
  File "..\dist\main\liblzma.dll"
  File "..\dist\main\libmodplug-1.dll"
  File "..\dist\main\libmpg123-0.dll"
  File "..\dist\main\libogg-0.dll"
  File "..\dist\main\libopus-0.dll"
  File "..\dist\main\libopusfile-0.dll"
  File "..\dist\main\libpng16-16.dll"
  File "..\dist\main\libpng16.dll"
  File "..\dist\main\libssl-1_1-x64.dll"
  File "..\dist\main\libtiff-5.dll"
  File "..\dist\main\libvorbis-0.dll"
  File "..\dist\main\libvorbisfile-3.dll"
  File "..\dist\main\libwebp-7.dll"
  File "..\dist\main\mfc140u.dll"
  SetOutPath "$INSTDIR\main\mkl"
  File "..\dist\main\mkl\_mklinit.cp38-win_amd64.pyd"
  File "..\dist\main\mkl\_py_mkl_service.cp38-win_amd64.pyd"
  SetOutPath "$INSTDIR\main"
  File "..\dist\main\mkl_avx.dll"
  File "..\dist\main\mkl_avx2.dll"
  File "..\dist\main\mkl_avx512.dll"
  File "..\dist\main\mkl_blacs_ilp64.dll"
  File "..\dist\main\mkl_blacs_intelmpi_ilp64.dll"
  File "..\dist\main\mkl_blacs_intelmpi_lp64.dll"
  File "..\dist\main\mkl_blacs_lp64.dll"
  File "..\dist\main\mkl_blacs_mpich2_ilp64.dll"
  File "..\dist\main\mkl_blacs_mpich2_lp64.dll"
  File "..\dist\main\mkl_blacs_msmpi_ilp64.dll"
  File "..\dist\main\mkl_blacs_msmpi_lp64.dll"
  File "..\dist\main\mkl_cdft_core.dll"
  File "..\dist\main\mkl_core.dll"
  File "..\dist\main\mkl_def.dll"
  File "..\dist\main\mkl_intel_thread.dll"
  File "..\dist\main\mkl_mc.dll"
  File "..\dist\main\mkl_mc3.dll"
  File "..\dist\main\mkl_msg.dll"
  File "..\dist\main\mkl_pgi_thread.dll"
  File "..\dist\main\mkl_rt.dll"
  File "..\dist\main\mkl_scalapack_ilp64.dll"
  File "..\dist\main\mkl_scalapack_lp64.dll"
  File "..\dist\main\mkl_sequential.dll"
  File "..\dist\main\mkl_tbb_thread.dll"
  File "..\dist\main\mkl_vml_avx.dll"
  File "..\dist\main\mkl_vml_avx2.dll"
  File "..\dist\main\mkl_vml_avx512.dll"
  File "..\dist\main\mkl_vml_cmpt.dll"
  File "..\dist\main\mkl_vml_def.dll"
  File "..\dist\main\mkl_vml_mc.dll"
  File "..\dist\main\mkl_vml_mc2.dll"
  File "..\dist\main\mkl_vml_mc3.dll"
  File "..\dist\main\MSVCP140.dll"
  SetOutPath "$INSTDIR\main\numpy\core"
  File "..\dist\main\numpy\core\_multiarray_tests.cp38-win_amd64.pyd"
  File "..\dist\main\numpy\core\_multiarray_umath.cp38-win_amd64.pyd"
  SetOutPath "$INSTDIR\main\numpy\fft"
  File "..\dist\main\numpy\fft\_pocketfft_internal.cp38-win_amd64.pyd"
  SetOutPath "$INSTDIR\main\numpy\linalg"
  File "..\dist\main\numpy\linalg\lapack_lite.cp38-win_amd64.pyd"
  File "..\dist\main\numpy\linalg\_umath_linalg.cp38-win_amd64.pyd"
  SetOutPath "$INSTDIR\main\numpy\random"
  File "..\dist\main\numpy\random\bit_generator.cp38-win_amd64.pyd"
  File "..\dist\main\numpy\random\mtrand.cp38-win_amd64.pyd"
  File "..\dist\main\numpy\random\_bounded_integers.cp38-win_amd64.pyd"
  File "..\dist\main\numpy\random\_common.cp38-win_amd64.pyd"
  File "..\dist\main\numpy\random\_generator.cp38-win_amd64.pyd"
  File "..\dist\main\numpy\random\_mt19937.cp38-win_amd64.pyd"
  File "..\dist\main\numpy\random\_pcg64.cp38-win_amd64.pyd"
  File "..\dist\main\numpy\random\_philox.cp38-win_amd64.pyd"
  File "..\dist\main\numpy\random\_sfc64.cp38-win_amd64.pyd"
  SetOutPath "$INSTDIR\main\PIL"
  File "..\dist\main\PIL\_imaging.cp38-win_amd64.pyd"
  File "..\dist\main\PIL\_imagingft.cp38-win_amd64.pyd"
  File "..\dist\main\PIL\_imagingtk.cp38-win_amd64.pyd"
  SetOutPath "$INSTDIR\main"
  File "..\dist\main\PlaneWar.exe"
  CreateDirectory "$SMPROGRAMS\PlaneWSar"
  CreateShortCut "$SMPROGRAMS\PlaneWSar\PlaneWSar.lnk" "$INSTDIR\main\PlaneWar.exe"
  CreateShortCut "$DESKTOP\PlaneWSar.lnk" "$INSTDIR\main\PlaneWar.exe"
  File "..\dist\main\PlaneWar.exe.manifest"
  File "..\dist\main\portmidi.dll"
  SetOutPath "$INSTDIR\main\psutil"
  File "..\dist\main\psutil\_psutil_windows.cp38-win_amd64.pyd"
  SetOutPath "$INSTDIR\main"
  File "..\dist\main\pyexpat.pyd"
  SetOutPath "$INSTDIR\main\pygame"
  File "..\dist\main\pygame\base.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\bufferproxy.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\color.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\constants.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\display.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\draw.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\event.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\fastevent.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\font.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\freesansbold.ttf"
  File "..\dist\main\pygame\image.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\imageext.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\joystick.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\key.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\mask.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\math.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\mixer.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\mixer_music.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\mouse.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\pixelarray.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\pixelcopy.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\pygame_icon.bmp"
  File "..\dist\main\pygame\rect.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\rwobject.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\scrap.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\surface.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\surflock.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\time.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\transform.cp38-win_amd64.pyd"
  File "..\dist\main\pygame\_freetype.cp38-win_amd64.pyd"
  SetOutPath "$INSTDIR\main"
  File "..\dist\main\python38.dll"
  File "..\dist\main\pythoncom38.dll"
  File "..\dist\main\pywintypes38.dll"
  SetOutPath "$INSTDIR\main\scipy\fft\_pocketfft"
  File "..\dist\main\scipy\fft\_pocketfft\pypocketfft.cp38-win_amd64.pyd"
  SetOutPath "$INSTDIR\main\scipy\_lib"
  File "..\dist\main\scipy\_lib\messagestream.cp38-win_amd64.pyd"
  File "..\dist\main\scipy\_lib\_ccallback_c.cp38-win_amd64.pyd"
  File "..\dist\main\scipy\_lib\_fpumode.cp38-win_amd64.pyd"
  SetOutPath "$INSTDIR\main\scipy\_lib\_uarray"
  File "..\dist\main\scipy\_lib\_uarray\_uarray.cp38-win_amd64.pyd"
  SetOutPath "$INSTDIR\main"
  File "..\dist\main\SDL2.dll"
  File "..\dist\main\SDL2_image.dll"
  File "..\dist\main\SDL2_mixer.dll"
  File "..\dist\main\SDL2_ttf.dll"
  File "..\dist\main\select.pyd"
  File "..\dist\main\tiff.dll"
  File "..\dist\main\ucrtbase.dll"
  File "..\dist\main\unicodedata.pyd"
  File "..\dist\main\VCRUNTIME140.dll"
  File "..\dist\main\win32api.pyd"
  SetOutPath "$INSTDIR\main\win32com\shell"
  File "..\dist\main\win32com\shell\shell.pyd"
  SetOutPath "$INSTDIR\main"
  File "..\dist\main\win32evtlog.pyd"
  File "..\dist\main\win32pdh.pyd"
  File "..\dist\main\win32trace.pyd"
  File "..\dist\main\win32ui.pyd"
  File "..\dist\main\win32wnet.pyd"
  File "..\dist\main\zlib.dll"
  File "..\dist\main\zlib1.dll"
  SetOutPath "$INSTDIR\main\zope\interface"
  File "..\dist\main\zope\interface\_zope_interface_coptimizations.cp38-win_amd64.pyd"
  SetOutPath "$INSTDIR\main"
  File "..\dist\main\zstd.dll"
  File "..\dist\main\_asyncio.pyd"
  File "..\dist\main\_bz2.pyd"
  File "..\dist\main\_cffi_backend.cp38-win_amd64.pyd"
  File "..\dist\main\_ctypes.pyd"
  File "..\dist\main\_decimal.pyd"
  File "..\dist\main\_elementtree.pyd"
  File "..\dist\main\_hashlib.pyd"
  File "..\dist\main\_lzma.pyd"
  File "..\dist\main\_multiprocessing.pyd"
  File "..\dist\main\_overlapped.pyd"
  File "..\dist\main\_queue.pyd"
  File "..\dist\main\_socket.pyd"
  File "..\dist\main\_ssl.pyd"
  File "..\dist\main\_win32sysloader.pyd"
  SetOutPath "$INSTDIR"
  File "..\dist\请读我.txt"
SectionEnd

Section -AdditionalIcons
  CreateShortCut "$SMPROGRAMS\PlaneWSar\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\main\PlaneWar.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\main\PlaneWar.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) 已成功地从你的计算机移除。"
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "你确实要完全移除 $(^Name) ，其及所有的组件？" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\请读我.txt"
  Delete "$INSTDIR\main\_win32sysloader.pyd"
  Delete "$INSTDIR\main\_ssl.pyd"
  Delete "$INSTDIR\main\_socket.pyd"
  Delete "$INSTDIR\main\_queue.pyd"
  Delete "$INSTDIR\main\_overlapped.pyd"
  Delete "$INSTDIR\main\_multiprocessing.pyd"
  Delete "$INSTDIR\main\_lzma.pyd"
  Delete "$INSTDIR\main\_hashlib.pyd"
  Delete "$INSTDIR\main\_elementtree.pyd"
  Delete "$INSTDIR\main\_decimal.pyd"
  Delete "$INSTDIR\main\_ctypes.pyd"
  Delete "$INSTDIR\main\_cffi_backend.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\_bz2.pyd"
  Delete "$INSTDIR\main\_asyncio.pyd"
  Delete "$INSTDIR\main\zstd.dll"
  Delete "$INSTDIR\main\zope\interface\_zope_interface_coptimizations.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\zlib1.dll"
  Delete "$INSTDIR\main\zlib.dll"
  Delete "$INSTDIR\main\win32wnet.pyd"
  Delete "$INSTDIR\main\win32ui.pyd"
  Delete "$INSTDIR\main\win32trace.pyd"
  Delete "$INSTDIR\main\win32pdh.pyd"
  Delete "$INSTDIR\main\win32evtlog.pyd"
  Delete "$INSTDIR\main\win32com\shell\shell.pyd"
  Delete "$INSTDIR\main\win32api.pyd"
  Delete "$INSTDIR\main\VCRUNTIME140.dll"
  Delete "$INSTDIR\main\unicodedata.pyd"
  Delete "$INSTDIR\main\ucrtbase.dll"
  Delete "$INSTDIR\main\tiff.dll"
  Delete "$INSTDIR\main\select.pyd"
  Delete "$INSTDIR\main\SDL2_ttf.dll"
  Delete "$INSTDIR\main\SDL2_mixer.dll"
  Delete "$INSTDIR\main\SDL2_image.dll"
  Delete "$INSTDIR\main\SDL2.dll"
  Delete "$INSTDIR\main\scipy\_lib\_uarray\_uarray.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\scipy\_lib\_fpumode.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\scipy\_lib\_ccallback_c.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\scipy\_lib\messagestream.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\scipy\fft\_pocketfft\pypocketfft.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pywintypes38.dll"
  Delete "$INSTDIR\main\pythoncom38.dll"
  Delete "$INSTDIR\main\python38.dll"
  Delete "$INSTDIR\main\pygame\_freetype.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\transform.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\time.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\surflock.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\surface.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\scrap.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\rwobject.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\rect.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\pygame_icon.bmp"
  Delete "$INSTDIR\main\pygame\pixelcopy.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\pixelarray.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\mouse.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\mixer_music.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\mixer.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\math.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\mask.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\key.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\joystick.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\imageext.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\image.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\freesansbold.ttf"
  Delete "$INSTDIR\main\pygame\font.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\fastevent.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\event.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\draw.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\display.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\constants.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\color.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\bufferproxy.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pygame\base.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\pyexpat.pyd"
  Delete "$INSTDIR\main\psutil\_psutil_windows.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\portmidi.dll"
  Delete "$INSTDIR\main\PlaneWar.exe.manifest"
  Delete "$INSTDIR\main\PlaneWar.exe"
  Delete "$INSTDIR\main\PIL\_imagingtk.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\PIL\_imagingft.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\PIL\_imaging.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\random\_sfc64.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\random\_philox.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\random\_pcg64.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\random\_mt19937.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\random\_generator.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\random\_common.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\random\_bounded_integers.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\random\mtrand.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\random\bit_generator.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\linalg\_umath_linalg.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\linalg\lapack_lite.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\fft\_pocketfft_internal.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\core\_multiarray_umath.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\numpy\core\_multiarray_tests.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\MSVCP140.dll"
  Delete "$INSTDIR\main\mkl_vml_mc3.dll"
  Delete "$INSTDIR\main\mkl_vml_mc2.dll"
  Delete "$INSTDIR\main\mkl_vml_mc.dll"
  Delete "$INSTDIR\main\mkl_vml_def.dll"
  Delete "$INSTDIR\main\mkl_vml_cmpt.dll"
  Delete "$INSTDIR\main\mkl_vml_avx512.dll"
  Delete "$INSTDIR\main\mkl_vml_avx2.dll"
  Delete "$INSTDIR\main\mkl_vml_avx.dll"
  Delete "$INSTDIR\main\mkl_tbb_thread.dll"
  Delete "$INSTDIR\main\mkl_sequential.dll"
  Delete "$INSTDIR\main\mkl_scalapack_lp64.dll"
  Delete "$INSTDIR\main\mkl_scalapack_ilp64.dll"
  Delete "$INSTDIR\main\mkl_rt.dll"
  Delete "$INSTDIR\main\mkl_pgi_thread.dll"
  Delete "$INSTDIR\main\mkl_msg.dll"
  Delete "$INSTDIR\main\mkl_mc3.dll"
  Delete "$INSTDIR\main\mkl_mc.dll"
  Delete "$INSTDIR\main\mkl_intel_thread.dll"
  Delete "$INSTDIR\main\mkl_def.dll"
  Delete "$INSTDIR\main\mkl_core.dll"
  Delete "$INSTDIR\main\mkl_cdft_core.dll"
  Delete "$INSTDIR\main\mkl_blacs_msmpi_lp64.dll"
  Delete "$INSTDIR\main\mkl_blacs_msmpi_ilp64.dll"
  Delete "$INSTDIR\main\mkl_blacs_mpich2_lp64.dll"
  Delete "$INSTDIR\main\mkl_blacs_mpich2_ilp64.dll"
  Delete "$INSTDIR\main\mkl_blacs_lp64.dll"
  Delete "$INSTDIR\main\mkl_blacs_intelmpi_lp64.dll"
  Delete "$INSTDIR\main\mkl_blacs_intelmpi_ilp64.dll"
  Delete "$INSTDIR\main\mkl_blacs_ilp64.dll"
  Delete "$INSTDIR\main\mkl_avx512.dll"
  Delete "$INSTDIR\main\mkl_avx2.dll"
  Delete "$INSTDIR\main\mkl_avx.dll"
  Delete "$INSTDIR\main\mkl\_py_mkl_service.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\mkl\_mklinit.cp38-win_amd64.pyd"
  Delete "$INSTDIR\main\mfc140u.dll"
  Delete "$INSTDIR\main\libwebp-7.dll"
  Delete "$INSTDIR\main\libvorbisfile-3.dll"
  Delete "$INSTDIR\main\libvorbis-0.dll"
  Delete "$INSTDIR\main\libtiff-5.dll"
  Delete "$INSTDIR\main\libssl-1_1-x64.dll"
  Delete "$INSTDIR\main\libpng16.dll"
  Delete "$INSTDIR\main\libpng16-16.dll"
  Delete "$INSTDIR\main\libopusfile-0.dll"
  Delete "$INSTDIR\main\libopus-0.dll"
  Delete "$INSTDIR\main\libogg-0.dll"
  Delete "$INSTDIR\main\libmpg123-0.dll"
  Delete "$INSTDIR\main\libmodplug-1.dll"
  Delete "$INSTDIR\main\liblzma.dll"
  Delete "$INSTDIR\main\libjpeg-9.dll"
  Delete "$INSTDIR\main\libfreetype-6.dll"
  Delete "$INSTDIR\main\libFLAC-8.dll"
  Delete "$INSTDIR\main\libffi-7.dll"
  Delete "$INSTDIR\main\libcrypto-1_1-x64.dll"
  Delete "$INSTDIR\main\Include\pyconfig.h"
  Delete "$INSTDIR\main\importlib_metadata-2.0.0-py3.8.egg-info\WHEEL"
  Delete "$INSTDIR\main\importlib_metadata-2.0.0-py3.8.egg-info\top_level.txt"
  Delete "$INSTDIR\main\importlib_metadata-2.0.0-py3.8.egg-info\REQUESTED"
  Delete "$INSTDIR\main\importlib_metadata-2.0.0-py3.8.egg-info\RECORD"
  Delete "$INSTDIR\main\importlib_metadata-2.0.0-py3.8.egg-info\METADATA"
  Delete "$INSTDIR\main\importlib_metadata-2.0.0-py3.8.egg-info\LICENSE"
  Delete "$INSTDIR\main\importlib_metadata-2.0.0-py3.8.egg-info\INSTALLER"
  Delete "$INSTDIR\main\importlib_metadata-2.0.0-py3.8.egg-info\direct_url.json"
  Delete "$INSTDIR\main\images\resume_pressed.png"
  Delete "$INSTDIR\main\images\resume_nor.png"
  Delete "$INSTDIR\main\images\pause_pressed.png"
  Delete "$INSTDIR\main\images\pause_nor.png"
  Delete "$INSTDIR\main\images\me_destroy_4.png"
  Delete "$INSTDIR\main\images\me_destroy_3.png"
  Delete "$INSTDIR\main\images\me_destroy_2.png"
  Delete "$INSTDIR\main\images\me_destroy_1.png"
  Delete "$INSTDIR\main\images\me2.png"
  Delete "$INSTDIR\main\images\me1.png"
  Delete "$INSTDIR\main\images\life.png"
  Delete "$INSTDIR\main\images\icon.ico"
  Delete "$INSTDIR\main\images\gameover.png"
  Delete "$INSTDIR\main\images\enemy3_n2.png"
  Delete "$INSTDIR\main\images\enemy3_n1.png"
  Delete "$INSTDIR\main\images\enemy3_hit.png"
  Delete "$INSTDIR\main\images\enemy3_down6.png"
  Delete "$INSTDIR\main\images\enemy3_down5.png"
  Delete "$INSTDIR\main\images\enemy3_down4.png"
  Delete "$INSTDIR\main\images\enemy3_down3.png"
  Delete "$INSTDIR\main\images\enemy3_down2.png"
  Delete "$INSTDIR\main\images\enemy3_down1.png"
  Delete "$INSTDIR\main\images\enemy2_hit.png"
  Delete "$INSTDIR\main\images\enemy2_down4.png"
  Delete "$INSTDIR\main\images\enemy2_down3.png"
  Delete "$INSTDIR\main\images\enemy2_down2.png"
  Delete "$INSTDIR\main\images\enemy2_down1.png"
  Delete "$INSTDIR\main\images\enemy2.png"
  Delete "$INSTDIR\main\images\enemy1_down4.png"
  Delete "$INSTDIR\main\images\enemy1_down3.png"
  Delete "$INSTDIR\main\images\enemy1_down2.png"
  Delete "$INSTDIR\main\images\enemy1_down1.png"
  Delete "$INSTDIR\main\images\enemy1.png"
  Delete "$INSTDIR\main\images\bullet_supply.png"
  Delete "$INSTDIR\main\images\bullet2.png"
  Delete "$INSTDIR\main\images\bullet1.png"
  Delete "$INSTDIR\main\images\bomb_supply.png"
  Delete "$INSTDIR\main\images\bomb.png"
  Delete "$INSTDIR\main\images\background.png"
  Delete "$INSTDIR\main\images\again.png"
  Delete "$INSTDIR\main\freetype.dll"
  Delete "$INSTDIR\main\data\simhei.ttf"
  Delete "$INSTDIR\main\base_library.zip"
  Delete "$INSTDIR\main\api-ms-win-crt-utility-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-time-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-string-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-stdio-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-runtime-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-process-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-multibyte-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-math-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-locale-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-heap-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-filesystem-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-environment-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-convert-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-crt-conio-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-util-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-timezone-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-sysinfo-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-synch-l1-2-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-synch-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-string-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-rtlsupport-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-profile-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-processthreads-l1-1-1.dll"
  Delete "$INSTDIR\main\api-ms-win-core-processthreads-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-processenvironment-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-namedpipe-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-memory-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-localization-l1-2-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-libraryloader-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-interlocked-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-heap-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-handle-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-file-l2-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-file-l1-2-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-file-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-errorhandling-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-debug-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-datetime-l1-1-0.dll"
  Delete "$INSTDIR\main\api-ms-win-core-console-l1-1-0.dll"

  Delete "$SMPROGRAMS\PlaneWSar\Uninstall.lnk"
  Delete "$DESKTOP\PlaneWSar.lnk"
  Delete "$SMPROGRAMS\PlaneWSar\PlaneWSar.lnk"

  RMDir "$SMPROGRAMS\PlaneWSar"
  RMDir "$INSTDIR\main\zope\interface"
  RMDir "$INSTDIR\main\win32com\shell"
  RMDir "$INSTDIR\main\scipy\fft\_pocketfft"
  RMDir "$INSTDIR\main\scipy\_lib\_uarray"
  RMDir "$INSTDIR\main\scipy\_lib"
  RMDir "$INSTDIR\main\pygame"
  RMDir "$INSTDIR\main\psutil"
  RMDir "$INSTDIR\main\PIL"
  RMDir "$INSTDIR\main\numpy\random"
  RMDir "$INSTDIR\main\numpy\linalg"
  RMDir "$INSTDIR\main\numpy\fft"
  RMDir "$INSTDIR\main\numpy\core"
  RMDir "$INSTDIR\main\mkl"
  RMDir "$INSTDIR\main\Include"
  RMDir "$INSTDIR\main\importlib_metadata-2.0.0-py3.8.egg-info"
  RMDir "$INSTDIR\main\images"
  RMDir "$INSTDIR\main\data"
  RMDir "$INSTDIR\main"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd