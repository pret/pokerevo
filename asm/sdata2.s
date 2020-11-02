.include "macros.inc"

.section .sdata2, "wa"  # 0x80640600 - 0x80643020

.global lbl_80640600
lbl_80640600:
	.incbin "baserom.dol", 0x472620, 0x8
.global lbl_80640608
lbl_80640608:
	.incbin "baserom.dol", 0x472628, 0x8
.global lbl_80640610
lbl_80640610:
	.incbin "baserom.dol", 0x472630, 0x4
.global lbl_80640614
lbl_80640614:
	.incbin "baserom.dol", 0x472634, 0x4
.global lbl_80640618
lbl_80640618:
	.incbin "baserom.dol", 0x472638, 0x8
.global lbl_80640620
lbl_80640620:
	.incbin "baserom.dol", 0x472640, 0x4
.global lbl_80640624
lbl_80640624:
	.incbin "baserom.dol", 0x472644, 0x4
.global lbl_80640628
lbl_80640628:
	.incbin "baserom.dol", 0x472648, 0x4
.global lbl_8064062C
lbl_8064062C:
	.incbin "baserom.dol", 0x47264C, 0x4
.global lbl_80640630
lbl_80640630:
	.incbin "baserom.dol", 0x472650, 0x4
.global lbl_80640634
lbl_80640634:
	.incbin "baserom.dol", 0x472654, 0x4
.global lbl_80640638
lbl_80640638:
	.incbin "baserom.dol", 0x472658, 0x4
.global lbl_8064063C
lbl_8064063C:
	.incbin "baserom.dol", 0x47265C, 0x4
.global lbl_80640640
lbl_80640640:
	.incbin "baserom.dol", 0x472660, 0x4
.global lbl_80640644
lbl_80640644:
	.incbin "baserom.dol", 0x472664, 0x4
.global lbl_80640648
lbl_80640648:
	.incbin "baserom.dol", 0x472668, 0x1
.global lbl_80640649
lbl_80640649:
	.incbin "baserom.dol", 0x472669, 0x1
.global lbl_8064064A
lbl_8064064A:
	.incbin "baserom.dol", 0x47266A, 0x2
.global lbl_8064064C
lbl_8064064C:
	.incbin "baserom.dol", 0x47266C, 0x4
.global lbl_80640650
lbl_80640650:
	.incbin "baserom.dol", 0x472670, 0x4
.global lbl_80640654
lbl_80640654:
	.incbin "baserom.dol", 0x472674, 0x4
.global lbl_80640658
lbl_80640658:
	.incbin "baserom.dol", 0x472678, 0x4
.global lbl_8064065C
lbl_8064065C:
	.incbin "baserom.dol", 0x47267C, 0x4
.global lbl_80640660
lbl_80640660:
	.incbin "baserom.dol", 0x472680, 0x8
.global lbl_80640668
lbl_80640668:
	.incbin "baserom.dol", 0x472688, 0x8
.global lbl_80640670
lbl_80640670:
	.incbin "baserom.dol", 0x472690, 0x8
.global lbl_80640678
lbl_80640678:
	.incbin "baserom.dol", 0x472698, 0x4
.global lbl_8064067C
lbl_8064067C:
	.incbin "baserom.dol", 0x47269C, 0x4
.global lbl_80640680
lbl_80640680:
	.incbin "baserom.dol", 0x4726A0, 0x4
.global lbl_80640684
lbl_80640684:
	.incbin "baserom.dol", 0x4726A4, 0x4
.global lbl_80640688
lbl_80640688:
	.incbin "baserom.dol", 0x4726A8, 0x4
.global lbl_8064068C
lbl_8064068C:
	.incbin "baserom.dol", 0x4726AC, 0x4
.global lbl_80640690
lbl_80640690:
	.incbin "baserom.dol", 0x4726B0, 0x4
.global lbl_80640694
lbl_80640694:
	.incbin "baserom.dol", 0x4726B4, 0x4
.global lbl_80640698
lbl_80640698:
	.incbin "baserom.dol", 0x4726B8, 0x4
.global lbl_8064069C
lbl_8064069C:
	.incbin "baserom.dol", 0x4726BC, 0x4
.global lbl_806406A0
lbl_806406A0:
	.incbin "baserom.dol", 0x4726C0, 0x8
.global lbl_806406A8
lbl_806406A8:
	.incbin "baserom.dol", 0x4726C8, 0x8
.global lbl_806406B0
lbl_806406B0:
	.incbin "baserom.dol", 0x4726D0, 0x8
.global lbl_806406B8
lbl_806406B8:
	.incbin "baserom.dol", 0x4726D8, 0x8
.global lbl_806406C0
lbl_806406C0:
	.incbin "baserom.dol", 0x4726E0, 0x4
.global lbl_806406C4
lbl_806406C4:
	.incbin "baserom.dol", 0x4726E4, 0x4
.global lbl_806406C8
lbl_806406C8:
	.incbin "baserom.dol", 0x4726E8, 0x4
.global lbl_806406CC
lbl_806406CC:
	.incbin "baserom.dol", 0x4726EC, 0x4
.global lbl_806406D0
lbl_806406D0:
	.incbin "baserom.dol", 0x4726F0, 0x4
.global lbl_806406D4
lbl_806406D4:
	.incbin "baserom.dol", 0x4726F4, 0x4
.global lbl_806406D8
lbl_806406D8:
	.incbin "baserom.dol", 0x4726F8, 0x4
.global lbl_806406DC
lbl_806406DC:
	.incbin "baserom.dol", 0x4726FC, 0x4
.global lbl_806406E0
lbl_806406E0:
	.incbin "baserom.dol", 0x472700, 0x8
.global lbl_806406E8
lbl_806406E8:
	.incbin "baserom.dol", 0x472708, 0x4
.global lbl_806406EC
lbl_806406EC:
	.incbin "baserom.dol", 0x47270C, 0x4
.global lbl_806406F0
lbl_806406F0:
	.incbin "baserom.dol", 0x472710, 0x8
.global lbl_806406F8
lbl_806406F8:
	.incbin "baserom.dol", 0x472718, 0x8
.global lbl_80640700
lbl_80640700:
	.incbin "baserom.dol", 0x472720, 0x4
.global lbl_80640704
lbl_80640704:
	.incbin "baserom.dol", 0x472724, 0x4
.global lbl_80640708
lbl_80640708:
	.incbin "baserom.dol", 0x472728, 0x4
.global lbl_8064070C
lbl_8064070C:
	.incbin "baserom.dol", 0x47272C, 0x4
.global lbl_80640710
lbl_80640710:
	.incbin "baserom.dol", 0x472730, 0x8
.global lbl_80640718
lbl_80640718:
	.incbin "baserom.dol", 0x472738, 0x8
.global lbl_80640720
lbl_80640720:
	.incbin "baserom.dol", 0x472740, 0x8
.global lbl_80640728
lbl_80640728:
	.incbin "baserom.dol", 0x472748, 0x8
.global lbl_80640730
lbl_80640730:
	.incbin "baserom.dol", 0x472750, 0x8
.global lbl_80640738
lbl_80640738:
	.incbin "baserom.dol", 0x472758, 0x4
.global lbl_8064073C
lbl_8064073C:
	.incbin "baserom.dol", 0x47275C, 0x4
.global lbl_80640740
lbl_80640740:
	.incbin "baserom.dol", 0x472760, 0x8
.global lbl_80640748
lbl_80640748:
	.incbin "baserom.dol", 0x472768, 0x4
.global lbl_8064074C
lbl_8064074C:
	.incbin "baserom.dol", 0x47276C, 0x4
.global lbl_80640750
lbl_80640750:
	.incbin "baserom.dol", 0x472770, 0x4
.global lbl_80640754
lbl_80640754:
	.incbin "baserom.dol", 0x472774, 0x4
.global lbl_80640758
lbl_80640758:
	.incbin "baserom.dol", 0x472778, 0x4
.global lbl_8064075C
lbl_8064075C:
	.incbin "baserom.dol", 0x47277C, 0x4
.global lbl_80640760
lbl_80640760:
	.incbin "baserom.dol", 0x472780, 0x8
.global lbl_80640768
lbl_80640768:
	.incbin "baserom.dol", 0x472788, 0x8
.global lbl_80640770
lbl_80640770:
	.incbin "baserom.dol", 0x472790, 0x8
.global lbl_80640778
lbl_80640778:
	.incbin "baserom.dol", 0x472798, 0x8
.global lbl_80640780
lbl_80640780:
	.incbin "baserom.dol", 0x4727A0, 0x8
.global lbl_80640788
lbl_80640788:
	.incbin "baserom.dol", 0x4727A8, 0x4
.global lbl_8064078C
lbl_8064078C:
	.incbin "baserom.dol", 0x4727AC, 0x4
.global lbl_80640790
lbl_80640790:
	.incbin "baserom.dol", 0x4727B0, 0x4
.global lbl_80640794
lbl_80640794:
	.incbin "baserom.dol", 0x4727B4, 0x4
.global lbl_80640798
lbl_80640798:
	.incbin "baserom.dol", 0x4727B8, 0x8
.global lbl_806407A0
lbl_806407A0:
	.incbin "baserom.dol", 0x4727C0, 0x8
.global lbl_806407A8
lbl_806407A8:
	.incbin "baserom.dol", 0x4727C8, 0x8
.global lbl_806407B0
lbl_806407B0:
	.incbin "baserom.dol", 0x4727D0, 0x8
.global lbl_806407B8
lbl_806407B8:
	.incbin "baserom.dol", 0x4727D8, 0x8
.global lbl_806407C0
lbl_806407C0:
	.incbin "baserom.dol", 0x4727E0, 0x8
.global lbl_806407C8
lbl_806407C8:
	.incbin "baserom.dol", 0x4727E8, 0x4
.global lbl_806407CC
lbl_806407CC:
	.incbin "baserom.dol", 0x4727EC, 0x4
.global lbl_806407D0
lbl_806407D0:
	.incbin "baserom.dol", 0x4727F0, 0x4
.global lbl_806407D4
lbl_806407D4:
	.incbin "baserom.dol", 0x4727F4, 0x4
.global lbl_806407D8
lbl_806407D8:
	.incbin "baserom.dol", 0x4727F8, 0x4
.global lbl_806407DC
lbl_806407DC:
	.incbin "baserom.dol", 0x4727FC, 0x4
.global lbl_806407E0
lbl_806407E0:
	.incbin "baserom.dol", 0x472800, 0x4
.global lbl_806407E4
lbl_806407E4:
	.incbin "baserom.dol", 0x472804, 0x4
.global lbl_806407E8
lbl_806407E8:
	.incbin "baserom.dol", 0x472808, 0x4
.global lbl_806407EC
lbl_806407EC:
	.incbin "baserom.dol", 0x47280C, 0x4
.global lbl_806407F0
lbl_806407F0:
	.incbin "baserom.dol", 0x472810, 0x4
.global lbl_806407F4
lbl_806407F4:
	.incbin "baserom.dol", 0x472814, 0x4
.global lbl_806407F8
lbl_806407F8:
	.incbin "baserom.dol", 0x472818, 0x8
.global lbl_80640800
lbl_80640800:
	.incbin "baserom.dol", 0x472820, 0x8
.global lbl_80640808
lbl_80640808:
	.incbin "baserom.dol", 0x472828, 0x4
.global lbl_8064080C
lbl_8064080C:
	.incbin "baserom.dol", 0x47282C, 0x4
.global lbl_80640810
lbl_80640810:
	.incbin "baserom.dol", 0x472830, 0x8
.global lbl_80640818
lbl_80640818:
	.incbin "baserom.dol", 0x472838, 0x8
.global lbl_80640820
lbl_80640820:
	.incbin "baserom.dol", 0x472840, 0x4
.global lbl_80640824
lbl_80640824:
	.incbin "baserom.dol", 0x472844, 0x4
.global lbl_80640828
lbl_80640828:
	.incbin "baserom.dol", 0x472848, 0x4
.global lbl_8064082C
lbl_8064082C:
	.incbin "baserom.dol", 0x47284C, 0x4
.global lbl_80640830
lbl_80640830:
	.incbin "baserom.dol", 0x472850, 0x4
.global lbl_80640834
lbl_80640834:
	.incbin "baserom.dol", 0x472854, 0x4
.global lbl_80640838
lbl_80640838:
	.incbin "baserom.dol", 0x472858, 0x4
.global lbl_8064083C
lbl_8064083C:
	.incbin "baserom.dol", 0x47285C, 0x4
.global lbl_80640840
lbl_80640840:
	.incbin "baserom.dol", 0x472860, 0x4
.global lbl_80640844
lbl_80640844:
	.incbin "baserom.dol", 0x472864, 0x4
.global lbl_80640848
lbl_80640848:
	.incbin "baserom.dol", 0x472868, 0x4
.global lbl_8064084C
lbl_8064084C:
	.incbin "baserom.dol", 0x47286C, 0x4
.global lbl_80640850
lbl_80640850:
	.incbin "baserom.dol", 0x472870, 0x8
.global lbl_80640858
lbl_80640858:
	.incbin "baserom.dol", 0x472878, 0x4
.global lbl_8064085C
lbl_8064085C:
	.incbin "baserom.dol", 0x47287C, 0x4
.global lbl_80640860
lbl_80640860:
	.incbin "baserom.dol", 0x472880, 0x4
.global lbl_80640864
lbl_80640864:
	.incbin "baserom.dol", 0x472884, 0x4
.global lbl_80640868
lbl_80640868:
	.incbin "baserom.dol", 0x472888, 0x8
.global lbl_80640870
lbl_80640870:
	.incbin "baserom.dol", 0x472890, 0x4
.global lbl_80640874
lbl_80640874:
	.incbin "baserom.dol", 0x472894, 0x4
.global lbl_80640878
lbl_80640878:
	.incbin "baserom.dol", 0x472898, 0x4
.global lbl_8064087C
lbl_8064087C:
	.incbin "baserom.dol", 0x47289C, 0x4
.global lbl_80640880
lbl_80640880:
	.incbin "baserom.dol", 0x4728A0, 0x4
.global lbl_80640884
lbl_80640884:
	.incbin "baserom.dol", 0x4728A4, 0x4
.global lbl_80640888
lbl_80640888:
	.incbin "baserom.dol", 0x4728A8, 0x4
.global lbl_8064088C
lbl_8064088C:
	.incbin "baserom.dol", 0x4728AC, 0x4
.global lbl_80640890
lbl_80640890:
	.incbin "baserom.dol", 0x4728B0, 0x4
.global lbl_80640894
lbl_80640894:
	.incbin "baserom.dol", 0x4728B4, 0x4
.global lbl_80640898
lbl_80640898:
	.incbin "baserom.dol", 0x4728B8, 0x4
.global lbl_8064089C
lbl_8064089C:
	.incbin "baserom.dol", 0x4728BC, 0x4
.global lbl_806408A0
lbl_806408A0:
	.incbin "baserom.dol", 0x4728C0, 0x4
.global lbl_806408A4
lbl_806408A4:
	.incbin "baserom.dol", 0x4728C4, 0x4
