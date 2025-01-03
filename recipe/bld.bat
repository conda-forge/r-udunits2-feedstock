set PKG_LIBS="-Wl,--no-as-needed -L%LIBRARY_LIB:\=/% -ludunits2 -lexpat"
set PKG_CPPFLAGS="-I%LIBRARY_INC:\=/%"
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
