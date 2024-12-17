#
# Makefile for I-D's and RFCs
# $Id: Makefile,v 1.1.1.1 2002-11-11 05:11:48 randy Exp $
#
NAME=draft-spaghetti-sidrops-rpki-rsm
MOD=RpkiSignedMessage-2025

.PHONY: all
all: drafts asn1

.PHONY: drafts
drafts: $(NAME).txt

$(NAME).txt: $(NAME).xml
	xml2rfc $(NAME).xml --html --text --expand

clean:
	rm -f *.html *.txt