.global lbl_806408A8
lbl_806408A8:
	.incbin "baserom.dol", 0x4728C8, 0x4
.global lbl_806408AC
lbl_806408AC:
	.incbin "baserom.dol", 0x4728CC, 0x4
.global lbl_806408B0
lbl_806408B0:
	.incbin "baserom.dol", 0x4728D0, 0x4
.global lbl_806408B4
lbl_806408B4:
	.incbin "baserom.dol", 0x4728D4, 0x4
.global lbl_806408B8
lbl_806408B8:
	.incbin "baserom.dol", 0x4728D8, 0x4
.global lbl_806408BC
lbl_806408BC:
	.incbin "baserom.dol", 0x4728DC, 0x4
.global lbl_806408C0
lbl_806408C0:
	.incbin "baserom.dol", 0x4728E0, 0x8
.global lbl_806408C8
lbl_806408C8:
	.incbin "baserom.dol", 0x4728E8, 0x4
.global lbl_806408CC
lbl_806408CC:
	.incbin "baserom.dol", 0x4728EC, 0x4
.global lbl_806408D0
lbl_806408D0:
	.incbin "baserom.dol", 0x4728F0, 0x4
.global lbl_806408D4
lbl_806408D4:
	.incbin "baserom.dol", 0x4728F4, 0x4
.global lbl_806408D8
lbl_806408D8:
	.incbin "baserom.dol", 0x4728F8, 0x4
.global lbl_806408DC
lbl_806408DC:
	.incbin "baserom.dol", 0x4728FC, 0x4
.global lbl_806408E0
lbl_806408E0:
	.incbin "baserom.dol", 0x472900, 0x4
.global lbl_806408E4
lbl_806408E4:
	.incbin "baserom.dol", 0x472904, 0x4
.global lbl_806408E8
lbl_806408E8:
	.incbin "baserom.dol", 0x472908, 0x4
.global lbl_806408EC
lbl_806408EC:
	.incbin "baserom.dol", 0x47290C, 0x4
.global lbl_806408F0
lbl_806408F0:
	.incbin "baserom.dol", 0x472910, 0x4
.global lbl_806408F4
lbl_806408F4:
	.incbin "baserom.dol", 0x472914, 0x4
.global lbl_806408F8
lbl_806408F8:
	.incbin "baserom.dol", 0x472918, 0x4
.global lbl_806408FC
lbl_806408FC:
	.incbin "baserom.dol", 0x47291C, 0x4
.global lbl_80640900
lbl_80640900:
	.incbin "baserom.dol", 0x472920, 0x8
.global lbl_80640908
lbl_80640908:
	.incbin "baserom.dol", 0x472928, 0x8
.global lbl_80640910
lbl_80640910:
	.incbin "baserom.dol", 0x472930, 0x4
.global lbl_80640914
lbl_80640914:
	.incbin "baserom.dol", 0x472934, 0x4
.global lbl_80640918
lbl_80640918:
	.incbin "baserom.dol", 0x472938, 0x8
.global lbl_80640920
lbl_80640920:
	.incbin "baserom.dol", 0x472940, 0x8
.global lbl_80640928
lbl_80640928:
	.incbin "baserom.dol", 0x472948, 0x4
.global lbl_8064092C
lbl_8064092C:
	.incbin "baserom.dol", 0x47294C, 0x4
.global lbl_80640930
lbl_80640930:
	.incbin "baserom.dol", 0x472950, 0x8
.global lbl_80640938
lbl_80640938:
	.incbin "baserom.dol", 0x472958, 0x8
.global lbl_80640940
lbl_80640940:
	.incbin "baserom.dol", 0x472960, 0x4
.global lbl_80640944
lbl_80640944:
	.incbin "baserom.dol", 0x472964, 0x4
.global lbl_80640948
lbl_80640948:
	.incbin "baserom.dol", 0x472968, 0x8
.global lbl_80640950
lbl_80640950:
	.incbin "baserom.dol", 0x472970, 0x4
.global lbl_80640954
lbl_80640954:
	.incbin "baserom.dol", 0x472974, 0x4
.global lbl_80640958
lbl_80640958:
	.incbin "baserom.dol", 0x472978, 0x4
.global lbl_8064095C
lbl_8064095C:
	.incbin "baserom.dol", 0x47297C, 0x4
.global lbl_80640960
lbl_80640960:
	.incbin "baserom.dol", 0x472980, 0x4
.global lbl_80640964
lbl_80640964:
	.incbin "baserom.dol", 0x472984, 0x4
.global lbl_80640968
lbl_80640968:
	.incbin "baserom.dol", 0x472988, 0x4
.global lbl_8064096C
lbl_8064096C:
	.incbin "baserom.dol", 0x47298C, 0x4
.global lbl_80640970
lbl_80640970:
	.incbin "baserom.dol", 0x472990, 0x8
.global lbl_80640978
lbl_80640978:
	.incbin "baserom.dol", 0x472998, 0x8
.global lbl_80640980
lbl_80640980:
	.incbin "baserom.dol", 0x4729A0, 0x8
.global lbl_80640988
lbl_80640988:
	.incbin "baserom.dol", 0x4729A8, 0x4
.global lbl_8064098C
lbl_8064098C:
	.incbin "baserom.dol", 0x4729AC, 0x4
.global lbl_80640990
lbl_80640990:
	.incbin "baserom.dol", 0x4729B0, 0x4
.global lbl_80640994
lbl_80640994:
	.incbin "baserom.dol", 0x4729B4, 0x4
.global lbl_80640998
lbl_80640998:
	.incbin "baserom.dol", 0x4729B8, 0x4
.global lbl_8064099C
lbl_8064099C:
	.incbin "baserom.dol", 0x4729BC, 0x4
.global lbl_806409A0
lbl_806409A0:
	.incbin "baserom.dol", 0x4729C0, 0x4
.global lbl_806409A4
lbl_806409A4:
	.incbin "baserom.dol", 0x4729C4, 0x4
.global lbl_806409A8
lbl_806409A8:
	.incbin "baserom.dol", 0x4729C8, 0x4
.global lbl_806409AC
lbl_806409AC:
	.incbin "baserom.dol", 0x4729CC, 0x4
.global lbl_806409B0
lbl_806409B0:
	.incbin "baserom.dol", 0x4729D0, 0x4
.global lbl_806409B4
lbl_806409B4:
	.incbin "baserom.dol", 0x4729D4, 0x4
.global lbl_806409B8
lbl_806409B8:
	.incbin "baserom.dol", 0x4729D8, 0x8
.global lbl_806409C0
lbl_806409C0:
	.incbin "baserom.dol", 0x4729E0, 0x4
.global lbl_806409C4
lbl_806409C4:
	.incbin "baserom.dol", 0x4729E4, 0x4
.global lbl_806409C8
lbl_806409C8:
	.incbin "baserom.dol", 0x4729E8, 0x4
.global lbl_806409CC
lbl_806409CC:
	.incbin "baserom.dol", 0x4729EC, 0x4
.global lbl_806409D0
lbl_806409D0:
	.incbin "baserom.dol", 0x4729F0, 0x4
.global lbl_806409D4
lbl_806409D4:
	.incbin "baserom.dol", 0x4729F4, 0x4
.global lbl_806409D8
lbl_806409D8:
	.incbin "baserom.dol", 0x4729F8, 0x4
.global lbl_806409DC
lbl_806409DC:
	.incbin "baserom.dol", 0x4729FC, 0x4
.global lbl_806409E0
lbl_806409E0:
	.incbin "baserom.dol", 0x472A00, 0x8
.global lbl_806409E8
lbl_806409E8:
	.incbin "baserom.dol", 0x472A08, 0x8
.global lbl_806409F0
lbl_806409F0:
	.incbin "baserom.dol", 0x472A10, 0x8
.global lbl_806409F8
lbl_806409F8:
	.incbin "baserom.dol", 0x472A18, 0x4
.global lbl_806409FC
lbl_806409FC:
	.incbin "baserom.dol", 0x472A1C, 0x4
.global lbl_80640A00
lbl_80640A00:
	.incbin "baserom.dol", 0x472A20, 0x4
.global lbl_80640A04
lbl_80640A04:
	.incbin "baserom.dol", 0x472A24, 0x4
.global lbl_80640A08
lbl_80640A08:
	.incbin "baserom.dol", 0x472A28, 0x4
.global lbl_80640A0C
lbl_80640A0C:
	.incbin "baserom.dol", 0x472A2C, 0x4
.global lbl_80640A10
lbl_80640A10:
	.incbin "baserom.dol", 0x472A30, 0x4
.global lbl_80640A14
lbl_80640A14:
	.incbin "baserom.dol", 0x472A34, 0x4
.global lbl_80640A18
lbl_80640A18:
	.incbin "baserom.dol", 0x472A38, 0x4
.global lbl_80640A1C
lbl_80640A1C:
	.incbin "baserom.dol", 0x472A3C, 0x4
.global lbl_80640A20
lbl_80640A20:
	.incbin "baserom.dol", 0x472A40, 0x4
.global lbl_80640A24
lbl_80640A24:
	.incbin "baserom.dol", 0x472A44, 0x4
.global lbl_80640A28
lbl_80640A28:
	.incbin "baserom.dol", 0x472A48, 0x4
.global lbl_80640A2C
lbl_80640A2C:
	.incbin "baserom.dol", 0x472A4C, 0x4
.global lbl_80640A30
lbl_80640A30:
	.incbin "baserom.dol", 0x472A50, 0x4
.global lbl_80640A34
lbl_80640A34:
	.incbin "baserom.dol", 0x472A54, 0x4
.global lbl_80640A38
lbl_80640A38:
	.incbin "baserom.dol", 0x472A58, 0x4
.global lbl_80640A3C
lbl_80640A3C:
	.incbin "baserom.dol", 0x472A5C, 0x4
.global lbl_80640A40
lbl_80640A40:
	.incbin "baserom.dol", 0x472A60, 0x8
.global lbl_80640A48
lbl_80640A48:
	.incbin "baserom.dol", 0x472A68, 0x8
.global lbl_80640A50
lbl_80640A50:
	.incbin "baserom.dol", 0x472A70, 0x8
.global lbl_80640A58
lbl_80640A58:
	.incbin "baserom.dol", 0x472A78, 0x4
.global lbl_80640A5C
lbl_80640A5C:
	.incbin "baserom.dol", 0x472A7C, 0x4
.global lbl_80640A60
lbl_80640A60:
	.incbin "baserom.dol", 0x472A80, 0x8
.global lbl_80640A68
lbl_80640A68:
	.incbin "baserom.dol", 0x472A88, 0x4
.global lbl_80640A6C
lbl_80640A6C:
	.incbin "baserom.dol", 0x472A8C, 0x4
.global lbl_80640A70
lbl_80640A70:
	.incbin "baserom.dol", 0x472A90, 0x4
.global lbl_80640A74
lbl_80640A74:
	.incbin "baserom.dol", 0x472A94, 0x4
.global lbl_80640A78
lbl_80640A78:
	.incbin "baserom.dol", 0x472A98, 0x8
.global lbl_80640A80
lbl_80640A80:
	.incbin "baserom.dol", 0x472AA0, 0x4
.global lbl_80640A84
lbl_80640A84:
	.incbin "baserom.dol", 0x472AA4, 0x4
.global lbl_80640A88
lbl_80640A88:
	.incbin "baserom.dol", 0x472AA8, 0x4
.global lbl_80640A8C
lbl_80640A8C:
	.incbin "baserom.dol", 0x472AAC, 0x4
.global lbl_80640A90
lbl_80640A90:
	.incbin "baserom.dol", 0x472AB0, 0x4
.global lbl_80640A94
lbl_80640A94:
	.incbin "baserom.dol", 0x472AB4, 0x4
.global lbl_80640A98
lbl_80640A98:
	.incbin "baserom.dol", 0x472AB8, 0x8
.global lbl_80640AA0
lbl_80640AA0:
	.incbin "baserom.dol", 0x472AC0, 0x8
.global lbl_80640AA8
lbl_80640AA8:
	.incbin "baserom.dol", 0x472AC8, 0x4
.global lbl_80640AAC
lbl_80640AAC:
	.incbin "baserom.dol", 0x472ACC, 0x4
.global lbl_80640AB0
lbl_80640AB0:
	.incbin "baserom.dol", 0x472AD0, 0x4
.global lbl_80640AB4
lbl_80640AB4:
	.incbin "baserom.dol", 0x472AD4, 0x4
.global lbl_80640AB8
lbl_80640AB8:
	.incbin "baserom.dol", 0x472AD8, 0x4
.global lbl_80640ABC
lbl_80640ABC:
	.incbin "baserom.dol", 0x472ADC, 0x4
.global lbl_80640AC0
lbl_80640AC0:
	.incbin "baserom.dol", 0x472AE0, 0x8
.global lbl_80640AC8
lbl_80640AC8:
	.incbin "baserom.dol", 0x472AE8, 0x4
.global lbl_80640ACC
lbl_80640ACC:
	.incbin "baserom.dol", 0x472AEC, 0x4
.global lbl_80640AD0
lbl_80640AD0:
	.incbin "baserom.dol", 0x472AF0, 0x4
.global lbl_80640AD4
lbl_80640AD4:
	.incbin "baserom.dol", 0x472AF4, 0x4
.global lbl_80640AD8
lbl_80640AD8:
	.incbin "baserom.dol", 0x472AF8, 0x4
.global lbl_80640ADC
lbl_80640ADC:
	.incbin "baserom.dol", 0x472AFC, 0x4
.global lbl_80640AE0
lbl_80640AE0:
	.incbin "baserom.dol", 0x472B00, 0x8
.global lbl_80640AE8
lbl_80640AE8:
	.incbin "baserom.dol", 0x472B08, 0x4
.global lbl_80640AEC
lbl_80640AEC:
	.incbin "baserom.dol", 0x472B0C, 0x4
.global lbl_80640AF0
lbl_80640AF0:
	.incbin "baserom.dol", 0x472B10, 0x8
.global lbl_80640AF8
lbl_80640AF8:
	.incbin "baserom.dol", 0x472B18, 0x8
.global lbl_80640B00
lbl_80640B00:
	.incbin "baserom.dol", 0x472B20, 0x4
.global lbl_80640B04
lbl_80640B04:
	.incbin "baserom.dol", 0x472B24, 0x4
.global lbl_80640B08
lbl_80640B08:
	.incbin "baserom.dol", 0x472B28, 0x4
.global lbl_80640B0C
lbl_80640B0C:
	.incbin "baserom.dol", 0x472B2C, 0x4
.global lbl_80640B10
lbl_80640B10:
	.incbin "baserom.dol", 0x472B30, 0x8
.global lbl_80640B18
lbl_80640B18:
	.incbin "baserom.dol", 0x472B38, 0x8
.global lbl_80640B20
lbl_80640B20:
	.incbin "baserom.dol", 0x472B40, 0x4
.global lbl_80640B24
lbl_80640B24:
	.incbin "baserom.dol", 0x472B44, 0x4
.global lbl_80640B28
lbl_80640B28:
	.incbin "baserom.dol", 0x472B48, 0x8
