fontmake -o variable -g AdventPro.glyphs

rm -rf instance_ufo
rm -rf master_ufo
mv variable_ttf/AdventPro-VF.ttf AdventPro-VF.ttf
rm -rf variable_ttf

gftools fix-nonhinting AdventPro-VF.ttf AdventPro-VF.ttf
gftools fix-dsig --autofix AdventPro-VF.ttf
gftools fix-gasp AdventPro-VF.ttf
rm -rf AdventPro-VF-backup-fonttools-prep-gasp.ttf