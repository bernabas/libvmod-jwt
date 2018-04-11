AM_CFLAGS = $(VARNISHAPI_CFLAGS) -Wall -Werror
AM_LDFLAGS = $(VARNISHAPI_LIBS) $(VMOD_LDFLAGS)

vmod_LTLIBRARIES = libvmod_jwt.la

libvmod_jwt_la_SOURCES = \
	vmod_jwt.c

nodist_libvmod_jwt_la_SOURCES = \
	vcc_jwt_if.c \
	vcc_jwt_if.h

dist_man_MANS = vmod_jwt.3

@BUILD_VMOD_JWT@

AM_TESTS_ENVIRONMENT = \
	PATH="$(VMOD_TEST_PATH)" \
	LD_LIBRARY_PATH="$(VARNISH_LIBRARY_PATH)"
TEST_EXTENSIONS = .vtc
VTC_LOG_COMPILER = varnishtest -v
AM_VTC_LOG_FLAGS = -Dvmod_jwt="$(VMOD_JWT)"

TESTS = @VMOD_TESTS@

EXTRA_DIST = \
	vmod_jwt.vcc \
	$(VMOD_TESTS)