.global lbl_80640B30
lbl_80640B30:
	.incbin "baserom.dol", 0x472B50, 0x8
.global lbl_80640B38
lbl_80640B38:
	.incbin "baserom.dol", 0x472B58, 0x4
.global lbl_80640B3C
lbl_80640B3C:
	.incbin "baserom.dol", 0x472B5C, 0x4
.global lbl_80640B40
lbl_80640B40:
	.incbin "baserom.dol", 0x472B60, 0x4
.global lbl_80640B44
lbl_80640B44:
	.incbin "baserom.dol", 0x472B64, 0x4
.global lbl_80640B48
lbl_80640B48:
	.incbin "baserom.dol", 0x472B68, 0x4
.global lbl_80640B4C
lbl_80640B4C:
	.incbin "baserom.dol", 0x472B6C, 0x4
.global lbl_80640B50
lbl_80640B50:
	.incbin "baserom.dol", 0x472B70, 0x4
.global lbl_80640B54
lbl_80640B54:
	.incbin "baserom.dol", 0x472B74, 0x4
.global lbl_80640B58
lbl_80640B58:
	.incbin "baserom.dol", 0x472B78, 0x8
.global lbl_80640B60
lbl_80640B60:
	.incbin "baserom.dol", 0x472B80, 0x4
.global lbl_80640B64
lbl_80640B64:
	.incbin "baserom.dol", 0x472B84, 0x4
.global lbl_80640B68
lbl_80640B68:
	.incbin "baserom.dol", 0x472B88, 0x4
.global lbl_80640B6C
lbl_80640B6C:
	.incbin "baserom.dol", 0x472B8C, 0x4
.global lbl_80640B70
lbl_80640B70:
	.incbin "baserom.dol", 0x472B90, 0x4
.global lbl_80640B74
lbl_80640B74:
	.incbin "baserom.dol", 0x472B94, 0x4
.global lbl_80640B78
lbl_80640B78:
	.incbin "baserom.dol", 0x472B98, 0x4
.global lbl_80640B7C
lbl_80640B7C:
	.incbin "baserom.dol", 0x472B9C, 0x4
.global lbl_80640B80
lbl_80640B80:
	.incbin "baserom.dol", 0x472BA0, 0x4
.global lbl_80640B84
lbl_80640B84:
	.incbin "baserom.dol", 0x472BA4, 0x4
.global lbl_80640B88
lbl_80640B88:
	.incbin "baserom.dol", 0x472BA8, 0x4
.global lbl_80640B8C
lbl_80640B8C:
	.incbin "baserom.dol", 0x472BAC, 0x4
.global lbl_80640B90
lbl_80640B90:
	.incbin "baserom.dol", 0x472BB0, 0x8
.global lbl_80640B98
lbl_80640B98:
	.incbin "baserom.dol", 0x472BB8, 0x8
.global lbl_80640BA0
lbl_80640BA0:
	.incbin "baserom.dol", 0x472BC0, 0x4
.global lbl_80640BA4
lbl_80640BA4:
	.incbin "baserom.dol", 0x472BC4, 0x4
.global lbl_80640BA8
lbl_80640BA8:
	.incbin "baserom.dol", 0x472BC8, 0x8
.global lbl_80640BB0
lbl_80640BB0:
	.incbin "baserom.dol", 0x472BD0, 0x4
.global lbl_80640BB4
lbl_80640BB4:
	.incbin "baserom.dol", 0x472BD4, 0x4
.global lbl_80640BB8
lbl_80640BB8:
	.incbin "baserom.dol", 0x472BD8, 0x4
.global lbl_80640BBC
lbl_80640BBC:
	.incbin "baserom.dol", 0x472BDC, 0x4
.global lbl_80640BC0
lbl_80640BC0:
	.incbin "baserom.dol", 0x472BE0, 0x4
.global lbl_80640BC4
lbl_80640BC4:
	.incbin "baserom.dol", 0x472BE4, 0x4
.global lbl_80640BC8
lbl_80640BC8:
	.incbin "baserom.dol", 0x472BE8, 0x4
.global lbl_80640BCC
lbl_80640BCC:
	.incbin "baserom.dol", 0x472BEC, 0x4
.global lbl_80640BD0
lbl_80640BD0:
	.incbin "baserom.dol", 0x472BF0, 0x4
.global lbl_80640BD4
lbl_80640BD4:
	.incbin "baserom.dol", 0x472BF4, 0x4
.global lbl_80640BD8
lbl_80640BD8:
	.incbin "baserom.dol", 0x472BF8, 0x8
.global lbl_80640BE0
lbl_80640BE0:
	.incbin "baserom.dol", 0x472C00, 0x4
.global lbl_80640BE4
lbl_80640BE4:
	.incbin "baserom.dol", 0x472C04, 0x4
.global lbl_80640BE8
lbl_80640BE8:
	.incbin "baserom.dol", 0x472C08, 0x8
.global lbl_80640BF0
lbl_80640BF0:
	.incbin "baserom.dol", 0x472C10, 0x8
.global lbl_80640BF8
lbl_80640BF8:
	.incbin "baserom.dol", 0x472C18, 0x8
.global lbl_80640C00
lbl_80640C00:
	.incbin "baserom.dol", 0x472C20, 0x8
.global lbl_80640C08
lbl_80640C08:
	.incbin "baserom.dol", 0x472C28, 0x8
.global lbl_80640C10
lbl_80640C10:
	.incbin "baserom.dol", 0x472C30, 0x8
.global lbl_80640C18
lbl_80640C18:
	.incbin "baserom.dol", 0x472C38, 0x4
.global lbl_80640C1C
lbl_80640C1C:
	.incbin "baserom.dol", 0x472C3C, 0x4
.global lbl_80640C20
lbl_80640C20:
	.incbin "baserom.dol", 0x472C40, 0x4
.global lbl_80640C24
lbl_80640C24:
	.incbin "baserom.dol", 0x472C44, 0x4
.global lbl_80640C28
lbl_80640C28:
	.incbin "baserom.dol", 0x472C48, 0x4
.global lbl_80640C2C
lbl_80640C2C:
	.incbin "baserom.dol", 0x472C4C, 0x4
.global lbl_80640C30
lbl_80640C30:
	.incbin "baserom.dol", 0x472C50, 0x8
.global lbl_80640C38
lbl_80640C38:
	.incbin "baserom.dol", 0x472C58, 0x8
.global lbl_80640C40
lbl_80640C40:
	.incbin "baserom.dol", 0x472C60, 0x8
.global lbl_80640C48
lbl_80640C48:
	.incbin "baserom.dol", 0x472C68, 0x4
.global lbl_80640C4C
lbl_80640C4C:
	.incbin "baserom.dol", 0x472C6C, 0x4
.global lbl_80640C50
lbl_80640C50:
	.incbin "baserom.dol", 0x472C70, 0x4
.global lbl_80640C54
lbl_80640C54:
	.incbin "baserom.dol", 0x472C74, 0x4
.global lbl_80640C58
lbl_80640C58:
	.incbin "baserom.dol", 0x472C78, 0x4
.global lbl_80640C5C
lbl_80640C5C:
	.incbin "baserom.dol", 0x472C7C, 0x4
.global lbl_80640C60
lbl_80640C60:
	.incbin "baserom.dol", 0x472C80, 0x8
.global lbl_80640C68
lbl_80640C68:
	.incbin "baserom.dol", 0x472C88, 0x4
.global lbl_80640C6C
lbl_80640C6C:
	.incbin "baserom.dol", 0x472C8C, 0x4
.global lbl_80640C70
lbl_80640C70:
	.incbin "baserom.dol", 0x472C90, 0x4
.global lbl_80640C74
lbl_80640C74:
	.incbin "baserom.dol", 0x472C94, 0x4
.global lbl_80640C78
lbl_80640C78:
	.incbin "baserom.dol", 0x472C98, 0x8
.global lbl_80640C80
lbl_80640C80:
	.incbin "baserom.dol", 0x472CA0, 0x4
.global lbl_80640C84
lbl_80640C84:
	.incbin "baserom.dol", 0x472CA4, 0x4
.global lbl_80640C88
lbl_80640C88:
	.incbin "baserom.dol", 0x472CA8, 0x4
.global lbl_80640C8C
lbl_80640C8C:
	.incbin "baserom.dol", 0x472CAC, 0x4
.global lbl_80640C90
lbl_80640C90:
	.incbin "baserom.dol", 0x472CB0, 0x4
.global lbl_80640C94
lbl_80640C94:
	.incbin "baserom.dol", 0x472CB4, 0x4
.global lbl_80640C98
lbl_80640C98:
	.incbin "baserom.dol", 0x472CB8, 0x8
.global lbl_80640CA0
lbl_80640CA0:
	.incbin "baserom.dol", 0x472CC0, 0x8
.global lbl_80640CA8
lbl_80640CA8:
	.incbin "baserom.dol", 0x472CC8, 0x8
.global lbl_80640CB0
lbl_80640CB0:
	.incbin "baserom.dol", 0x472CD0, 0x4
.global lbl_80640CB4
lbl_80640CB4:
	.incbin "baserom.dol", 0x472CD4, 0x4
.global lbl_80640CB8
lbl_80640CB8:
	.incbin "baserom.dol", 0x472CD8, 0x4
.global lbl_80640CBC
lbl_80640CBC:
	.incbin "baserom.dol", 0x472CDC, 0x4
.global lbl_80640CC0
lbl_80640CC0:
	.incbin "baserom.dol", 0x472CE0, 0x4
.global lbl_80640CC4
lbl_80640CC4:
	.incbin "baserom.dol", 0x472CE4, 0x4
.global lbl_80640CC8
lbl_80640CC8:
	.incbin "baserom.dol", 0x472CE8, 0x4
.global lbl_80640CCC
lbl_80640CCC:
	.incbin "baserom.dol", 0x472CEC, 0x4
.global lbl_80640CD0
lbl_80640CD0:
	.incbin "baserom.dol", 0x472CF0, 0x4
.global lbl_80640CD4
lbl_80640CD4:
	.incbin "baserom.dol", 0x472CF4, 0x4
.global lbl_80640CD8
lbl_80640CD8:
	.incbin "baserom.dol", 0x472CF8, 0x4
.global lbl_80640CDC
lbl_80640CDC:
	.incbin "baserom.dol", 0x472CFC, 0x4
.global lbl_80640CE0
lbl_80640CE0:
	.incbin "baserom.dol", 0x472D00, 0x4
.global lbl_80640CE4
lbl_80640CE4:
	.incbin "baserom.dol", 0x472D04, 0x4
.global lbl_80640CE8
lbl_80640CE8:
	.incbin "baserom.dol", 0x472D08, 0x4
.global lbl_80640CEC
lbl_80640CEC:
	.incbin "baserom.dol", 0x472D0C, 0x4
.global lbl_80640CF0
lbl_80640CF0:
	.incbin "baserom.dol", 0x472D10, 0x4
.global lbl_80640CF4
lbl_80640CF4:
	.incbin "baserom.dol", 0x472D14, 0x4
.global lbl_80640CF8
lbl_80640CF8:
	.incbin "baserom.dol", 0x472D18, 0x4
.global lbl_80640CFC
lbl_80640CFC:
	.incbin "baserom.dol", 0x472D1C, 0x4
.global lbl_80640D00
lbl_80640D00:
	.incbin "baserom.dol", 0x472D20, 0x4
.global lbl_80640D04
lbl_80640D04:
	.incbin "baserom.dol", 0x472D24, 0x4
.global lbl_80640D08
lbl_80640D08:
	.incbin "baserom.dol", 0x472D28, 0x4
.global lbl_80640D0C
lbl_80640D0C:
	.incbin "baserom.dol", 0x472D2C, 0x4
.global lbl_80640D10
lbl_80640D10:
	.incbin "baserom.dol", 0x472D30, 0x4
.global lbl_80640D14
lbl_80640D14:
	.incbin "baserom.dol", 0x472D34, 0x4
.global lbl_80640D18
lbl_80640D18:
	.incbin "baserom.dol", 0x472D38, 0x4
.global lbl_80640D1C
lbl_80640D1C:
	.incbin "baserom.dol", 0x472D3C, 0x4
.global lbl_80640D20
lbl_80640D20:
	.incbin "baserom.dol", 0x472D40, 0x8
.global lbl_80640D28
lbl_80640D28:
	.incbin "baserom.dol", 0x472D48, 0x8
.global lbl_80640D30
lbl_80640D30:
	.incbin "baserom.dol", 0x472D50, 0x4
.global lbl_80640D34
lbl_80640D34:
	.incbin "baserom.dol", 0x472D54, 0x4
.global lbl_80640D38
lbl_80640D38:
	.incbin "baserom.dol", 0x472D58, 0x4
.global lbl_80640D3C
lbl_80640D3C:
	.incbin "baserom.dol", 0x472D5C, 0x4
.global lbl_80640D40
lbl_80640D40:
	.incbin "baserom.dol", 0x472D60, 0x4
.global lbl_80640D44
lbl_80640D44:
	.incbin "baserom.dol", 0x472D64, 0x4
.global lbl_80640D48
lbl_80640D48:
	.incbin "baserom.dol", 0x472D68, 0x4
.global lbl_80640D4C
lbl_80640D4C:
	.incbin "baserom.dol", 0x472D6C, 0x4
.global lbl_80640D50
lbl_80640D50:
	.incbin "baserom.dol", 0x472D70, 0x4
.global lbl_80640D54
lbl_80640D54:
	.incbin "baserom.dol", 0x472D74, 0x4
.global lbl_80640D58
lbl_80640D58:
	.incbin "baserom.dol", 0x472D78, 0x4
.global lbl_80640D5C
lbl_80640D5C:
	.incbin "baserom.dol", 0x472D7C, 0x4
.global lbl_80640D60
lbl_80640D60:
	.incbin "baserom.dol", 0x472D80, 0x4
.global lbl_80640D64
lbl_80640D64:
	.incbin "baserom.dol", 0x472D84, 0x4
.global lbl_80640D68
lbl_80640D68:
	.incbin "baserom.dol", 0x472D88, 0x8
.global lbl_80640D70
lbl_80640D70:
	.incbin "baserom.dol", 0x472D90, 0x8
.global lbl_80640D78
lbl_80640D78:
	.incbin "baserom.dol", 0x472D98, 0x4
.global lbl_80640D7C
lbl_80640D7C:
	.incbin "baserom.dol", 0x472D9C, 0x4
.global lbl_80640D80
lbl_80640D80:
	.incbin "baserom.dol", 0x472DA0, 0x8
.global lbl_80640D88
lbl_80640D88:
	.incbin "baserom.dol", 0x472DA8, 0x4
.global lbl_80640D8C
lbl_80640D8C:
	.incbin "baserom.dol", 0x472DAC, 0x4
.global lbl_80640D90
lbl_80640D90:
	.incbin "baserom.dol", 0x472DB0, 0x8
.global lbl_80640D98
lbl_80640D98:
	.incbin "baserom.dol", 0x472DB8, 0x8
.global lbl_80640DA0
lbl_80640DA0:
	.incbin "baserom.dol", 0x472DC0, 0x4
