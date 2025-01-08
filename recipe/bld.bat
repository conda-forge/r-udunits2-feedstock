REM set PKG_LIBS="-L%LIBRARY_LIB:\=/% -ludunits2 -lexpat"
REM set PKG_CPPFLAGS="-I%LIBRARY_INC:\=/%"
set PKG_LIBS=-ludunits2 -lexpat
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
