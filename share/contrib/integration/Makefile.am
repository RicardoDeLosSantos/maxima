all-local: info

info: abs_integrate.info integration-index.lisp

abs_integrate.info: abs_integrate.texi
	makeinfo $<

integration-index.lisp: abs_integrate.info
	perl  $(top_srcdir)/doc/info/build_index.pl $< > $@

info_TEXINFOS = abs_integrate.texi

EXTRA_DIST = integration-index.lisp