.global lbl_80640DA4
lbl_80640DA4:
	.incbin "baserom.dol", 0x472DC4, 0x4
.global lbl_80640DA8
lbl_80640DA8:
	.incbin "baserom.dol", 0x472DC8, 0x4
.global lbl_80640DAC
lbl_80640DAC:
	.incbin "baserom.dol", 0x472DCC, 0x4
.global lbl_80640DB0
lbl_80640DB0:
	.incbin "baserom.dol", 0x472DD0, 0x8
.global lbl_80640DB8
lbl_80640DB8:
	.incbin "baserom.dol", 0x472DD8, 0x4
.global lbl_80640DBC
lbl_80640DBC:
	.incbin "baserom.dol", 0x472DDC, 0x4
.global lbl_80640DC0
lbl_80640DC0:
	.incbin "baserom.dol", 0x472DE0, 0x4
.global lbl_80640DC4
lbl_80640DC4:
	.incbin "baserom.dol", 0x472DE4, 0x4
.global lbl_80640DC8
lbl_80640DC8:
	.incbin "baserom.dol", 0x472DE8, 0x4
.global lbl_80640DCC
lbl_80640DCC:
	.incbin "baserom.dol", 0x472DEC, 0x8
.global lbl_80640DD4
lbl_80640DD4:
	.incbin "baserom.dol", 0x472DF4, 0x4
.global lbl_80640DD8
lbl_80640DD8:
	.incbin "baserom.dol", 0x472DF8, 0x4
.global lbl_80640DDC
lbl_80640DDC:
	.incbin "baserom.dol", 0x472DFC, 0x4
.global lbl_80640DE0
lbl_80640DE0:
	.incbin "baserom.dol", 0x472E00, 0x4
.global lbl_80640DE4
lbl_80640DE4:
	.incbin "baserom.dol", 0x472E04, 0x4
.global lbl_80640DE8
lbl_80640DE8:
	.incbin "baserom.dol", 0x472E08, 0x4
.global lbl_80640DEC
lbl_80640DEC:
	.incbin "baserom.dol", 0x472E0C, 0x4
.global lbl_80640DF0
lbl_80640DF0:
	.incbin "baserom.dol", 0x472E10, 0x4
.global lbl_80640DF4
lbl_80640DF4:
	.incbin "baserom.dol", 0x472E14, 0x4
.global lbl_80640DF8
lbl_80640DF8:
	.incbin "baserom.dol", 0x472E18, 0x8
.global lbl_80640E00
lbl_80640E00:
	.incbin "baserom.dol", 0x472E20, 0x4
.global lbl_80640E04
lbl_80640E04:
	.incbin "baserom.dol", 0x472E24, 0x4
.global lbl_80640E08
lbl_80640E08:
	.incbin "baserom.dol", 0x472E28, 0x4
.global lbl_80640E0C
lbl_80640E0C:
	.incbin "baserom.dol", 0x472E2C, 0x4
.global lbl_80640E10
lbl_80640E10:
	.incbin "baserom.dol", 0x472E30, 0x8
.global lbl_80640E18
lbl_80640E18:
	.incbin "baserom.dol", 0x472E38, 0x4
.global lbl_80640E1C
lbl_80640E1C:
	.incbin "baserom.dol", 0x472E3C, 0x4
.global lbl_80640E20
lbl_80640E20:
	.incbin "baserom.dol", 0x472E40, 0x4
.global lbl_80640E24
lbl_80640E24:
	.incbin "baserom.dol", 0x472E44, 0x4
.global lbl_80640E28
lbl_80640E28:
	.incbin "baserom.dol", 0x472E48, 0x4
.global lbl_80640E2C
lbl_80640E2C:
	.incbin "baserom.dol", 0x472E4C, 0x4
.global lbl_80640E30
lbl_80640E30:
	.incbin "baserom.dol", 0x472E50, 0x4
.global lbl_80640E34
lbl_80640E34:
	.incbin "baserom.dol", 0x472E54, 0x4
.global lbl_80640E38
lbl_80640E38:
	.incbin "baserom.dol", 0x472E58, 0x4
.global lbl_80640E3C
lbl_80640E3C:
	.incbin "baserom.dol", 0x472E5C, 0x4
.global lbl_80640E40
lbl_80640E40:
	.incbin "baserom.dol", 0x472E60, 0x4
.global lbl_80640E44
lbl_80640E44:
	.incbin "baserom.dol", 0x472E64, 0x4
.global lbl_80640E48
lbl_80640E48:
	.incbin "baserom.dol", 0x472E68, 0x4
.global lbl_80640E4C
lbl_80640E4C:
	.incbin "baserom.dol", 0x472E6C, 0x4
.global lbl_80640E50
lbl_80640E50:
	.incbin "baserom.dol", 0x472E70, 0x4
.global lbl_80640E54
lbl_80640E54:
	.incbin "baserom.dol", 0x472E74, 0x4
.global lbl_80640E58
lbl_80640E58:
	.incbin "baserom.dol", 0x472E78, 0x8
.global lbl_80640E60
lbl_80640E60:
	.incbin "baserom.dol", 0x472E80, 0x8
.global lbl_80640E68
lbl_80640E68:
	.incbin "baserom.dol", 0x472E88, 0x4
.global lbl_80640E6C
lbl_80640E6C:
	.incbin "baserom.dol", 0x472E8C, 0x4
.global lbl_80640E70
lbl_80640E70:
	.incbin "baserom.dol", 0x472E90, 0x4
.global lbl_80640E74
lbl_80640E74:
	.incbin "baserom.dol", 0x472E94, 0x4
.global lbl_80640E78
lbl_80640E78:
	.incbin "baserom.dol", 0x472E98, 0x4
.global lbl_80640E7C
lbl_80640E7C:
	.incbin "baserom.dol", 0x472E9C, 0x4
.global lbl_80640E80
lbl_80640E80:
	.incbin "baserom.dol", 0x472EA0, 0x4
.global lbl_80640E84
lbl_80640E84:
	.incbin "baserom.dol", 0x472EA4, 0x4
.global lbl_80640E88
lbl_80640E88:
	.incbin "baserom.dol", 0x472EA8, 0x8
.global lbl_80640E90
lbl_80640E90:
	.incbin "baserom.dol", 0x472EB0, 0x8
.global lbl_80640E98
lbl_80640E98:
	.incbin "baserom.dol", 0x472EB8, 0x4
.global lbl_80640E9C
lbl_80640E9C:
	.incbin "baserom.dol", 0x472EBC, 0x4
.global lbl_80640EA0
lbl_80640EA0:
	.incbin "baserom.dol", 0x472EC0, 0x4
.global lbl_80640EA4
lbl_80640EA4:
	.incbin "baserom.dol", 0x472EC4, 0x4
.global lbl_80640EA8
lbl_80640EA8:
	.incbin "baserom.dol", 0x472EC8, 0x4
.global lbl_80640EAC
lbl_80640EAC:
	.incbin "baserom.dol", 0x472ECC, 0x4
.global lbl_80640EB0
lbl_80640EB0:
	.incbin "baserom.dol", 0x472ED0, 0x4
.global lbl_80640EB4
lbl_80640EB4:
	.incbin "baserom.dol", 0x472ED4, 0x4
.global lbl_80640EB8
lbl_80640EB8:
	.incbin "baserom.dol", 0x472ED8, 0x8
.global lbl_80640EC0
lbl_80640EC0:
	.incbin "baserom.dol", 0x472EE0, 0x8
.global lbl_80640EC8
lbl_80640EC8:
	.incbin "baserom.dol", 0x472EE8, 0x8
.global lbl_80640ED0
lbl_80640ED0:
	.incbin "baserom.dol", 0x472EF0, 0x4
.global lbl_80640ED4
lbl_80640ED4:
	.incbin "baserom.dol", 0x472EF4, 0x4
.global lbl_80640ED8
lbl_80640ED8:
	.incbin "baserom.dol", 0x472EF8, 0x8
.global lbl_80640EE0
lbl_80640EE0:
	.incbin "baserom.dol", 0x472F00, 0x8
.global lbl_80640EE8
lbl_80640EE8:
	.incbin "baserom.dol", 0x472F08, 0x8
.global lbl_80640EF0
lbl_80640EF0:
	.incbin "baserom.dol", 0x472F10, 0x8
.global lbl_80640EF8
lbl_80640EF8:
	.incbin "baserom.dol", 0x472F18, 0x4
.global lbl_80640EFC
lbl_80640EFC:
	.incbin "baserom.dol", 0x472F1C, 0x4
.global lbl_80640F00
lbl_80640F00:
	.incbin "baserom.dol", 0x472F20, 0x4
.global lbl_80640F04
lbl_80640F04:
	.incbin "baserom.dol", 0x472F24, 0x4
.global lbl_80640F08
lbl_80640F08:
	.incbin "baserom.dol", 0x472F28, 0x4
.global lbl_80640F0C
lbl_80640F0C:
	.incbin "baserom.dol", 0x472F2C, 0x4
.global lbl_80640F10
lbl_80640F10:
	.incbin "baserom.dol", 0x472F30, 0x4
.global lbl_80640F14
lbl_80640F14:
	.incbin "baserom.dol", 0x472F34, 0x4
.global lbl_80640F18
lbl_80640F18:
	.incbin "baserom.dol", 0x472F38, 0x8
.global lbl_80640F20
lbl_80640F20:
	.incbin "baserom.dol", 0x472F40, 0x4
.global lbl_80640F24
lbl_80640F24:
	.incbin "baserom.dol", 0x472F44, 0x4
.global lbl_80640F28
lbl_80640F28:
	.incbin "baserom.dol", 0x472F48, 0x4
.global lbl_80640F2C
lbl_80640F2C:
	.incbin "baserom.dol", 0x472F4C, 0x4
.global lbl_80640F30
lbl_80640F30:
	.incbin "baserom.dol", 0x472F50, 0x4
.global lbl_80640F34
lbl_80640F34:
	.incbin "baserom.dol", 0x472F54, 0x4
.global lbl_80640F38
lbl_80640F38:
	.incbin "baserom.dol", 0x472F58, 0x4
.global lbl_80640F3C
lbl_80640F3C:
	.incbin "baserom.dol", 0x472F5C, 0x4
.global lbl_80640F40
lbl_80640F40:
	.incbin "baserom.dol", 0x472F60, 0x4
.global lbl_80640F44
lbl_80640F44:
	.incbin "baserom.dol", 0x472F64, 0x4
.global lbl_80640F48
lbl_80640F48:
	.incbin "baserom.dol", 0x472F68, 0x4
.global lbl_80640F4C
lbl_80640F4C:
	.incbin "baserom.dol", 0x472F6C, 0x4
.global lbl_80640F50
lbl_80640F50:
	.incbin "baserom.dol", 0x472F70, 0x2
.global lbl_80640F52
lbl_80640F52:
	.incbin "baserom.dol", 0x472F72, 0x2
.global lbl_80640F54
lbl_80640F54:
	.incbin "baserom.dol", 0x472F74, 0x2
.global lbl_80640F56
lbl_80640F56:
	.incbin "baserom.dol", 0x472F76, 0x2
.global lbl_80640F58
lbl_80640F58:
	.incbin "baserom.dol", 0x472F78, 0x2
.global lbl_80640F5A
lbl_80640F5A:
	.incbin "baserom.dol", 0x472F7A, 0x2
.global lbl_80640F5C
lbl_80640F5C:
	.incbin "baserom.dol", 0x472F7C, 0x2
.global lbl_80640F5E
lbl_80640F5E:
	.incbin "baserom.dol", 0x472F7E, 0x2
.global lbl_80640F60
lbl_80640F60:
	.incbin "baserom.dol", 0x472F80, 0x4
.global lbl_80640F64
lbl_80640F64:
	.incbin "baserom.dol", 0x472F84, 0x4
.global lbl_80640F68
lbl_80640F68:
	.incbin "baserom.dol", 0x472F88, 0x8
.global lbl_80640F70
lbl_80640F70:
	.incbin "baserom.dol", 0x472F90, 0x8
.global lbl_80640F78
lbl_80640F78:
	.incbin "baserom.dol", 0x472F98, 0x4
.global lbl_80640F7C
lbl_80640F7C:
	.incbin "baserom.dol", 0x472F9C, 0x4
.global lbl_80640F80
lbl_80640F80:
	.incbin "baserom.dol", 0x472FA0, 0x4
.global lbl_80640F84
lbl_80640F84:
	.incbin "baserom.dol", 0x472FA4, 0x4
.global lbl_80640F88
lbl_80640F88:
	.incbin "baserom.dol", 0x472FA8, 0x4
.global lbl_80640F8C
lbl_80640F8C:
	.incbin "baserom.dol", 0x472FAC, 0x4
.global lbl_80640F90
lbl_80640F90:
	.incbin "baserom.dol", 0x472FB0, 0x4
.global lbl_80640F94
lbl_80640F94:
	.incbin "baserom.dol", 0x472FB4, 0x4
.global lbl_80640F98
lbl_80640F98:
	.incbin "baserom.dol", 0x472FB8, 0x4
.global lbl_80640F9C
lbl_80640F9C:
	.incbin "baserom.dol", 0x472FBC, 0x4
.global lbl_80640FA0
lbl_80640FA0:
	.incbin "baserom.dol", 0x472FC0, 0x4
.global lbl_80640FA4
lbl_80640FA4:
	.incbin "baserom.dol", 0x472FC4, 0x4
.global lbl_80640FA8
lbl_80640FA8:
	.incbin "baserom.dol", 0x472FC8, 0x8
.global lbl_80640FB0
lbl_80640FB0:
	.incbin "baserom.dol", 0x472FD0, 0x8
.global lbl_80640FB8
lbl_80640FB8:
	.incbin "baserom.dol", 0x472FD8, 0x4
.global lbl_80640FBC
lbl_80640FBC:
	.incbin "baserom.dol", 0x472FDC, 0x4
.global lbl_80640FC0
lbl_80640FC0:
	.incbin "baserom.dol", 0x472FE0, 0x4
.global lbl_80640FC4
lbl_80640FC4:
	.incbin "baserom.dol", 0x472FE4, 0x4
.global lbl_80640FC8
lbl_80640FC8:
	.incbin "baserom.dol", 0x472FE8, 0x4
.global lbl_80640FCC
lbl_80640FCC:
	.incbin "baserom.dol", 0x472FEC, 0x4
.global lbl_80640FD0
lbl_80640FD0:
	.incbin "baserom.dol", 0x472FF0, 0x4
.global lbl_80640FD4
lbl_80640FD4:
	.incbin "baserom.dol", 0x472FF4, 0x4
.global lbl_80640FD8
lbl_80640FD8:
	.incbin "baserom.dol", 0x472FF8, 0x8
.global lbl_80640FE0
lbl_80640FE0:
	.incbin "baserom.dol", 0x473000, 0x4
.global lbl_80640FE4
lbl_80640FE4:
	.incbin "baserom.dol", 0x473004, 0x4
.global lbl_80640FE8
lbl_80640FE8:
	.incbin "baserom.dol", 0x473008, 0x4
