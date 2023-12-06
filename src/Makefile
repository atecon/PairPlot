PKG = PairPlot

$(PKG).gfn: $(PKG).inp $(PKG).spec $(PKG)_sample.inp
	fold -s -w 80 $(PKG)_help.txt | tee $(PKG)_help.txt
	gretlcli --makepkg $(PKG).inp

$(PKG).zip: $(PKG).gfn iris.gdt
	echo makepkg $(PKG).zip | gretlcli -b -

#  Only if the manual is a pdf file or you provide an external dataset
install: $(PKG).zip
	echo pkg install $(PKG).zip --local | gretlcli -b -

clean:
	rm -f $(PKG).gfn
