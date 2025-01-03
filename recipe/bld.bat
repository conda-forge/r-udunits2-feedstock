set PKG_LIBS="-L%LIBRARY_LIB:\=/% -ludunits2 -lexpat -Wl,--allow-shlib-undefined"
set PKG_CPPFLAGS="-I%LIBRARY_INC:\=/%"
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