.global lbl_80640FEC
lbl_80640FEC:
	.incbin "baserom.dol", 0x47300C, 0x4
.global lbl_80640FF0
lbl_80640FF0:
	.incbin "baserom.dol", 0x473010, 0x4
.global lbl_80640FF4
lbl_80640FF4:
	.incbin "baserom.dol", 0x473014, 0x4
.global lbl_80640FF8
lbl_80640FF8:
	.incbin "baserom.dol", 0x473018, 0x4
.global lbl_80640FFC
lbl_80640FFC:
	.incbin "baserom.dol", 0x47301C, 0x4
.global lbl_80641000
lbl_80641000:
	.incbin "baserom.dol", 0x473020, 0x4
.global lbl_80641004
lbl_80641004:
	.incbin "baserom.dol", 0x473024, 0x4
.global lbl_80641008
lbl_80641008:
	.incbin "baserom.dol", 0x473028, 0x4
.global lbl_8064100C
lbl_8064100C:
	.incbin "baserom.dol", 0x47302C, 0x4
.global lbl_80641010
lbl_80641010:
	.incbin "baserom.dol", 0x473030, 0x8
.global lbl_80641018
lbl_80641018:
	.incbin "baserom.dol", 0x473038, 0x4
.global lbl_8064101C
lbl_8064101C:
	.incbin "baserom.dol", 0x47303C, 0x4
.global lbl_80641020
lbl_80641020:
	.incbin "baserom.dol", 0x473040, 0x4
.global lbl_80641024
lbl_80641024:
	.incbin "baserom.dol", 0x473044, 0x4
.global lbl_80641028
lbl_80641028:
	.incbin "baserom.dol", 0x473048, 0x4
.global lbl_8064102C
lbl_8064102C:
	.incbin "baserom.dol", 0x47304C, 0x4
.global lbl_80641030
lbl_80641030:
	.incbin "baserom.dol", 0x473050, 0x4
.global lbl_80641034
lbl_80641034:
	.incbin "baserom.dol", 0x473054, 0x4
.global lbl_80641038
lbl_80641038:
	.incbin "baserom.dol", 0x473058, 0x8
.global lbl_80641040
lbl_80641040:
	.incbin "baserom.dol", 0x473060, 0x8
.global lbl_80641048
lbl_80641048:
	.incbin "baserom.dol", 0x473068, 0x8
.global lbl_80641050
lbl_80641050:
	.incbin "baserom.dol", 0x473070, 0x8
.global lbl_80641058
lbl_80641058:
	.incbin "baserom.dol", 0x473078, 0x4
.global lbl_8064105C
lbl_8064105C:
	.incbin "baserom.dol", 0x47307C, 0x4
.global lbl_80641060
lbl_80641060:
	.incbin "baserom.dol", 0x473080, 0x4
.global lbl_80641064
lbl_80641064:
	.incbin "baserom.dol", 0x473084, 0x4
.global lbl_80641068
lbl_80641068:
	.incbin "baserom.dol", 0x473088, 0x4
.global lbl_8064106C
lbl_8064106C:
	.incbin "baserom.dol", 0x47308C, 0x4
.global lbl_80641070
lbl_80641070:
	.incbin "baserom.dol", 0x473090, 0x4
.global lbl_80641074
lbl_80641074:
	.incbin "baserom.dol", 0x473094, 0x4
.global lbl_80641078
lbl_80641078:
	.incbin "baserom.dol", 0x473098, 0x4
.global lbl_8064107C
lbl_8064107C:
	.incbin "baserom.dol", 0x47309C, 0x4
.global lbl_80641080
lbl_80641080:
	.incbin "baserom.dol", 0x4730A0, 0x4
.global lbl_80641084
lbl_80641084:
	.incbin "baserom.dol", 0x4730A4, 0x4
.global lbl_80641088
lbl_80641088:
	.incbin "baserom.dol", 0x4730A8, 0x4
.global lbl_8064108C
lbl_8064108C:
	.incbin "baserom.dol", 0x4730AC, 0x4
.global lbl_80641090
lbl_80641090:
	.incbin "baserom.dol", 0x4730B0, 0x4
.global lbl_80641094
lbl_80641094:
	.incbin "baserom.dol", 0x4730B4, 0x4
.global lbl_80641098
lbl_80641098:
	.incbin "baserom.dol", 0x4730B8, 0x4
.global lbl_8064109C
lbl_8064109C:
	.incbin "baserom.dol", 0x4730BC, 0x4
.global lbl_806410A0
lbl_806410A0:
	.incbin "baserom.dol", 0x4730C0, 0x4
.global lbl_806410A4
lbl_806410A4:
	.incbin "baserom.dol", 0x4730C4, 0x4
.global lbl_806410A8
lbl_806410A8:
	.incbin "baserom.dol", 0x4730C8, 0x4
.global lbl_806410AC
lbl_806410AC:
	.incbin "baserom.dol", 0x4730CC, 0x4
.global lbl_806410B0
lbl_806410B0:
	.incbin "baserom.dol", 0x4730D0, 0x4
.global lbl_806410B4
lbl_806410B4:
	.incbin "baserom.dol", 0x4730D4, 0x4
.global lbl_806410B8
lbl_806410B8:
	.incbin "baserom.dol", 0x4730D8, 0x4
.global lbl_806410BC
lbl_806410BC:
	.incbin "baserom.dol", 0x4730DC, 0x4
.global lbl_806410C0
lbl_806410C0:
	.incbin "baserom.dol", 0x4730E0, 0x4
.global lbl_806410C4
lbl_806410C4:
	.incbin "baserom.dol", 0x4730E4, 0x4
.global lbl_806410C8
lbl_806410C8:
	.incbin "baserom.dol", 0x4730E8, 0x4
.global lbl_806410CC
lbl_806410CC:
	.incbin "baserom.dol", 0x4730EC, 0x4
.global lbl_806410D0
lbl_806410D0:
	.incbin "baserom.dol", 0x4730F0, 0x1
.global lbl_806410D1
lbl_806410D1:
	.incbin "baserom.dol", 0x4730F1, 0x1
.global lbl_806410D2
lbl_806410D2:
	.incbin "baserom.dol", 0x4730F2, 0x1
.global lbl_806410D3
lbl_806410D3:
	.incbin "baserom.dol", 0x4730F3, 0x1
.global lbl_806410D4
lbl_806410D4:
	.incbin "baserom.dol", 0x4730F4, 0x1
.global lbl_806410D5
lbl_806410D5:
	.incbin "baserom.dol", 0x4730F5, 0x1
.global lbl_806410D6
lbl_806410D6:
	.incbin "baserom.dol", 0x4730F6, 0x1
.global lbl_806410D7
lbl_806410D7:
	.incbin "baserom.dol", 0x4730F7, 0x1
.global lbl_806410D8
lbl_806410D8:
	.incbin "baserom.dol", 0x4730F8, 0x1
.global lbl_806410D9
lbl_806410D9:
	.incbin "baserom.dol", 0x4730F9, 0x1
.global lbl_806410DA
lbl_806410DA:
	.incbin "baserom.dol", 0x4730FA, 0x1
.global lbl_806410DB
lbl_806410DB:
	.incbin "baserom.dol", 0x4730FB, 0x5
.global lbl_806410E0
lbl_806410E0:
	.incbin "baserom.dol", 0x473100, 0x8
.global lbl_806410E8
lbl_806410E8:
	.incbin "baserom.dol", 0x473108, 0x4
.global lbl_806410EC
lbl_806410EC:
	.incbin "baserom.dol", 0x47310C, 0x4
.global lbl_806410F0
lbl_806410F0:
	.incbin "baserom.dol", 0x473110, 0x8
.global lbl_806410F8
lbl_806410F8:
	.incbin "baserom.dol", 0x473118, 0x8
.global lbl_80641100
lbl_80641100:
	.incbin "baserom.dol", 0x473120, 0x8
.global lbl_80641108
lbl_80641108:
	.incbin "baserom.dol", 0x473128, 0x4
.global lbl_8064110C
lbl_8064110C:
	.incbin "baserom.dol", 0x47312C, 0x4
.global lbl_80641110
lbl_80641110:
	.incbin "baserom.dol", 0x473130, 0x4
.global lbl_80641114
lbl_80641114:
	.incbin "baserom.dol", 0x473134, 0x4
.global lbl_80641118
lbl_80641118:
	.incbin "baserom.dol", 0x473138, 0x4
.global lbl_8064111C
lbl_8064111C:
	.incbin "baserom.dol", 0x47313C, 0x4
.global lbl_80641120
lbl_80641120:
	.incbin "baserom.dol", 0x473140, 0x4
.global lbl_80641124
lbl_80641124:
	.incbin "baserom.dol", 0x473144, 0x4
.global lbl_80641128
lbl_80641128:
	.incbin "baserom.dol", 0x473148, 0x4
.global lbl_8064112C
lbl_8064112C:
	.incbin "baserom.dol", 0x47314C, 0x4
.global lbl_80641130
lbl_80641130:
	.incbin "baserom.dol", 0x473150, 0x4
.global lbl_80641134
lbl_80641134:
	.incbin "baserom.dol", 0x473154, 0x4
.global lbl_80641138
lbl_80641138:
	.incbin "baserom.dol", 0x473158, 0x4
.global lbl_8064113C
lbl_8064113C:
	.incbin "baserom.dol", 0x47315C, 0x4
.global lbl_80641140
lbl_80641140:
	.incbin "baserom.dol", 0x473160, 0x4
.global lbl_80641144
lbl_80641144:
	.incbin "baserom.dol", 0x473164, 0x4
.global lbl_80641148
lbl_80641148:
	.incbin "baserom.dol", 0x473168, 0x4
.global lbl_8064114C
lbl_8064114C:
	.incbin "baserom.dol", 0x47316C, 0x4
.global lbl_80641150
lbl_80641150:
	.incbin "baserom.dol", 0x473170, 0x4
.global lbl_80641154
lbl_80641154:
	.incbin "baserom.dol", 0x473174, 0x4
.global lbl_80641158
lbl_80641158:
	.incbin "baserom.dol", 0x473178, 0x4
.global lbl_8064115C
lbl_8064115C:
	.incbin "baserom.dol", 0x47317C, 0x4
.global lbl_80641160
lbl_80641160:
	.incbin "baserom.dol", 0x473180, 0x4
.global lbl_80641164
lbl_80641164:
	.incbin "baserom.dol", 0x473184, 0x4
.global lbl_80641168
lbl_80641168:
	.incbin "baserom.dol", 0x473188, 0x4
.global lbl_8064116C
lbl_8064116C:
	.incbin "baserom.dol", 0x47318C, 0x4
.global lbl_80641170
lbl_80641170:
	.incbin "baserom.dol", 0x473190, 0x8
.global lbl_80641178
lbl_80641178:
	.incbin "baserom.dol", 0x473198, 0x1
.global lbl_80641179
lbl_80641179:
	.incbin "baserom.dol", 0x473199, 0x1
.global lbl_8064117A
lbl_8064117A:
	.incbin "baserom.dol", 0x47319A, 0x1
.global lbl_8064117B
lbl_8064117B:
	.incbin "baserom.dol", 0x47319B, 0x1
.global lbl_8064117C
lbl_8064117C:
	.incbin "baserom.dol", 0x47319C, 0x1
.global lbl_8064117D
lbl_8064117D:
	.incbin "baserom.dol", 0x47319D, 0x3
.global lbl_80641180
lbl_80641180:
	.incbin "baserom.dol", 0x4731A0, 0x8
.global lbl_80641188
lbl_80641188:
	.incbin "baserom.dol", 0x4731A8, 0x8
.global lbl_80641190
lbl_80641190:
	.incbin "baserom.dol", 0x4731B0, 0x8
.global lbl_80641198
lbl_80641198:
	.incbin "baserom.dol", 0x4731B8, 0x4
.global lbl_8064119C
lbl_8064119C:
	.incbin "baserom.dol", 0x4731BC, 0x4
.global lbl_806411A0
lbl_806411A0:
	.incbin "baserom.dol", 0x4731C0, 0x4
.global lbl_806411A4
lbl_806411A4:
	.incbin "baserom.dol", 0x4731C4, 0x4
.global lbl_806411A8
lbl_806411A8:
	.incbin "baserom.dol", 0x4731C8, 0x4
.global lbl_806411AC
lbl_806411AC:
	.incbin "baserom.dol", 0x4731CC, 0x4
.global lbl_806411B0
lbl_806411B0:
	.incbin "baserom.dol", 0x4731D0, 0x4
.global lbl_806411B4
lbl_806411B4:
	.incbin "baserom.dol", 0x4731D4, 0x4
.global lbl_806411B8
lbl_806411B8:
	.incbin "baserom.dol", 0x4731D8, 0x4
.global lbl_806411BC
lbl_806411BC:
	.incbin "baserom.dol", 0x4731DC, 0x4
.global lbl_806411C0
lbl_806411C0:
	.incbin "baserom.dol", 0x4731E0, 0x4
.global lbl_806411C4
lbl_806411C4:
	.incbin "baserom.dol", 0x4731E4, 0x4
.global lbl_806411C8
lbl_806411C8:
	.incbin "baserom.dol", 0x4731E8, 0x4
.global lbl_806411CC
lbl_806411CC:
	.incbin "baserom.dol", 0x4731EC, 0x4
.global lbl_806411D0
lbl_806411D0:
	.incbin "baserom.dol", 0x4731F0, 0x4
.global lbl_806411D4
lbl_806411D4:
	.incbin "baserom.dol", 0x4731F4, 0x4
.global lbl_806411D8
lbl_806411D8:
	.incbin "baserom.dol", 0x4731F8, 0x4
.global lbl_806411DC
lbl_806411DC:
	.incbin "baserom.dol", 0x4731FC, 0x4
.global lbl_806411E0
lbl_806411E0:
	.incbin "baserom.dol", 0x473200, 0x4
.global lbl_806411E4
lbl_806411E4:
	.incbin "baserom.dol", 0x473204, 0x4
.global lbl_806411E8
lbl_806411E8:
	.incbin "baserom.dol", 0x473208, 0x4
.global lbl_806411EC
lbl_806411EC:
	.incbin "baserom.dol", 0x47320C, 0x4
.global lbl_806411F0
lbl_806411F0:
	.incbin "baserom.dol", 0x473210, 0x1
.global lbl_806411F1
lbl_806411F1:
	.incbin "baserom.dol", 0x473211, 0x1
.global lbl_806411F2
lbl_806411F2:
	.incbin "baserom.dol", 0x473212, 0x1
.global lbl_806411F3
lbl_806411F3:
	.incbin "baserom.dol", 0x473213, 0x1
.global lbl_806411F4
lbl_806411F4:
	.incbin "baserom.dol", 0x473214, 0x1
.global lbl_806411F5
lbl_806411F5:
	.incbin "baserom.dol", 0x473215, 0x3
.global lbl_806411F8
lbl_806411F8:
	.incbin "baserom.dol", 0x473218, 0x1
.global lbl_806411F9
lbl_806411F9:
	.incbin "baserom.dol", 0x473219, 0x1
