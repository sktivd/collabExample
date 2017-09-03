dnl A user-specifiable option

dnl Optional include paths

dnl Optional library paths

dnl Compiler options
if test -z "${R_HOME}"; then 
	echo "could not determine R_HOME"
	exit 1
fi
CC==‘"${R_HOME}/bin/R" CMD config CC‘
CPP=‘"${R_HOME}/bin/R" CMD config CPP‘
CFLAGS=‘"${R_HOME}/bin/R" CMD config CFLAGS‘
CPPFLAGS=‘"${R_HOME}/bin/R" CMD config CPPFLAGS‘
AC_PROG_CC
AC_PROG_CPP

dnl substitute LIBS
AC_SUBST(LIBS)

dnl substitution in the src/Makevars.in and src/config.h
AC_CONFIG_HEADERS([src/config.h])
AC_CONFIG_FILES([src/Makevars])

AC_OUTPUT