.global lbl_806411FA
lbl_806411FA:
	.incbin "baserom.dol", 0x47321A, 0x6
.global lbl_80641200
lbl_80641200:
	.incbin "baserom.dol", 0x473220, 0x8
.global lbl_80641208
lbl_80641208:
	.incbin "baserom.dol", 0x473228, 0x4
.global lbl_8064120C
lbl_8064120C:
	.incbin "baserom.dol", 0x47322C, 0x4
.global lbl_80641210
lbl_80641210:
	.incbin "baserom.dol", 0x473230, 0x4
.global lbl_80641214
lbl_80641214:
	.incbin "baserom.dol", 0x473234, 0x4
.global lbl_80641218
lbl_80641218:
	.incbin "baserom.dol", 0x473238, 0x4
.global lbl_8064121C
lbl_8064121C:
	.incbin "baserom.dol", 0x47323C, 0x4
.global lbl_80641220
lbl_80641220:
	.incbin "baserom.dol", 0x473240, 0x4
.global lbl_80641224
lbl_80641224:
	.incbin "baserom.dol", 0x473244, 0x4
.global lbl_80641228
lbl_80641228:
	.incbin "baserom.dol", 0x473248, 0x8
.global lbl_80641230
lbl_80641230:
	.incbin "baserom.dol", 0x473250, 0x8
.global lbl_80641238
lbl_80641238:
	.incbin "baserom.dol", 0x473258, 0x4
.global lbl_8064123C
lbl_8064123C:
	.incbin "baserom.dol", 0x47325C, 0x4
.global lbl_80641240
lbl_80641240:
	.incbin "baserom.dol", 0x473260, 0x4
.global lbl_80641244
lbl_80641244:
	.incbin "baserom.dol", 0x473264, 0x4
.global lbl_80641248
lbl_80641248:
	.incbin "baserom.dol", 0x473268, 0x4
.global lbl_8064124C
lbl_8064124C:
	.incbin "baserom.dol", 0x47326C, 0x4
.global lbl_80641250
lbl_80641250:
	.incbin "baserom.dol", 0x473270, 0x4
.global lbl_80641254
lbl_80641254:
	.incbin "baserom.dol", 0x473274, 0x4
.global lbl_80641258
lbl_80641258:
	.incbin "baserom.dol", 0x473278, 0x4
.global lbl_8064125C
lbl_8064125C:
	.incbin "baserom.dol", 0x47327C, 0x4
.global lbl_80641260
lbl_80641260:
	.incbin "baserom.dol", 0x473280, 0x4
.global lbl_80641264
lbl_80641264:
	.incbin "baserom.dol", 0x473284, 0x4
.global lbl_80641268
lbl_80641268:
	.incbin "baserom.dol", 0x473288, 0x4
.global lbl_8064126C
lbl_8064126C:
	.incbin "baserom.dol", 0x47328C, 0x4
.global lbl_80641270
lbl_80641270:
	.incbin "baserom.dol", 0x473290, 0x4
.global lbl_80641274
lbl_80641274:
	.incbin "baserom.dol", 0x473294, 0x4
.global lbl_80641278
lbl_80641278:
	.incbin "baserom.dol", 0x473298, 0x4
.global lbl_8064127C
lbl_8064127C:
	.incbin "baserom.dol", 0x47329C, 0x4
.global lbl_80641280
lbl_80641280:
	.incbin "baserom.dol", 0x4732A0, 0x4
.global lbl_80641284
lbl_80641284:
	.incbin "baserom.dol", 0x4732A4, 0x4
.global lbl_80641288
lbl_80641288:
	.incbin "baserom.dol", 0x4732A8, 0x4
.global lbl_8064128C
lbl_8064128C:
	.incbin "baserom.dol", 0x4732AC, 0x4
.global lbl_80641290
lbl_80641290:
	.incbin "baserom.dol", 0x4732B0, 0x8
.global lbl_80641298
lbl_80641298:
	.incbin "baserom.dol", 0x4732B8, 0x8
.global lbl_806412A0
lbl_806412A0:
	.incbin "baserom.dol", 0x4732C0, 0x8
.global lbl_806412A8
lbl_806412A8:
	.incbin "baserom.dol", 0x4732C8, 0x4
.global lbl_806412AC
lbl_806412AC:
	.incbin "baserom.dol", 0x4732CC, 0x4
.global lbl_806412B0
lbl_806412B0:
	.incbin "baserom.dol", 0x4732D0, 0x4
.global lbl_806412B4
lbl_806412B4:
	.incbin "baserom.dol", 0x4732D4, 0x4
.global lbl_806412B8
lbl_806412B8:
	.incbin "baserom.dol", 0x4732D8, 0x8
.global lbl_806412C0
lbl_806412C0:
	.incbin "baserom.dol", 0x4732E0, 0x8
.global lbl_806412C8
lbl_806412C8:
	.incbin "baserom.dol", 0x4732E8, 0x8
.global lbl_806412D0
lbl_806412D0:
	.incbin "baserom.dol", 0x4732F0, 0x8
.global lbl_806412D8
lbl_806412D8:
	.incbin "baserom.dol", 0x4732F8, 0x8
.global lbl_806412E0
lbl_806412E0:
	.incbin "baserom.dol", 0x473300, 0x8
.global lbl_806412E8
lbl_806412E8:
	.incbin "baserom.dol", 0x473308, 0x8
.global lbl_806412F0
lbl_806412F0:
	.incbin "baserom.dol", 0x473310, 0x8
.global lbl_806412F8
lbl_806412F8:
	.incbin "baserom.dol", 0x473318, 0x8
.global lbl_80641300
lbl_80641300:
	.incbin "baserom.dol", 0x473320, 0x8
.global lbl_80641308
lbl_80641308:
	.incbin "baserom.dol", 0x473328, 0x8
.global lbl_80641310
lbl_80641310:
	.incbin "baserom.dol", 0x473330, 0x8
.global lbl_80641318
lbl_80641318:
	.incbin "baserom.dol", 0x473338, 0x8
.global lbl_80641320
lbl_80641320:
	.incbin "baserom.dol", 0x473340, 0x8
.global lbl_80641328
lbl_80641328:
	.incbin "baserom.dol", 0x473348, 0x8
.global lbl_80641330
lbl_80641330:
	.incbin "baserom.dol", 0x473350, 0x8
.global lbl_80641338
lbl_80641338:
	.incbin "baserom.dol", 0x473358, 0x8
.global lbl_80641340
lbl_80641340:
	.incbin "baserom.dol", 0x473360, 0x8
.global lbl_80641348
lbl_80641348:
	.incbin "baserom.dol", 0x473368, 0x4
.global lbl_8064134C
lbl_8064134C:
	.incbin "baserom.dol", 0x47336C, 0x4
.global lbl_80641350
lbl_80641350:
	.incbin "baserom.dol", 0x473370, 0x8
.global lbl_80641358
lbl_80641358:
	.incbin "baserom.dol", 0x473378, 0x4
.global lbl_8064135C
lbl_8064135C:
	.incbin "baserom.dol", 0x47337C, 0x4
.global lbl_80641360
lbl_80641360:
	.incbin "baserom.dol", 0x473380, 0x8
.global lbl_80641368
lbl_80641368:
	.incbin "baserom.dol", 0x473388, 0x8
.global lbl_80641370
lbl_80641370:
	.incbin "baserom.dol", 0x473390, 0x8
.global lbl_80641378
lbl_80641378:
	.incbin "baserom.dol", 0x473398, 0x8
.global lbl_80641380
lbl_80641380:
	.incbin "baserom.dol", 0x4733A0, 0x4
.global lbl_80641384
lbl_80641384:
	.incbin "baserom.dol", 0x4733A4, 0x4
.global lbl_80641388
lbl_80641388:
	.incbin "baserom.dol", 0x4733A8, 0x4
.global lbl_8064138C
lbl_8064138C:
	.incbin "baserom.dol", 0x4733AC, 0xC
.global lbl_80641398
lbl_80641398:
	.incbin "baserom.dol", 0x4733B8, 0x4
.global lbl_8064139C
lbl_8064139C:
	.incbin "baserom.dol", 0x4733BC, 0x4
.global lbl_806413A0
lbl_806413A0:
	.incbin "baserom.dol", 0x4733C0, 0x4
.global lbl_806413A4
lbl_806413A4:
	.incbin "baserom.dol", 0x4733C4, 0x4
.global lbl_806413A8
lbl_806413A8:
	.incbin "baserom.dol", 0x4733C8, 0x4
.global lbl_806413AC
lbl_806413AC:
	.incbin "baserom.dol", 0x4733CC, 0x4
.global lbl_806413B0
lbl_806413B0:
	.incbin "baserom.dol", 0x4733D0, 0x4
.global lbl_806413B4
lbl_806413B4:
	.incbin "baserom.dol", 0x4733D4, 0x4
.global lbl_806413B8
lbl_806413B8:
	.incbin "baserom.dol", 0x4733D8, 0x8
.global lbl_806413C0
lbl_806413C0:
	.incbin "baserom.dol", 0x4733E0, 0x4
.global lbl_806413C4
lbl_806413C4:
	.incbin "baserom.dol", 0x4733E4, 0x4
.global lbl_806413C8
lbl_806413C8:
	.incbin "baserom.dol", 0x4733E8, 0x4
.global lbl_806413CC
lbl_806413CC:
	.incbin "baserom.dol", 0x4733EC, 0x4
.global lbl_806413D0
lbl_806413D0:
	.incbin "baserom.dol", 0x4733F0, 0x4
.global lbl_806413D4
lbl_806413D4:
	.incbin "baserom.dol", 0x4733F4, 0x4
.global lbl_806413D8
lbl_806413D8:
	.incbin "baserom.dol", 0x4733F8, 0x4
.global lbl_806413DC
lbl_806413DC:
	.incbin "baserom.dol", 0x4733FC, 0x4
.global lbl_806413E0
lbl_806413E0:
	.incbin "baserom.dol", 0x473400, 0x8
.global lbl_806413E8
lbl_806413E8:
	.incbin "baserom.dol", 0x473408, 0x4
.global lbl_806413EC
lbl_806413EC:
	.incbin "baserom.dol", 0x47340C, 0x4
.global lbl_806413F0
lbl_806413F0:
	.incbin "baserom.dol", 0x473410, 0x4
.global lbl_806413F4
lbl_806413F4:
	.incbin "baserom.dol", 0x473414, 0x4
.global lbl_806413F8
lbl_806413F8:
	.incbin "baserom.dol", 0x473418, 0x4
.global lbl_806413FC
lbl_806413FC:
	.incbin "baserom.dol", 0x47341C, 0x4
.global lbl_80641400
lbl_80641400:
	.incbin "baserom.dol", 0x473420, 0x4
.global lbl_80641404
lbl_80641404:
	.incbin "baserom.dol", 0x473424, 0x4
.global lbl_80641408
lbl_80641408:
	.incbin "baserom.dol", 0x473428, 0x8
.global lbl_80641410
lbl_80641410:
	.incbin "baserom.dol", 0x473430, 0x4
.global lbl_80641414
lbl_80641414:
	.incbin "baserom.dol", 0x473434, 0x4
.global lbl_80641418
lbl_80641418:
	.incbin "baserom.dol", 0x473438, 0x8
.global lbl_80641420
lbl_80641420:
	.incbin "baserom.dol", 0x473440, 0x8
.global lbl_80641428
lbl_80641428:
	.incbin "baserom.dol", 0x473448, 0x8
.global lbl_80641430
lbl_80641430:
	.incbin "baserom.dol", 0x473450, 0x8
.global lbl_80641438
lbl_80641438:
	.incbin "baserom.dol", 0x473458, 0x8
.global lbl_80641440
lbl_80641440:
	.incbin "baserom.dol", 0x473460, 0x4
.global lbl_80641444
lbl_80641444:
	.incbin "baserom.dol", 0x473464, 0x4
.global lbl_80641448
lbl_80641448:
	.incbin "baserom.dol", 0x473468, 0x4
.global lbl_8064144C
lbl_8064144C:
	.incbin "baserom.dol", 0x47346C, 0x4
.global lbl_80641450
lbl_80641450:
	.incbin "baserom.dol", 0x473470, 0x4
.global lbl_80641454
lbl_80641454:
	.incbin "baserom.dol", 0x473474, 0x4
.global lbl_80641458
lbl_80641458:
	.incbin "baserom.dol", 0x473478, 0x8
.global lbl_80641460
lbl_80641460:
	.incbin "baserom.dol", 0x473480, 0x4
.global lbl_80641464
lbl_80641464:
	.incbin "baserom.dol", 0x473484, 0x4
.global lbl_80641468
lbl_80641468:
	.incbin "baserom.dol", 0x473488, 0x4
.global lbl_8064146C
lbl_8064146C:
	.incbin "baserom.dol", 0x47348C, 0x4
.global lbl_80641470
lbl_80641470:
	.incbin "baserom.dol", 0x473490, 0x2
.global lbl_80641472
lbl_80641472:
	.incbin "baserom.dol", 0x473492, 0x2
.global lbl_80641474
lbl_80641474:
	.incbin "baserom.dol", 0x473494, 0x2
.global lbl_80641476
lbl_80641476:
	.incbin "baserom.dol", 0x473496, 0x2
.global lbl_80641478
lbl_80641478:
	.incbin "baserom.dol", 0x473498, 0x8
.global lbl_80641480
lbl_80641480:
	.incbin "baserom.dol", 0x4734A0, 0x8
.global lbl_80641488
lbl_80641488:
	.incbin "baserom.dol", 0x4734A8, 0x8
.global lbl_80641490
lbl_80641490:
	.incbin "baserom.dol", 0x4734B0, 0x8
.global lbl_80641498
lbl_80641498:
	.incbin "baserom.dol", 0x4734B8, 0x8
.global lbl_806414A0
lbl_806414A0:
	.incbin "baserom.dol", 0x4734C0, 0x8
.global lbl_806414A8
lbl_806414A8:
	.incbin "baserom.dol", 0x4734C8, 0x4
.global lbl_806414AC
lbl_806414AC:
	.incbin "baserom.dol", 0x4734CC, 0x4
.global lbl_806414B0
lbl_806414B0:
	.incbin "baserom.dol", 0x4734D0, 0x4
.global lbl_806414B4
lbl_806414B4:
	.incbin "baserom.dol", 0x4734D4, 0x8
.global lbl_806414BC
lbl_806414BC:
	.incbin "baserom.dol", 0x4734DC, 0x4
.global lbl_806414C0
lbl_806414C0:
	.incbin "baserom.dol", 0x4734E0, 0x4
.global lbl_806414C4
lbl_806414C4:
	.incbin "baserom.dol", 0x4734E4, 0x4
.global lbl_806414C8
lbl_806414C8:
	.incbin "baserom.dol", 0x4734E8, 0x4
.global lbl_806414CC
lbl_806414CC:
	.incbin "baserom.dol", 0x4734EC, 0x4
.global lbl_806414D0
lbl_806414D0:
	.incbin "baserom.dol", 0x4734F0, 0x4
.global lbl_806414D4
lbl_806414D4:
	.incbin "baserom.dol", 0x4734F4, 0x4
.global lbl_806414D8
lbl_806414D8:
	.incbin "baserom.dol", 0x4734F8, 0x4
.global lbl_806414DC
lbl_806414DC:
	.incbin "baserom.dol", 0x4734FC, 0x4
.global lbl_806414E0
lbl_806414E0:
	.incbin "baserom.dol", 0x473500, 0x8
.global lbl_806414E8
lbl_806414E8:
	.incbin "baserom.dol", 0x473508, 0x4
.global lbl_806414EC
lbl_806414EC:
	.incbin "baserom.dol", 0x47350C, 0x4
.global lbl_806414F0
lbl_806414F0:
	.incbin "baserom.dol", 0x473510, 0x4
.global lbl_806414F4
lbl_806414F4:
	.incbin "baserom.dol", 0x473514, 0x4
.global lbl_806414F8
lbl_806414F8:
	.incbin "baserom.dol", 0x473518, 0x4
.global lbl_806414FC
lbl_806414FC:
	.incbin "baserom.dol", 0x47351C, 0x4
.global lbl_80641500
lbl_80641500:
	.incbin "baserom.dol", 0x473520, 0x4
.global lbl_80641504
lbl_80641504:
	.incbin "baserom.dol", 0x473524, 0x4
.global lbl_80641508
lbl_80641508:
	.incbin "baserom.dol", 0x473528, 0x8
.global lbl_80641510
lbl_80641510:
	.incbin "baserom.dol", 0x473530, 0x8
.global lbl_80641518
lbl_80641518:
	.incbin "baserom.dol", 0x473538, 0x4
.global lbl_8064151C
lbl_8064151C:
	.incbin "baserom.dol", 0x47353C, 0x4
.global lbl_80641520
lbl_80641520:
	.incbin "baserom.dol", 0x473540, 0x4
.global lbl_80641524
lbl_80641524:
	.incbin "baserom.dol", 0x473544, 0x4
.global lbl_80641528
lbl_80641528:
	.incbin "baserom.dol", 0x473548, 0x4
.global lbl_8064152C
lbl_8064152C:
	.incbin "baserom.dol", 0x47354C, 0x4
.global lbl_80641530
lbl_80641530:
	.incbin "baserom.dol", 0x473550, 0x4
.global lbl_80641534
lbl_80641534:
	.incbin "baserom.dol", 0x473554, 0x4
.global lbl_80641538
lbl_80641538:
	.incbin "baserom.dol", 0x473558, 0x8
.global lbl_80641540
lbl_80641540:
	.incbin "baserom.dol", 0x473560, 0x4
.global lbl_80641544
lbl_80641544:
	.incbin "baserom.dol", 0x473564, 0x4
.global lbl_80641548
lbl_80641548:
	.incbin "baserom.dol", 0x473568, 0x4
.global lbl_8064154C
lbl_8064154C:
	.incbin "baserom.dol", 0x47356C, 0x4
.global lbl_80641550
lbl_80641550:
	.incbin "baserom.dol", 0x473570, 0x8
.global lbl_80641558
lbl_80641558:
	.incbin "baserom.dol", 0x473578, 0x8
.global lbl_80641560
lbl_80641560:
	.incbin "baserom.dol", 0x473580, 0x8
.global lbl_80641568
lbl_80641568:
	.incbin "baserom.dol", 0x473588, 0x8
.global lbl_80641570
lbl_80641570:
	.incbin "baserom.dol", 0x473590, 0x8
.global lbl_80641578
lbl_80641578:
	.incbin "baserom.dol", 0x473598, 0x4
.global lbl_8064157C
lbl_8064157C:
	.incbin "baserom.dol", 0x47359C, 0x4
.global lbl_80641580
lbl_80641580:
	.incbin "baserom.dol", 0x4735A0, 0x4
.global lbl_80641584
lbl_80641584:
	.incbin "baserom.dol", 0x4735A4, 0x4
.global lbl_80641588
lbl_80641588:
	.incbin "baserom.dol", 0x4735A8, 0x4
.global lbl_8064158C
lbl_8064158C:
	.incbin "baserom.dol", 0x4735AC, 0x4
.global lbl_80641590
lbl_80641590:
	.incbin "baserom.dol", 0x4735B0, 0x4
.global lbl_80641594
lbl_80641594:
	.incbin "baserom.dol", 0x4735B4, 0x4
.global lbl_80641598
lbl_80641598:
	.incbin "baserom.dol", 0x4735B8, 0x8
.global lbl_806415A0
lbl_806415A0:
	.incbin "baserom.dol", 0x4735C0, 0x8
.global lbl_806415A8
lbl_806415A8:
	.incbin "baserom.dol", 0x4735C8, 0x8
.global lbl_806415B0
lbl_806415B0:
	.incbin "baserom.dol", 0x4735D0, 0x4
.global lbl_806415B4
lbl_806415B4:
	.incbin "baserom.dol", 0x4735D4, 0x4
.global lbl_806415B8
lbl_806415B8:
	.incbin "baserom.dol", 0x4735D8, 0x4
.global lbl_806415BC
lbl_806415BC:
	.incbin "baserom.dol", 0x4735DC, 0x4
.global lbl_806415C0
lbl_806415C0:
	.incbin "baserom.dol", 0x4735E0, 0x4
.global lbl_806415C4
lbl_806415C4:
	.incbin "baserom.dol", 0x4735E4, 0x4
.global lbl_806415C8
lbl_806415C8:
	.incbin "baserom.dol", 0x4735E8, 0x4
.global lbl_806415CC
lbl_806415CC:
	.incbin "baserom.dol", 0x4735EC, 0x4
.global lbl_806415D0
lbl_806415D0:
	.incbin "baserom.dol", 0x4735F0, 0x4
.global lbl_806415D4
lbl_806415D4:
	.incbin "baserom.dol", 0x4735F4, 0x4
.global lbl_806415D8
lbl_806415D8:
	.incbin "baserom.dol", 0x4735F8, 0x4
.global lbl_806415DC
lbl_806415DC:
	.incbin "baserom.dol", 0x4735FC, 0x4
.global lbl_806415E0
lbl_806415E0:
	.incbin "baserom.dol", 0x473600, 0x4
.global lbl_806415E4
lbl_806415E4:
	.incbin "baserom.dol", 0x473604, 0x4
.global lbl_806415E8
lbl_806415E8:
	.incbin "baserom.dol", 0x473608, 0x4
.global lbl_806415EC
lbl_806415EC:
	.incbin "baserom.dol", 0x47360C, 0x4
.global lbl_806415F0
lbl_806415F0:
	.incbin "baserom.dol", 0x473610, 0x4
.global lbl_806415F4
lbl_806415F4:
	.incbin "baserom.dol", 0x473614, 0x4
.global lbl_806415F8
lbl_806415F8:
	.incbin "baserom.dol", 0x473618, 0x4
.global lbl_806415FC
lbl_806415FC:
	.incbin "baserom.dol", 0x47361C, 0x4
.global lbl_80641600
lbl_80641600:
	.incbin "baserom.dol", 0x473620, 0x8
.global lbl_80641608
lbl_80641608:
	.incbin "baserom.dol", 0x473628, 0x4
.global lbl_8064160C
lbl_8064160C:
	.incbin "baserom.dol", 0x47362C, 0x4
.global lbl_80641610
lbl_80641610:
	.incbin "baserom.dol", 0x473630, 0x4
.global lbl_80641614
lbl_80641614:
	.incbin "baserom.dol", 0x473634, 0x4
.global lbl_80641618
lbl_80641618:
	.incbin "baserom.dol", 0x473638, 0x8
.global lbl_80641620
lbl_80641620:
	.incbin "baserom.dol", 0x473640, 0x8
.global lbl_80641628
lbl_80641628:
	.incbin "baserom.dol", 0x473648, 0x4
.global lbl_8064162C
lbl_8064162C:
	.incbin "baserom.dol", 0x47364C, 0x4
.global lbl_80641630
lbl_80641630:
	.incbin "baserom.dol", 0x473650, 0x4
.global lbl_80641634
lbl_80641634:
	.incbin "baserom.dol", 0x473654, 0x4
.global lbl_80641638
lbl_80641638:
	.incbin "baserom.dol", 0x473658, 0x8
.global lbl_80641640
lbl_80641640:
	.incbin "baserom.dol", 0x473660, 0x4
.global lbl_80641644
lbl_80641644:
	.incbin "baserom.dol", 0x473664, 0x4
.global lbl_80641648
lbl_80641648:
	.incbin "baserom.dol", 0x473668, 0x4
.global lbl_8064164C
lbl_8064164C:
	.incbin "baserom.dol", 0x47366C, 0x4
.global lbl_80641650
lbl_80641650:
	.incbin "baserom.dol", 0x473670, 0x4
.global lbl_80641654
lbl_80641654:
	.incbin "baserom.dol", 0x473674, 0x4
.global lbl_80641658
lbl_80641658:
	.incbin "baserom.dol", 0x473678, 0x4
.global lbl_8064165C
lbl_8064165C:
	.incbin "baserom.dol", 0x47367C, 0x4
.global lbl_80641660
lbl_80641660:
	.incbin "baserom.dol", 0x473680, 0x8
.global lbl_80641668
lbl_80641668:
	.incbin "baserom.dol", 0x473688, 0x8
.global lbl_80641670
lbl_80641670:
	.incbin "baserom.dol", 0x473690, 0x8
.global lbl_80641678
lbl_80641678:
	.incbin "baserom.dol", 0x473698, 0x4
.global lbl_8064167C
lbl_8064167C:
	.incbin "baserom.dol", 0x47369C, 0x4
.global lbl_80641680
lbl_80641680:
	.incbin "baserom.dol", 0x4736A0, 0x8
.global lbl_80641688
lbl_80641688:
	.incbin "baserom.dol", 0x4736A8, 0x2
.global lbl_8064168A
lbl_8064168A:
	.incbin "baserom.dol", 0x4736AA, 0x2
.global lbl_8064168C
lbl_8064168C:
	.incbin "baserom.dol", 0x4736AC, 0x2
.global lbl_8064168E
lbl_8064168E:
	.incbin "baserom.dol", 0x4736AE, 0x2
.global lbl_80641690
lbl_80641690:
	.incbin "baserom.dol", 0x4736B0, 0x8
.global lbl_80641698
lbl_80641698:
	.incbin "baserom.dol", 0x4736B8, 0x8
.global lbl_806416A0
lbl_806416A0:
	.incbin "baserom.dol", 0x4736C0, 0x8
.global lbl_806416A8
lbl_806416A8:
	.incbin "baserom.dol", 0x4736C8, 0x8
.global lbl_806416B0
lbl_806416B0:
	.incbin "baserom.dol", 0x4736D0, 0x8
.global lbl_806416B8
lbl_806416B8:
	.incbin "baserom.dol", 0x4736D8, 0x2
.global lbl_806416BA
lbl_806416BA:
	.incbin "baserom.dol", 0x4736DA, 0x2
.global lbl_806416BC
lbl_806416BC:
	.incbin "baserom.dol", 0x4736DC, 0x2
.global lbl_806416BE
lbl_806416BE:
	.incbin "baserom.dol", 0x4736DE, 0x2
.global lbl_806416C0
lbl_806416C0:
	.incbin "baserom.dol", 0x4736E0, 0x4
.global lbl_806416C4
lbl_806416C4:
	.incbin "baserom.dol", 0x4736E4, 0x4
.global lbl_806416C8
lbl_806416C8:
	.incbin "baserom.dol", 0x4736E8, 0x8
.global lbl_806416D0
lbl_806416D0:
	.incbin "baserom.dol", 0x4736F0, 0x8
.global lbl_806416D8
lbl_806416D8:
	.incbin "baserom.dol", 0x4736F8, 0x4
.global lbl_806416DC
lbl_806416DC:
	.incbin "baserom.dol", 0x4736FC, 0x4
.global lbl_806416E0
lbl_806416E0:
	.incbin "baserom.dol", 0x473700, 0x4
.global lbl_806416E4
lbl_806416E4:
	.incbin "baserom.dol", 0x473704, 0x4
.global lbl_806416E8
lbl_806416E8:
	.incbin "baserom.dol", 0x473708, 0x8
.global lbl_806416F0
lbl_806416F0:
	.incbin "baserom.dol", 0x473710, 0x1
.global lbl_806416F1
lbl_806416F1:
	.incbin "baserom.dol", 0x473711, 0x1
.global lbl_806416F2
lbl_806416F2:
	.incbin "baserom.dol", 0x473712, 0x1
.global lbl_806416F3
lbl_806416F3:
	.incbin "baserom.dol", 0x473713, 0x5
.global lbl_806416F8
lbl_806416F8:
	.incbin "baserom.dol", 0x473718, 0x8
.global lbl_80641700
lbl_80641700:
	.incbin "baserom.dol", 0x473720, 0x8
.global lbl_80641708
lbl_80641708:
	.incbin "baserom.dol", 0x473728, 0x8
.global lbl_80641710
lbl_80641710:
	.incbin "baserom.dol", 0x473730, 0x8
.global lbl_80641718
lbl_80641718:
	.incbin "baserom.dol", 0x473738, 0x8
.global lbl_80641720
lbl_80641720:
	.incbin "baserom.dol", 0x473740, 0x8
.global lbl_80641728
lbl_80641728:
	.incbin "baserom.dol", 0x473748, 0x20
.global lbl_80641748
lbl_80641748:
	.incbin "baserom.dol", 0x473768, 0x10
.global lbl_80641758
lbl_80641758:
	.incbin "baserom.dol", 0x473778, 0x1
.global lbl_80641759
lbl_80641759:
	.incbin "baserom.dol", 0x473779, 0x1
.global lbl_8064175A
lbl_8064175A:
	.incbin "baserom.dol", 0x47377A, 0x1
.global lbl_8064175B
lbl_8064175B:
	.incbin "baserom.dol", 0x47377B, 0x1
.global lbl_8064175C
lbl_8064175C:
	.incbin "baserom.dol", 0x47377C, 0x4
.global lbl_80641760
lbl_80641760:
	.incbin "baserom.dol", 0x473780, 0x8
.global lbl_80641768
lbl_80641768:
	.incbin "baserom.dol", 0x473788, 0x8
.global lbl_80641770
lbl_80641770:
	.incbin "baserom.dol", 0x473790, 0x8
.global lbl_80641778
lbl_80641778:
	.incbin "baserom.dol", 0x473798, 0x8
.global lbl_80641780
lbl_80641780:
	.incbin "baserom.dol", 0x4737A0, 0x8
.global lbl_80641788
lbl_80641788:
	.incbin "baserom.dol", 0x4737A8, 0x8
.global lbl_80641790
lbl_80641790:
	.incbin "baserom.dol", 0x4737B0, 0x8
.global lbl_80641798
lbl_80641798:
	.incbin "baserom.dol", 0x4737B8, 0x8
.global lbl_806417A0
lbl_806417A0:
	.incbin "baserom.dol", 0x4737C0, 0x8
.global lbl_806417A8
lbl_806417A8:
	.incbin "baserom.dol", 0x4737C8, 0x8
.global lbl_806417B0
lbl_806417B0:
	.incbin "baserom.dol", 0x4737D0, 0x8
.global lbl_806417B8
lbl_806417B8:
	.incbin "baserom.dol", 0x4737D8, 0x8
.global lbl_806417C0
lbl_806417C0:
	.incbin "baserom.dol", 0x4737E0, 0x8
.global lbl_806417C8
lbl_806417C8:
	.incbin "baserom.dol", 0x4737E8, 0x8
.global lbl_806417D0
lbl_806417D0:
	.incbin "baserom.dol", 0x4737F0, 0x8
.global lbl_806417D8
lbl_806417D8:
	.incbin "baserom.dol", 0x4737F8, 0x8
.global lbl_806417E0
lbl_806417E0:
	.incbin "baserom.dol", 0x473800, 0x8
.global lbl_806417E8
lbl_806417E8:
	.incbin "baserom.dol", 0x473808, 0x8
.global lbl_806417F0
lbl_806417F0:
	.incbin "baserom.dol", 0x473810, 0x8
.global lbl_806417F8
lbl_806417F8:
	.incbin "baserom.dol", 0x473818, 0x8
.global lbl_80641800
lbl_80641800:
	.incbin "baserom.dol", 0x473820, 0x8
.global lbl_80641808
lbl_80641808:
	.incbin "baserom.dol", 0x473828, 0x8
.global lbl_80641810
lbl_80641810:
	.incbin "baserom.dol", 0x473830, 0x8
.global lbl_80641818
lbl_80641818:
	.incbin "baserom.dol", 0x473838, 0x8
.global lbl_80641820
lbl_80641820:
	.incbin "baserom.dol", 0x473840, 0x8
.global lbl_80641828
lbl_80641828:
	.incbin "baserom.dol", 0x473848, 0x8
.global lbl_80641830
lbl_80641830:
	.incbin "baserom.dol", 0x473850, 0x8
.global lbl_80641838
lbl_80641838:
	.incbin "baserom.dol", 0x473858, 0x8
.global lbl_80641840
lbl_80641840:
	.incbin "baserom.dol", 0x473860, 0x8
.global lbl_80641848
lbl_80641848:
	.incbin "baserom.dol", 0x473868, 0x8
.global lbl_80641850
lbl_80641850:
	.incbin "baserom.dol", 0x473870, 0x8
.global lbl_80641858
lbl_80641858:
	.incbin "baserom.dol", 0x473878, 0x8
.global lbl_80641860
lbl_80641860:
	.incbin "baserom.dol", 0x473880, 0x8
.global lbl_80641868
lbl_80641868:
	.incbin "baserom.dol", 0x473888, 0x8
.global lbl_80641870
lbl_80641870:
	.incbin "baserom.dol", 0x473890, 0x8
.global lbl_80641878
lbl_80641878:
	.incbin "baserom.dol", 0x473898, 0x8
.global lbl_80641880
lbl_80641880:
	.incbin "baserom.dol", 0x4738A0, 0x8
.global lbl_80641888
lbl_80641888:
	.incbin "baserom.dol", 0x4738A8, 0x8
.global lbl_80641890
lbl_80641890:
	.incbin "baserom.dol", 0x4738B0, 0x8
.global lbl_80641898
lbl_80641898:
	.incbin "baserom.dol", 0x4738B8, 0x8
.global lbl_806418A0
lbl_806418A0:
	.incbin "baserom.dol", 0x4738C0, 0x8
.global lbl_806418A8
lbl_806418A8:
	.incbin "baserom.dol", 0x4738C8, 0x8
.global lbl_806418B0
lbl_806418B0:
	.incbin "baserom.dol", 0x4738D0, 0x8
.global lbl_806418B8
lbl_806418B8:
	.incbin "baserom.dol", 0x4738D8, 0x8
.global lbl_806418C0
lbl_806418C0:
	.incbin "baserom.dol", 0x4738E0, 0x8
.global lbl_806418C8
lbl_806418C8:
	.incbin "baserom.dol", 0x4738E8, 0x8
.global lbl_806418D0
lbl_806418D0:
	.incbin "baserom.dol", 0x4738F0, 0x8
.global lbl_806418D8
lbl_806418D8:
	.incbin "baserom.dol", 0x4738F8, 0x8
.global lbl_806418E0
lbl_806418E0:
	.incbin "baserom.dol", 0x473900, 0x8
.global lbl_806418E8
lbl_806418E8:
	.incbin "baserom.dol", 0x473908, 0x8
.global lbl_806418F0
lbl_806418F0:
	.incbin "baserom.dol", 0x473910, 0x8
.global lbl_806418F8
lbl_806418F8:
	.incbin "baserom.dol", 0x473918, 0x8
.global lbl_80641900
lbl_80641900:
	.incbin "baserom.dol", 0x473920, 0x8
.global lbl_80641908
lbl_80641908:
	.incbin "baserom.dol", 0x473928, 0x8
.global lbl_80641910
lbl_80641910:
	.incbin "baserom.dol", 0x473930, 0x8
.global lbl_80641918
lbl_80641918:
	.incbin "baserom.dol", 0x473938, 0x8
.global lbl_80641920
lbl_80641920:
	.incbin "baserom.dol", 0x473940, 0x8
.global lbl_80641928
lbl_80641928:
	.incbin "baserom.dol", 0x473948, 0x8
.global lbl_80641930
lbl_80641930:
	.incbin "baserom.dol", 0x473950, 0x8
.global lbl_80641938
lbl_80641938:
	.incbin "baserom.dol", 0x473958, 0x8
.global lbl_80641940
lbl_80641940:
	.incbin "baserom.dol", 0x473960, 0x8
.global lbl_80641948
lbl_80641948:
	.incbin "baserom.dol", 0x473968, 0x8
.global lbl_80641950
lbl_80641950:
	.incbin "baserom.dol", 0x473970, 0x8
.global lbl_80641958
lbl_80641958:
	.incbin "baserom.dol", 0x473978, 0x8
.global lbl_80641960
lbl_80641960:
	.incbin "baserom.dol", 0x473980, 0x8
.global lbl_80641968
lbl_80641968:
	.incbin "baserom.dol", 0x473988, 0x8
.global lbl_80641970
lbl_80641970:
	.incbin "baserom.dol", 0x473990, 0x8
.global lbl_80641978
lbl_80641978:
	.incbin "baserom.dol", 0x473998, 0x8
.global lbl_80641980
lbl_80641980:
	.incbin "baserom.dol", 0x4739A0, 0x8
.global lbl_80641988
lbl_80641988:
	.incbin "baserom.dol", 0x4739A8, 0x8
.global lbl_80641990
lbl_80641990:
	.incbin "baserom.dol", 0x4739B0, 0x8
.global lbl_80641998
lbl_80641998:
	.incbin "baserom.dol", 0x4739B8, 0x8
.global lbl_806419A0
lbl_806419A0:
	.incbin "baserom.dol", 0x4739C0, 0x8
.global lbl_806419A8
lbl_806419A8:
	.incbin "baserom.dol", 0x4739C8, 0x8
.global lbl_806419B0
lbl_806419B0:
	.incbin "baserom.dol", 0x4739D0, 0x8
.global lbl_806419B8
lbl_806419B8:
	.incbin "baserom.dol", 0x4739D8, 0x8
.global lbl_806419C0
lbl_806419C0:
	.incbin "baserom.dol", 0x4739E0, 0x8
.global lbl_806419C8
lbl_806419C8:
	.incbin "baserom.dol", 0x4739E8, 0x8
.global lbl_806419D0
lbl_806419D0:
	.incbin "baserom.dol", 0x4739F0, 0x8
.global lbl_806419D8
lbl_806419D8:
	.incbin "baserom.dol", 0x4739F8, 0x8
.global lbl_806419E0
lbl_806419E0:
	.incbin "baserom.dol", 0x473A00, 0x8
.global lbl_806419E8
lbl_806419E8:
	.incbin "baserom.dol", 0x473A08, 0x8
.global lbl_806419F0
lbl_806419F0:
	.incbin "baserom.dol", 0x473A10, 0x8
.global lbl_806419F8
lbl_806419F8:
	.incbin "baserom.dol", 0x473A18, 0x8
.global lbl_80641A00
lbl_80641A00:
	.incbin "baserom.dol", 0x473A20, 0x8
.global lbl_80641A08
lbl_80641A08:
	.incbin "baserom.dol", 0x473A28, 0x8
.global lbl_80641A10
lbl_80641A10:
	.incbin "baserom.dol", 0x473A30, 0x8
.global lbl_80641A18
lbl_80641A18:
	.incbin "baserom.dol", 0x473A38, 0x8
.global lbl_80641A20
lbl_80641A20:
	.incbin "baserom.dol", 0x473A40, 0x8
.global lbl_80641A28
lbl_80641A28:
	.incbin "baserom.dol", 0x473A48, 0x8
.global lbl_80641A30
lbl_80641A30:
	.incbin "baserom.dol", 0x473A50, 0x8
.global lbl_80641A38
lbl_80641A38:
	.incbin "baserom.dol", 0x473A58, 0x8
.global lbl_80641A40
lbl_80641A40:
	.incbin "baserom.dol", 0x473A60, 0x8
.global lbl_80641A48
lbl_80641A48:
	.incbin "baserom.dol", 0x473A68, 0x8
.global lbl_80641A50
lbl_80641A50:
	.incbin "baserom.dol", 0x473A70, 0x8
.global lbl_80641A58
lbl_80641A58:
	.incbin "baserom.dol", 0x473A78, 0x8
.global lbl_80641A60
lbl_80641A60:
	.incbin "baserom.dol", 0x473A80, 0x8
.global lbl_80641A68
lbl_80641A68:
	.incbin "baserom.dol", 0x473A88, 0x8
.global lbl_80641A70
lbl_80641A70:
	.incbin "baserom.dol", 0x473A90, 0x8
.global lbl_80641A78
lbl_80641A78:
	.incbin "baserom.dol", 0x473A98, 0x8
.global lbl_80641A80
lbl_80641A80:
	.incbin "baserom.dol", 0x473AA0, 0x8
.global lbl_80641A88
lbl_80641A88:
	.incbin "baserom.dol", 0x473AA8, 0x8
.global lbl_80641A90
lbl_80641A90:
	.incbin "baserom.dol", 0x473AB0, 0x8
.global lbl_80641A98
lbl_80641A98:
	.incbin "baserom.dol", 0x473AB8, 0x8
.global lbl_80641AA0
lbl_80641AA0:
	.incbin "baserom.dol", 0x473AC0, 0x8
.global lbl_80641AA8
lbl_80641AA8:
	.incbin "baserom.dol", 0x473AC8, 0x8
.global lbl_80641AB0
lbl_80641AB0:
	.incbin "baserom.dol", 0x473AD0, 0x8
.global lbl_80641AB8
lbl_80641AB8:
	.incbin "baserom.dol", 0x473AD8, 0x8
.global lbl_80641AC0
lbl_80641AC0:
	.incbin "baserom.dol", 0x473AE0, 0x8
.global lbl_80641AC8
lbl_80641AC8:
	.incbin "baserom.dol", 0x473AE8, 0x8
.global lbl_80641AD0
lbl_80641AD0:
	.incbin "baserom.dol", 0x473AF0, 0x8
.global lbl_80641AD8
lbl_80641AD8:
	.incbin "baserom.dol", 0x473AF8, 0x8
.global lbl_80641AE0
lbl_80641AE0:
	.incbin "baserom.dol", 0x473B00, 0x8
.global lbl_80641AE8
lbl_80641AE8:
	.incbin "baserom.dol", 0x473B08, 0x8
.global lbl_80641AF0
lbl_80641AF0:
	.incbin "baserom.dol", 0x473B10, 0x8
.global lbl_80641AF8
lbl_80641AF8:
	.incbin "baserom.dol", 0x473B18, 0x8
.global lbl_80641B00
lbl_80641B00:
	.incbin "baserom.dol", 0x473B20, 0x8
.global lbl_80641B08
lbl_80641B08:
	.incbin "baserom.dol", 0x473B28, 0x8
.global lbl_80641B10
lbl_80641B10:
	.incbin "baserom.dol", 0x473B30, 0x8
.global lbl_80641B18
lbl_80641B18:
	.incbin "baserom.dol", 0x473B38, 0x8
.global lbl_80641B20
lbl_80641B20:
	.incbin "baserom.dol", 0x473B40, 0x8
.global lbl_80641B28
lbl_80641B28:
	.incbin "baserom.dol", 0x473B48, 0x8
.global lbl_80641B30
lbl_80641B30:
	.incbin "baserom.dol", 0x473B50, 0x8
.global lbl_80641B38
lbl_80641B38:
	.incbin "baserom.dol", 0x473B58, 0x8
.global lbl_80641B40
lbl_80641B40:
	.incbin "baserom.dol", 0x473B60, 0x8
.global lbl_80641B48
lbl_80641B48:
	.incbin "baserom.dol", 0x473B68, 0x8
.global lbl_80641B50
lbl_80641B50:
	.incbin "baserom.dol", 0x473B70, 0x8
.global lbl_80641B58
lbl_80641B58:
	.incbin "baserom.dol", 0x473B78, 0x8
.global lbl_80641B60
lbl_80641B60:
	.incbin "baserom.dol", 0x473B80, 0x8
.global lbl_80641B68
lbl_80641B68:
	.incbin "baserom.dol", 0x473B88, 0x8
.global lbl_80641B70
lbl_80641B70:
	.incbin "baserom.dol", 0x473B90, 0x8
.global lbl_80641B78
lbl_80641B78:
	.incbin "baserom.dol", 0x473B98, 0x8
.global lbl_80641B80
lbl_80641B80:
	.incbin "baserom.dol", 0x473BA0, 0x8
.global lbl_80641B88
lbl_80641B88:
	.incbin "baserom.dol", 0x473BA8, 0x8
.global lbl_80641B90
lbl_80641B90:
	.incbin "baserom.dol", 0x473BB0, 0x8
.global lbl_80641B98
lbl_80641B98:
	.incbin "baserom.dol", 0x473BB8, 0x8
.global lbl_80641BA0
lbl_80641BA0:
	.incbin "baserom.dol", 0x473BC0, 0x8
.global lbl_80641BA8
lbl_80641BA8:
	.incbin "baserom.dol", 0x473BC8, 0x8
.global lbl_80641BB0
lbl_80641BB0:
	.incbin "baserom.dol", 0x473BD0, 0x8
.global lbl_80641BB8
lbl_80641BB8:
	.incbin "baserom.dol", 0x473BD8, 0x8
.global lbl_80641BC0
lbl_80641BC0:
	.incbin "baserom.dol", 0x473BE0, 0x8
.global lbl_80641BC8
lbl_80641BC8:
	.incbin "baserom.dol", 0x473BE8, 0x8
.global lbl_80641BD0
lbl_80641BD0:
	.incbin "baserom.dol", 0x473BF0, 0x8
.global lbl_80641BD8
lbl_80641BD8:
	.incbin "baserom.dol", 0x473BF8, 0x8
