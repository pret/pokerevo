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
.global lbl_80641BE0
lbl_80641BE0:
	.incbin "baserom.dol", 0x473C00, 0x4
.global lbl_80641BE4
lbl_80641BE4:
	.incbin "baserom.dol", 0x473C04, 0x4
.global lbl_80641BE8
lbl_80641BE8:
	.incbin "baserom.dol", 0x473C08, 0x8
.global lbl_80641BF0
lbl_80641BF0:
	.incbin "baserom.dol", 0x473C10, 0x4
.global lbl_80641BF4
lbl_80641BF4:
	.incbin "baserom.dol", 0x473C14, 0x4
.global lbl_80641BF8
lbl_80641BF8:
	.incbin "baserom.dol", 0x473C18, 0x4
.global lbl_80641BFC
lbl_80641BFC:
	.incbin "baserom.dol", 0x473C1C, 0x4
.global lbl_80641C00
lbl_80641C00:
	.incbin "baserom.dol", 0x473C20, 0x4
.global lbl_80641C04
lbl_80641C04:
	.incbin "baserom.dol", 0x473C24, 0x4
.global lbl_80641C08
lbl_80641C08:
	.incbin "baserom.dol", 0x473C28, 0x4
.global lbl_80641C0C
lbl_80641C0C:
	.incbin "baserom.dol", 0x473C2C, 0x4
.global lbl_80641C10
lbl_80641C10:
	.incbin "baserom.dol", 0x473C30, 0x4
.global lbl_80641C14
lbl_80641C14:
	.incbin "baserom.dol", 0x473C34, 0x4
.global lbl_80641C18
lbl_80641C18:
	.incbin "baserom.dol", 0x473C38, 0x4
.global lbl_80641C1C
lbl_80641C1C:
	.incbin "baserom.dol", 0x473C3C, 0x4
.global lbl_80641C20
lbl_80641C20:
	.incbin "baserom.dol", 0x473C40, 0x8
.global lbl_80641C28
lbl_80641C28:
	.incbin "baserom.dol", 0x473C48, 0x8
.global lbl_80641C30
lbl_80641C30:
	.incbin "baserom.dol", 0x473C50, 0x4
.global lbl_80641C34
lbl_80641C34:
	.incbin "baserom.dol", 0x473C54, 0x4
.global lbl_80641C38
lbl_80641C38:
	.incbin "baserom.dol", 0x473C58, 0x4
.global lbl_80641C3C
lbl_80641C3C:
	.incbin "baserom.dol", 0x473C5C, 0x4
.global lbl_80641C40
lbl_80641C40:
	.incbin "baserom.dol", 0x473C60, 0x8
.global lbl_80641C48
lbl_80641C48:
	.incbin "baserom.dol", 0x473C68, 0x4
.global lbl_80641C4C
lbl_80641C4C:
	.incbin "baserom.dol", 0x473C6C, 0x4
.global lbl_80641C50
lbl_80641C50:
	.incbin "baserom.dol", 0x473C70, 0x4
.global lbl_80641C54
lbl_80641C54:
	.incbin "baserom.dol", 0x473C74, 0x4
.global lbl_80641C58
lbl_80641C58:
	.incbin "baserom.dol", 0x473C78, 0x4
.global lbl_80641C5C
lbl_80641C5C:
	.incbin "baserom.dol", 0x473C7C, 0x4
.global lbl_80641C60
lbl_80641C60:
	.incbin "baserom.dol", 0x473C80, 0x8
.global lbl_80641C68
lbl_80641C68:
	.incbin "baserom.dol", 0x473C88, 0x4
.global lbl_80641C6C
lbl_80641C6C:
	.incbin "baserom.dol", 0x473C8C, 0x4
.global lbl_80641C70
lbl_80641C70:
	.incbin "baserom.dol", 0x473C90, 0x8
.global lbl_80641C78
lbl_80641C78:
	.incbin "baserom.dol", 0x473C98, 0x8
.global lbl_80641C80
lbl_80641C80:
	.incbin "baserom.dol", 0x473CA0, 0x8
.global lbl_80641C88
lbl_80641C88:
	.incbin "baserom.dol", 0x473CA8, 0x8
.global lbl_80641C90
lbl_80641C90:
	.incbin "baserom.dol", 0x473CB0, 0x8
.global lbl_80641C98
lbl_80641C98:
	.incbin "baserom.dol", 0x473CB8, 0x4
.global lbl_80641C9C
lbl_80641C9C:
	.incbin "baserom.dol", 0x473CBC, 0x4
.global lbl_80641CA0
lbl_80641CA0:
	.incbin "baserom.dol", 0x473CC0, 0x4
.global lbl_80641CA4
lbl_80641CA4:
	.incbin "baserom.dol", 0x473CC4, 0x4
.global lbl_80641CA8
lbl_80641CA8:
	.incbin "baserom.dol", 0x473CC8, 0x8
.global lbl_80641CB0
lbl_80641CB0:
	.incbin "baserom.dol", 0x473CD0, 0x4
.global lbl_80641CB4
lbl_80641CB4:
	.incbin "baserom.dol", 0x473CD4, 0x4
.global lbl_80641CB8
lbl_80641CB8:
	.incbin "baserom.dol", 0x473CD8, 0x4
.global lbl_80641CBC
lbl_80641CBC:
	.incbin "baserom.dol", 0x473CDC, 0x4
.global lbl_80641CC0
lbl_80641CC0:
	.incbin "baserom.dol", 0x473CE0, 0x4
.global lbl_80641CC4
lbl_80641CC4:
	.incbin "baserom.dol", 0x473CE4, 0x4
.global lbl_80641CC8
lbl_80641CC8:
	.incbin "baserom.dol", 0x473CE8, 0x4
.global lbl_80641CCC
lbl_80641CCC:
	.incbin "baserom.dol", 0x473CEC, 0x4
.global lbl_80641CD0
lbl_80641CD0:
	.incbin "baserom.dol", 0x473CF0, 0x4
.global lbl_80641CD4
lbl_80641CD4:
	.incbin "baserom.dol", 0x473CF4, 0x4
.global lbl_80641CD8
lbl_80641CD8:
	.incbin "baserom.dol", 0x473CF8, 0x4
.global lbl_80641CDC
lbl_80641CDC:
	.incbin "baserom.dol", 0x473CFC, 0x4
.global lbl_80641CE0
lbl_80641CE0:
	.incbin "baserom.dol", 0x473D00, 0x4
.global lbl_80641CE4
lbl_80641CE4:
	.incbin "baserom.dol", 0x473D04, 0x4
.global lbl_80641CE8
lbl_80641CE8:
	.incbin "baserom.dol", 0x473D08, 0x4
.global lbl_80641CEC
lbl_80641CEC:
	.incbin "baserom.dol", 0x473D0C, 0x4
.global lbl_80641CF0
lbl_80641CF0:
	.incbin "baserom.dol", 0x473D10, 0x4
.global lbl_80641CF4
lbl_80641CF4:
	.incbin "baserom.dol", 0x473D14, 0x4
.global lbl_80641CF8
lbl_80641CF8:
	.incbin "baserom.dol", 0x473D18, 0x4
.global lbl_80641CFC
lbl_80641CFC:
	.incbin "baserom.dol", 0x473D1C, 0x4
.global lbl_80641D00
lbl_80641D00:
	.incbin "baserom.dol", 0x473D20, 0x4
.global lbl_80641D04
lbl_80641D04:
	.incbin "baserom.dol", 0x473D24, 0x4
.global lbl_80641D08
lbl_80641D08:
	.incbin "baserom.dol", 0x473D28, 0x4
.global lbl_80641D0C
lbl_80641D0C:
	.incbin "baserom.dol", 0x473D2C, 0x4
.global lbl_80641D10
lbl_80641D10:
	.incbin "baserom.dol", 0x473D30, 0x4
.global lbl_80641D14
lbl_80641D14:
	.incbin "baserom.dol", 0x473D34, 0x4
.global lbl_80641D18
lbl_80641D18:
	.incbin "baserom.dol", 0x473D38, 0x4
.global lbl_80641D1C
lbl_80641D1C:
	.incbin "baserom.dol", 0x473D3C, 0x4
.global lbl_80641D20
lbl_80641D20:
	.incbin "baserom.dol", 0x473D40, 0x4
.global lbl_80641D24
lbl_80641D24:
	.incbin "baserom.dol", 0x473D44, 0x4
.global lbl_80641D28
lbl_80641D28:
	.incbin "baserom.dol", 0x473D48, 0x8
.global lbl_80641D30
lbl_80641D30:
	.incbin "baserom.dol", 0x473D50, 0x8
.global lbl_80641D38
lbl_80641D38:
	.incbin "baserom.dol", 0x473D58, 0x8
.global lbl_80641D40
lbl_80641D40:
	.incbin "baserom.dol", 0x473D60, 0x4
.global lbl_80641D44
lbl_80641D44:
	.incbin "baserom.dol", 0x473D64, 0x4
.global lbl_80641D48
lbl_80641D48:
	.incbin "baserom.dol", 0x473D68, 0x4
.global lbl_80641D4C
lbl_80641D4C:
	.incbin "baserom.dol", 0x473D6C, 0x4
.global lbl_80641D50
lbl_80641D50:
	.incbin "baserom.dol", 0x473D70, 0x4
.global lbl_80641D54
lbl_80641D54:
	.incbin "baserom.dol", 0x473D74, 0x4
.global lbl_80641D58
lbl_80641D58:
	.incbin "baserom.dol", 0x473D78, 0x4
.global lbl_80641D5C
lbl_80641D5C:
	.incbin "baserom.dol", 0x473D7C, 0x4
.global lbl_80641D60
lbl_80641D60:
	.incbin "baserom.dol", 0x473D80, 0x4
.global lbl_80641D64
lbl_80641D64:
	.incbin "baserom.dol", 0x473D84, 0x4
.global lbl_80641D68
lbl_80641D68:
	.incbin "baserom.dol", 0x473D88, 0x4
.global lbl_80641D6C
lbl_80641D6C:
	.incbin "baserom.dol", 0x473D8C, 0x4
.global lbl_80641D70
lbl_80641D70:
	.incbin "baserom.dol", 0x473D90, 0x4
.global lbl_80641D74
lbl_80641D74:
	.incbin "baserom.dol", 0x473D94, 0x4
.global lbl_80641D78
lbl_80641D78:
	.incbin "baserom.dol", 0x473D98, 0x4
.global lbl_80641D7C
lbl_80641D7C:
	.incbin "baserom.dol", 0x473D9C, 0x4
.global lbl_80641D80
lbl_80641D80:
	.incbin "baserom.dol", 0x473DA0, 0x8
.global lbl_80641D88
lbl_80641D88:
	.incbin "baserom.dol", 0x473DA8, 0x8
.global lbl_80641D90
lbl_80641D90:
	.incbin "baserom.dol", 0x473DB0, 0x4
.global lbl_80641D94
lbl_80641D94:
	.incbin "baserom.dol", 0x473DB4, 0x4
.global lbl_80641D98
lbl_80641D98:
	.incbin "baserom.dol", 0x473DB8, 0x4
.global lbl_80641D9C
lbl_80641D9C:
	.incbin "baserom.dol", 0x473DBC, 0x4
.global lbl_80641DA0
lbl_80641DA0:
	.incbin "baserom.dol", 0x473DC0, 0x4
.global lbl_80641DA4
lbl_80641DA4:
	.incbin "baserom.dol", 0x473DC4, 0x4
.global lbl_80641DA8
lbl_80641DA8:
	.incbin "baserom.dol", 0x473DC8, 0x4
.global lbl_80641DAC
lbl_80641DAC:
	.incbin "baserom.dol", 0x473DCC, 0x4
.global lbl_80641DB0
lbl_80641DB0:
	.incbin "baserom.dol", 0x473DD0, 0x4
.global lbl_80641DB4
lbl_80641DB4:
	.incbin "baserom.dol", 0x473DD4, 0x4
.global lbl_80641DB8
lbl_80641DB8:
	.incbin "baserom.dol", 0x473DD8, 0x4
.global lbl_80641DBC
lbl_80641DBC:
	.incbin "baserom.dol", 0x473DDC, 0x4
.global lbl_80641DC0
lbl_80641DC0:
	.incbin "baserom.dol", 0x473DE0, 0x4
.global lbl_80641DC4
lbl_80641DC4:
	.incbin "baserom.dol", 0x473DE4, 0x4
.global lbl_80641DC8
lbl_80641DC8:
	.incbin "baserom.dol", 0x473DE8, 0x8
.global lbl_80641DD0
lbl_80641DD0:
	.incbin "baserom.dol", 0x473DF0, 0x4
.global lbl_80641DD4
lbl_80641DD4:
	.incbin "baserom.dol", 0x473DF4, 0x4
.global lbl_80641DD8
lbl_80641DD8:
	.incbin "baserom.dol", 0x473DF8, 0x4
.global lbl_80641DDC
lbl_80641DDC:
	.incbin "baserom.dol", 0x473DFC, 0x4
.global lbl_80641DE0
lbl_80641DE0:
	.incbin "baserom.dol", 0x473E00, 0x4
.global lbl_80641DE4
lbl_80641DE4:
	.incbin "baserom.dol", 0x473E04, 0x4
.global lbl_80641DE8
lbl_80641DE8:
	.incbin "baserom.dol", 0x473E08, 0x8
.global lbl_80641DF0
lbl_80641DF0:
	.incbin "baserom.dol", 0x473E10, 0x4
.global lbl_80641DF4
lbl_80641DF4:
	.incbin "baserom.dol", 0x473E14, 0x4
.global lbl_80641DF8
lbl_80641DF8:
	.incbin "baserom.dol", 0x473E18, 0x4
.global lbl_80641DFC
lbl_80641DFC:
	.incbin "baserom.dol", 0x473E1C, 0x4
.global lbl_80641E00
lbl_80641E00:
	.incbin "baserom.dol", 0x473E20, 0x4
.global lbl_80641E04
lbl_80641E04:
	.incbin "baserom.dol", 0x473E24, 0x4
.global lbl_80641E08
lbl_80641E08:
	.incbin "baserom.dol", 0x473E28, 0x4
.global lbl_80641E0C
lbl_80641E0C:
	.incbin "baserom.dol", 0x473E2C, 0x4
.global lbl_80641E10
lbl_80641E10:
	.incbin "baserom.dol", 0x473E30, 0x4
.global lbl_80641E14
lbl_80641E14:
	.incbin "baserom.dol", 0x473E34, 0x4
.global lbl_80641E18
lbl_80641E18:
	.incbin "baserom.dol", 0x473E38, 0x4
.global lbl_80641E1C
lbl_80641E1C:
	.incbin "baserom.dol", 0x473E3C, 0x4
.global lbl_80641E20
lbl_80641E20:
	.incbin "baserom.dol", 0x473E40, 0x4
.global lbl_80641E24
lbl_80641E24:
	.incbin "baserom.dol", 0x473E44, 0x4
.global lbl_80641E28
lbl_80641E28:
	.incbin "baserom.dol", 0x473E48, 0x4
.global lbl_80641E2C
lbl_80641E2C:
	.incbin "baserom.dol", 0x473E4C, 0x4
.global lbl_80641E30
lbl_80641E30:
	.incbin "baserom.dol", 0x473E50, 0x4
.global lbl_80641E34
lbl_80641E34:
	.incbin "baserom.dol", 0x473E54, 0x4
.global lbl_80641E38
lbl_80641E38:
	.incbin "baserom.dol", 0x473E58, 0x8
.global lbl_80641E40
lbl_80641E40:
	.incbin "baserom.dol", 0x473E60, 0x4
.global lbl_80641E44
lbl_80641E44:
	.incbin "baserom.dol", 0x473E64, 0x4
.global lbl_80641E48
lbl_80641E48:
	.incbin "baserom.dol", 0x473E68, 0x4
.global lbl_80641E4C
lbl_80641E4C:
	.incbin "baserom.dol", 0x473E6C, 0x4
.global lbl_80641E50
lbl_80641E50:
	.incbin "baserom.dol", 0x473E70, 0x4
.global lbl_80641E54
lbl_80641E54:
	.incbin "baserom.dol", 0x473E74, 0x4
.global lbl_80641E58
lbl_80641E58:
	.incbin "baserom.dol", 0x473E78, 0x4
.global lbl_80641E5C
lbl_80641E5C:
	.incbin "baserom.dol", 0x473E7C, 0x4
.global lbl_80641E60
lbl_80641E60:
	.incbin "baserom.dol", 0x473E80, 0x4
.global lbl_80641E64
lbl_80641E64:
	.incbin "baserom.dol", 0x473E84, 0x4
.global lbl_80641E68
lbl_80641E68:
	.incbin "baserom.dol", 0x473E88, 0x4
.global lbl_80641E6C
lbl_80641E6C:
	.incbin "baserom.dol", 0x473E8C, 0x4
.global lbl_80641E70
lbl_80641E70:
	.incbin "baserom.dol", 0x473E90, 0x8
.global lbl_80641E78
lbl_80641E78:
	.incbin "baserom.dol", 0x473E98, 0x4
.global lbl_80641E7C
lbl_80641E7C:
	.incbin "baserom.dol", 0x473E9C, 0x4
.global lbl_80641E80
lbl_80641E80:
	.incbin "baserom.dol", 0x473EA0, 0x4
.global lbl_80641E84
lbl_80641E84:
	.incbin "baserom.dol", 0x473EA4, 0x4
.global lbl_80641E88
lbl_80641E88:
	.incbin "baserom.dol", 0x473EA8, 0x4
.global lbl_80641E8C
lbl_80641E8C:
	.incbin "baserom.dol", 0x473EAC, 0x4
.global lbl_80641E90
lbl_80641E90:
	.incbin "baserom.dol", 0x473EB0, 0x4
.global lbl_80641E94
lbl_80641E94:
	.incbin "baserom.dol", 0x473EB4, 0x4
.global lbl_80641E98
lbl_80641E98:
	.incbin "baserom.dol", 0x473EB8, 0x8
.global lbl_80641EA0
lbl_80641EA0:
	.incbin "baserom.dol", 0x473EC0, 0x4
.global lbl_80641EA4
lbl_80641EA4:
	.incbin "baserom.dol", 0x473EC4, 0x4
.global lbl_80641EA8
lbl_80641EA8:
	.incbin "baserom.dol", 0x473EC8, 0x4
.global lbl_80641EAC
lbl_80641EAC:
	.incbin "baserom.dol", 0x473ECC, 0x4
.global lbl_80641EB0
lbl_80641EB0:
	.incbin "baserom.dol", 0x473ED0, 0x4
.global lbl_80641EB4
lbl_80641EB4:
	.incbin "baserom.dol", 0x473ED4, 0x4
.global lbl_80641EB8
lbl_80641EB8:
	.incbin "baserom.dol", 0x473ED8, 0x4
.global lbl_80641EBC
lbl_80641EBC:
	.incbin "baserom.dol", 0x473EDC, 0x4
.global lbl_80641EC0
lbl_80641EC0:
	.incbin "baserom.dol", 0x473EE0, 0x4
.global lbl_80641EC4
lbl_80641EC4:
	.incbin "baserom.dol", 0x473EE4, 0x4
.global lbl_80641EC8
lbl_80641EC8:
	.incbin "baserom.dol", 0x473EE8, 0x4
.global lbl_80641ECC
lbl_80641ECC:
	.incbin "baserom.dol", 0x473EEC, 0x4
.global lbl_80641ED0
lbl_80641ED0:
	.incbin "baserom.dol", 0x473EF0, 0x4
.global lbl_80641ED4
lbl_80641ED4:
	.incbin "baserom.dol", 0x473EF4, 0x4
.global lbl_80641ED8
lbl_80641ED8:
	.incbin "baserom.dol", 0x473EF8, 0x4
.global lbl_80641EDC
lbl_80641EDC:
	.incbin "baserom.dol", 0x473EFC, 0x4
.global lbl_80641EE0
lbl_80641EE0:
	.incbin "baserom.dol", 0x473F00, 0x4
.global lbl_80641EE4
lbl_80641EE4:
	.incbin "baserom.dol", 0x473F04, 0x4
.global lbl_80641EE8
lbl_80641EE8:
	.incbin "baserom.dol", 0x473F08, 0x4
.global lbl_80641EEC
lbl_80641EEC:
	.incbin "baserom.dol", 0x473F0C, 0x4
.global lbl_80641EF0
lbl_80641EF0:
	.incbin "baserom.dol", 0x473F10, 0x4
.global lbl_80641EF4
lbl_80641EF4:
	.incbin "baserom.dol", 0x473F14, 0x4
.global lbl_80641EF8
lbl_80641EF8:
	.incbin "baserom.dol", 0x473F18, 0x4
.global lbl_80641EFC
lbl_80641EFC:
	.incbin "baserom.dol", 0x473F1C, 0x4
.global lbl_80641F00
lbl_80641F00:
	.incbin "baserom.dol", 0x473F20, 0x4
.global lbl_80641F04
lbl_80641F04:
	.incbin "baserom.dol", 0x473F24, 0x4
.global lbl_80641F08
lbl_80641F08:
	.incbin "baserom.dol", 0x473F28, 0x4
.global lbl_80641F0C
lbl_80641F0C:
	.incbin "baserom.dol", 0x473F2C, 0x4
.global lbl_80641F10
lbl_80641F10:
	.incbin "baserom.dol", 0x473F30, 0x4
.global lbl_80641F14
lbl_80641F14:
	.incbin "baserom.dol", 0x473F34, 0x4
.global lbl_80641F18
lbl_80641F18:
	.incbin "baserom.dol", 0x473F38, 0x4
.global lbl_80641F1C
lbl_80641F1C:
	.incbin "baserom.dol", 0x473F3C, 0x4
.global lbl_80641F20
lbl_80641F20:
	.incbin "baserom.dol", 0x473F40, 0x4
.global lbl_80641F24
lbl_80641F24:
	.incbin "baserom.dol", 0x473F44, 0x4
.global lbl_80641F28
lbl_80641F28:
	.incbin "baserom.dol", 0x473F48, 0x4
.global lbl_80641F2C
lbl_80641F2C:
	.incbin "baserom.dol", 0x473F4C, 0x4
.global lbl_80641F30
lbl_80641F30:
	.incbin "baserom.dol", 0x473F50, 0x8
.global lbl_80641F38
lbl_80641F38:
	.incbin "baserom.dol", 0x473F58, 0x8
.global lbl_80641F40
lbl_80641F40:
	.incbin "baserom.dol", 0x473F60, 0x4
.global lbl_80641F44
lbl_80641F44:
	.incbin "baserom.dol", 0x473F64, 0x4
.global lbl_80641F48
lbl_80641F48:
	.incbin "baserom.dol", 0x473F68, 0x4
.global lbl_80641F4C
lbl_80641F4C:
	.incbin "baserom.dol", 0x473F6C, 0x4
.global lbl_80641F50
lbl_80641F50:
	.incbin "baserom.dol", 0x473F70, 0x4
.global lbl_80641F54
lbl_80641F54:
	.incbin "baserom.dol", 0x473F74, 0x4
.global lbl_80641F58
lbl_80641F58:
	.incbin "baserom.dol", 0x473F78, 0x4
.global lbl_80641F5C
lbl_80641F5C:
	.incbin "baserom.dol", 0x473F7C, 0x4
.global lbl_80641F60
lbl_80641F60:
	.incbin "baserom.dol", 0x473F80, 0x4
.global lbl_80641F64
lbl_80641F64:
	.incbin "baserom.dol", 0x473F84, 0x4
.global lbl_80641F68
lbl_80641F68:
	.incbin "baserom.dol", 0x473F88, 0x4
.global lbl_80641F6C
lbl_80641F6C:
	.incbin "baserom.dol", 0x473F8C, 0x4
.global lbl_80641F70
lbl_80641F70:
	.incbin "baserom.dol", 0x473F90, 0x4
.global lbl_80641F74
lbl_80641F74:
	.incbin "baserom.dol", 0x473F94, 0x4
.global lbl_80641F78
lbl_80641F78:
	.incbin "baserom.dol", 0x473F98, 0x4
.global lbl_80641F7C
lbl_80641F7C:
	.incbin "baserom.dol", 0x473F9C, 0x4
.global lbl_80641F80
lbl_80641F80:
	.incbin "baserom.dol", 0x473FA0, 0x8
.global lbl_80641F88
lbl_80641F88:
	.incbin "baserom.dol", 0x473FA8, 0x4
.global lbl_80641F8C
lbl_80641F8C:
	.incbin "baserom.dol", 0x473FAC, 0x4
.global lbl_80641F90
lbl_80641F90:
	.incbin "baserom.dol", 0x473FB0, 0x4
.global lbl_80641F94
lbl_80641F94:
	.incbin "baserom.dol", 0x473FB4, 0x4
.global lbl_80641F98
lbl_80641F98:
	.incbin "baserom.dol", 0x473FB8, 0x4
.global lbl_80641F9C
lbl_80641F9C:
	.incbin "baserom.dol", 0x473FBC, 0x4
.global lbl_80641FA0
lbl_80641FA0:
	.incbin "baserom.dol", 0x473FC0, 0x4
.global lbl_80641FA4
lbl_80641FA4:
	.incbin "baserom.dol", 0x473FC4, 0x4
.global lbl_80641FA8
lbl_80641FA8:
	.incbin "baserom.dol", 0x473FC8, 0x8
.global lbl_80641FB0
lbl_80641FB0:
	.incbin "baserom.dol", 0x473FD0, 0x4
.global lbl_80641FB4
lbl_80641FB4:
	.incbin "baserom.dol", 0x473FD4, 0x4
.global lbl_80641FB8
lbl_80641FB8:
	.incbin "baserom.dol", 0x473FD8, 0x4
.global lbl_80641FBC
lbl_80641FBC:
	.incbin "baserom.dol", 0x473FDC, 0x4
.global lbl_80641FC0
lbl_80641FC0:
	.incbin "baserom.dol", 0x473FE0, 0x8
.global lbl_80641FC8
lbl_80641FC8:
	.incbin "baserom.dol", 0x473FE8, 0x4
.global lbl_80641FCC
lbl_80641FCC:
	.incbin "baserom.dol", 0x473FEC, 0x4
.global lbl_80641FD0
lbl_80641FD0:
	.incbin "baserom.dol", 0x473FF0, 0x4
.global lbl_80641FD4
lbl_80641FD4:
	.incbin "baserom.dol", 0x473FF4, 0x4
.global lbl_80641FD8
lbl_80641FD8:
	.incbin "baserom.dol", 0x473FF8, 0x8
.global lbl_80641FE0
lbl_80641FE0:
	.incbin "baserom.dol", 0x474000, 0x8
.global lbl_80641FE8
lbl_80641FE8:
	.incbin "baserom.dol", 0x474008, 0x4
.global lbl_80641FEC
lbl_80641FEC:
	.incbin "baserom.dol", 0x47400C, 0x4
.global lbl_80641FF0
lbl_80641FF0:
	.incbin "baserom.dol", 0x474010, 0x8
.global lbl_80641FF8
lbl_80641FF8:
	.incbin "baserom.dol", 0x474018, 0x4
.global lbl_80641FFC
lbl_80641FFC:
	.incbin "baserom.dol", 0x47401C, 0x4
.global lbl_80642000
lbl_80642000:
	.incbin "baserom.dol", 0x474020, 0x4
.global lbl_80642004
lbl_80642004:
	.incbin "baserom.dol", 0x474024, 0x4
.global lbl_80642008
lbl_80642008:
	.incbin "baserom.dol", 0x474028, 0x8
.global lbl_80642010
lbl_80642010:
	.incbin "baserom.dol", 0x474030, 0x4
.global lbl_80642014
lbl_80642014:
	.incbin "baserom.dol", 0x474034, 0x4
.global lbl_80642018
lbl_80642018:
	.incbin "baserom.dol", 0x474038, 0x4
.global lbl_8064201C
lbl_8064201C:
	.incbin "baserom.dol", 0x47403C, 0x4
.global lbl_80642020
lbl_80642020:
	.incbin "baserom.dol", 0x474040, 0x4
.global lbl_80642024
lbl_80642024:
	.incbin "baserom.dol", 0x474044, 0x4
.global lbl_80642028
lbl_80642028:
	.incbin "baserom.dol", 0x474048, 0x8
.global lbl_80642030
lbl_80642030:
	.incbin "baserom.dol", 0x474050, 0x8
.global lbl_80642038
lbl_80642038:
	.incbin "baserom.dol", 0x474058, 0x4
.global lbl_8064203C
lbl_8064203C:
	.incbin "baserom.dol", 0x47405C, 0x4
.global lbl_80642040
lbl_80642040:
	.incbin "baserom.dol", 0x474060, 0x4
.global lbl_80642044
lbl_80642044:
	.incbin "baserom.dol", 0x474064, 0x4
.global lbl_80642048
lbl_80642048:
	.incbin "baserom.dol", 0x474068, 0x4
.global lbl_8064204C
lbl_8064204C:
	.incbin "baserom.dol", 0x47406C, 0x4
.global lbl_80642050
lbl_80642050:
	.incbin "baserom.dol", 0x474070, 0x4
.global lbl_80642054
lbl_80642054:
	.incbin "baserom.dol", 0x474074, 0x4
.global lbl_80642058
lbl_80642058:
	.incbin "baserom.dol", 0x474078, 0x8
.global lbl_80642060
lbl_80642060:
	.incbin "baserom.dol", 0x474080, 0x4
.global lbl_80642064
lbl_80642064:
	.incbin "baserom.dol", 0x474084, 0x4
.global lbl_80642068
lbl_80642068:
	.incbin "baserom.dol", 0x474088, 0x4
.global lbl_8064206C
lbl_8064206C:
	.incbin "baserom.dol", 0x47408C, 0x4
.global lbl_80642070
lbl_80642070:
	.incbin "baserom.dol", 0x474090, 0x8
.global lbl_80642078
lbl_80642078:
	.incbin "baserom.dol", 0x474098, 0x8
.global lbl_80642080
lbl_80642080:
	.incbin "baserom.dol", 0x4740A0, 0x4
.global lbl_80642084
lbl_80642084:
	.incbin "baserom.dol", 0x4740A4, 0x4
.global lbl_80642088
lbl_80642088:
	.incbin "baserom.dol", 0x4740A8, 0x4
.global lbl_8064208C
lbl_8064208C:
	.incbin "baserom.dol", 0x4740AC, 0x4
.global lbl_80642090
lbl_80642090:
	.incbin "baserom.dol", 0x4740B0, 0x8
.global lbl_80642098
lbl_80642098:
	.incbin "baserom.dol", 0x4740B8, 0x4
.global lbl_8064209C
lbl_8064209C:
	.incbin "baserom.dol", 0x4740BC, 0x4
.global lbl_806420A0
lbl_806420A0:
	.incbin "baserom.dol", 0x4740C0, 0x4
.global lbl_806420A4
lbl_806420A4:
	.incbin "baserom.dol", 0x4740C4, 0x4
.global lbl_806420A8
lbl_806420A8:
	.incbin "baserom.dol", 0x4740C8, 0x8
.global lbl_806420B0
lbl_806420B0:
	.incbin "baserom.dol", 0x4740D0, 0x8
.global lbl_806420B8
lbl_806420B8:
	.incbin "baserom.dol", 0x4740D8, 0x4
.global lbl_806420BC
lbl_806420BC:
	.incbin "baserom.dol", 0x4740DC, 0x4
.global lbl_806420C0
lbl_806420C0:
	.incbin "baserom.dol", 0x4740E0, 0x4
.global lbl_806420C4
lbl_806420C4:
	.incbin "baserom.dol", 0x4740E4, 0x4
.global lbl_806420C8
lbl_806420C8:
	.incbin "baserom.dol", 0x4740E8, 0x8
.global lbl_806420D0
lbl_806420D0:
	.incbin "baserom.dol", 0x4740F0, 0x8
.global lbl_806420D8
lbl_806420D8:
	.incbin "baserom.dol", 0x4740F8, 0x8
.global lbl_806420E0
lbl_806420E0:
	.incbin "baserom.dol", 0x474100, 0x4
.global lbl_806420E4
lbl_806420E4:
	.incbin "baserom.dol", 0x474104, 0x4
.global lbl_806420E8
lbl_806420E8:
	.incbin "baserom.dol", 0x474108, 0x4
.global lbl_806420EC
lbl_806420EC:
	.incbin "baserom.dol", 0x47410C, 0x4
.global lbl_806420F0
lbl_806420F0:
	.incbin "baserom.dol", 0x474110, 0x8
.global lbl_806420F8
lbl_806420F8:
	.incbin "baserom.dol", 0x474118, 0x4
.global lbl_806420FC
lbl_806420FC:
	.incbin "baserom.dol", 0x47411C, 0x4
.global lbl_80642100
lbl_80642100:
	.incbin "baserom.dol", 0x474120, 0x4
.global lbl_80642104
lbl_80642104:
	.incbin "baserom.dol", 0x474124, 0x4
.global lbl_80642108
lbl_80642108:
	.incbin "baserom.dol", 0x474128, 0x4
.global lbl_8064210C
lbl_8064210C:
	.incbin "baserom.dol", 0x47412C, 0x4
.global lbl_80642110
lbl_80642110:
	.incbin "baserom.dol", 0x474130, 0x4
.global lbl_80642114
lbl_80642114:
	.incbin "baserom.dol", 0x474134, 0x4
.global lbl_80642118
lbl_80642118:
	.incbin "baserom.dol", 0x474138, 0x4
.global lbl_8064211C
lbl_8064211C:
	.incbin "baserom.dol", 0x47413C, 0x4
.global lbl_80642120
lbl_80642120:
	.incbin "baserom.dol", 0x474140, 0x4
.global lbl_80642124
lbl_80642124:
	.incbin "baserom.dol", 0x474144, 0x4
.global lbl_80642128
lbl_80642128:
	.incbin "baserom.dol", 0x474148, 0x4
.global lbl_8064212C
lbl_8064212C:
	.incbin "baserom.dol", 0x47414C, 0x4
.global lbl_80642130
lbl_80642130:
	.incbin "baserom.dol", 0x474150, 0x4
.global lbl_80642134
lbl_80642134:
	.incbin "baserom.dol", 0x474154, 0x4
.global lbl_80642138
lbl_80642138:
	.incbin "baserom.dol", 0x474158, 0x4
.global lbl_8064213C
lbl_8064213C:
	.incbin "baserom.dol", 0x47415C, 0x4
.global lbl_80642140
lbl_80642140:
	.incbin "baserom.dol", 0x474160, 0x8
.global lbl_80642148
lbl_80642148:
	.incbin "baserom.dol", 0x474168, 0x4
.global lbl_8064214C
lbl_8064214C:
	.incbin "baserom.dol", 0x47416C, 0x4
.global lbl_80642150
lbl_80642150:
	.incbin "baserom.dol", 0x474170, 0x8
.global lbl_80642158
lbl_80642158:
	.incbin "baserom.dol", 0x474178, 0x8
.global lbl_80642160
lbl_80642160:
	.incbin "baserom.dol", 0x474180, 0x8
.global lbl_80642168
lbl_80642168:
	.incbin "baserom.dol", 0x474188, 0x8
.global lbl_80642170
lbl_80642170:
	.incbin "baserom.dol", 0x474190, 0x4
.global lbl_80642174
lbl_80642174:
	.incbin "baserom.dol", 0x474194, 0x4
.global lbl_80642178
lbl_80642178:
	.incbin "baserom.dol", 0x474198, 0x4
.global lbl_8064217C
lbl_8064217C:
	.incbin "baserom.dol", 0x47419C, 0x4
.global lbl_80642180
lbl_80642180:
	.incbin "baserom.dol", 0x4741A0, 0x4
.global lbl_80642184
lbl_80642184:
	.incbin "baserom.dol", 0x4741A4, 0x4
.global lbl_80642188
lbl_80642188:
	.incbin "baserom.dol", 0x4741A8, 0x4
.global lbl_8064218C
lbl_8064218C:
	.incbin "baserom.dol", 0x4741AC, 0x4
.global lbl_80642190
lbl_80642190:
	.incbin "baserom.dol", 0x4741B0, 0x4
.global lbl_80642194
lbl_80642194:
	.incbin "baserom.dol", 0x4741B4, 0x4
.global lbl_80642198
lbl_80642198:
	.incbin "baserom.dol", 0x4741B8, 0x4
.global lbl_8064219C
lbl_8064219C:
	.incbin "baserom.dol", 0x4741BC, 0x4
.global lbl_806421A0
lbl_806421A0:
	.incbin "baserom.dol", 0x4741C0, 0x8
.global lbl_806421A8
lbl_806421A8:
	.incbin "baserom.dol", 0x4741C8, 0x8
.global lbl_806421B0
lbl_806421B0:
	.incbin "baserom.dol", 0x4741D0, 0x8
.global lbl_806421B8
lbl_806421B8:
	.incbin "baserom.dol", 0x4741D8, 0x4
.global lbl_806421BC
lbl_806421BC:
	.incbin "baserom.dol", 0x4741DC, 0x4
.global lbl_806421C0
lbl_806421C0:
	.incbin "baserom.dol", 0x4741E0, 0x4
.global lbl_806421C4
lbl_806421C4:
	.incbin "baserom.dol", 0x4741E4, 0x4
.global lbl_806421C8
lbl_806421C8:
	.incbin "baserom.dol", 0x4741E8, 0x8
.global lbl_806421D0
lbl_806421D0:
	.incbin "baserom.dol", 0x4741F0, 0x4
.global lbl_806421D4
lbl_806421D4:
	.incbin "baserom.dol", 0x4741F4, 0x4
.global lbl_806421D8
lbl_806421D8:
	.incbin "baserom.dol", 0x4741F8, 0x4
.global lbl_806421DC
lbl_806421DC:
	.incbin "baserom.dol", 0x4741FC, 0x4
.global lbl_806421E0
lbl_806421E0:
	.incbin "baserom.dol", 0x474200, 0x4
.global lbl_806421E4
lbl_806421E4:
	.incbin "baserom.dol", 0x474204, 0x4
.global lbl_806421E8
lbl_806421E8:
	.incbin "baserom.dol", 0x474208, 0x8
.global lbl_806421F0
lbl_806421F0:
	.incbin "baserom.dol", 0x474210, 0x8
.global lbl_806421F8
lbl_806421F8:
	.incbin "baserom.dol", 0x474218, 0x8
.global lbl_80642200
lbl_80642200:
	.incbin "baserom.dol", 0x474220, 0x8
.global lbl_80642208
lbl_80642208:
	.incbin "baserom.dol", 0x474228, 0x8
.global lbl_80642210
lbl_80642210:
	.incbin "baserom.dol", 0x474230, 0x4
.global lbl_80642214
lbl_80642214:
	.incbin "baserom.dol", 0x474234, 0x4
.global lbl_80642218
lbl_80642218:
	.incbin "baserom.dol", 0x474238, 0x4
.global lbl_8064221C
lbl_8064221C:
	.incbin "baserom.dol", 0x47423C, 0x4
.global lbl_80642220
lbl_80642220:
	.incbin "baserom.dol", 0x474240, 0x8
.global lbl_80642228
lbl_80642228:
	.incbin "baserom.dol", 0x474248, 0x4
.global lbl_8064222C
lbl_8064222C:
	.incbin "baserom.dol", 0x47424C, 0x4
.global lbl_80642230
lbl_80642230:
	.incbin "baserom.dol", 0x474250, 0x8
.global lbl_80642238
lbl_80642238:
	.incbin "baserom.dol", 0x474258, 0x4
.global lbl_8064223C
lbl_8064223C:
	.incbin "baserom.dol", 0x47425C, 0x4
.global lbl_80642240
lbl_80642240:
	.incbin "baserom.dol", 0x474260, 0x8
.global lbl_80642248
lbl_80642248:
	.incbin "baserom.dol", 0x474268, 0x4
.global lbl_8064224C
lbl_8064224C:
	.incbin "baserom.dol", 0x47426C, 0x4
.global lbl_80642250
lbl_80642250:
	.incbin "baserom.dol", 0x474270, 0x8
.global lbl_80642258
lbl_80642258:
	.incbin "baserom.dol", 0x474278, 0x8
.global lbl_80642260
lbl_80642260:
	.incbin "baserom.dol", 0x474280, 0x4
.global lbl_80642264
lbl_80642264:
	.incbin "baserom.dol", 0x474284, 0x4
.global lbl_80642268
lbl_80642268:
	.incbin "baserom.dol", 0x474288, 0x4
.global lbl_8064226C
lbl_8064226C:
	.incbin "baserom.dol", 0x47428C, 0x4
.global lbl_80642270
lbl_80642270:
	.incbin "baserom.dol", 0x474290, 0x8
.global lbl_80642278
lbl_80642278:
	.incbin "baserom.dol", 0x474298, 0x8
.global lbl_80642280
lbl_80642280:
	.incbin "baserom.dol", 0x4742A0, 0x4
.global lbl_80642284
lbl_80642284:
	.incbin "baserom.dol", 0x4742A4, 0x4
.global lbl_80642288
lbl_80642288:
	.incbin "baserom.dol", 0x4742A8, 0x4
.global lbl_8064228C
lbl_8064228C:
	.incbin "baserom.dol", 0x4742AC, 0x4
.global lbl_80642290
lbl_80642290:
	.incbin "baserom.dol", 0x4742B0, 0x4
.global lbl_80642294
lbl_80642294:
	.incbin "baserom.dol", 0x4742B4, 0x4
.global lbl_80642298
lbl_80642298:
	.incbin "baserom.dol", 0x4742B8, 0x4
.global lbl_8064229C
lbl_8064229C:
	.incbin "baserom.dol", 0x4742BC, 0x4
.global lbl_806422A0
lbl_806422A0:
	.incbin "baserom.dol", 0x4742C0, 0x8
.global lbl_806422A8
lbl_806422A8:
	.incbin "baserom.dol", 0x4742C8, 0x8
.global lbl_806422B0
lbl_806422B0:
	.incbin "baserom.dol", 0x4742D0, 0x4
.global lbl_806422B4
lbl_806422B4:
	.incbin "baserom.dol", 0x4742D4, 0x4
.global lbl_806422B8
lbl_806422B8:
	.incbin "baserom.dol", 0x4742D8, 0x8
.global lbl_806422C0
lbl_806422C0:
	.incbin "baserom.dol", 0x4742E0, 0x4
.global lbl_806422C4
lbl_806422C4:
	.incbin "baserom.dol", 0x4742E4, 0x4
.global lbl_806422C8
lbl_806422C8:
	.incbin "baserom.dol", 0x4742E8, 0x4
.global lbl_806422CC
lbl_806422CC:
	.incbin "baserom.dol", 0x4742EC, 0x4
.global lbl_806422D0
lbl_806422D0:
	.incbin "baserom.dol", 0x4742F0, 0x8
.global lbl_806422D8
lbl_806422D8:
	.incbin "baserom.dol", 0x4742F8, 0x8
.global lbl_806422E0
lbl_806422E0:
	.incbin "baserom.dol", 0x474300, 0x8
.global lbl_806422E8
lbl_806422E8:
	.incbin "baserom.dol", 0x474308, 0x8
.global lbl_806422F0
lbl_806422F0:
	.incbin "baserom.dol", 0x474310, 0x4
.global lbl_806422F4
lbl_806422F4:
	.incbin "baserom.dol", 0x474314, 0x4
.global lbl_806422F8
lbl_806422F8:
	.incbin "baserom.dol", 0x474318, 0x8
.global lbl_80642300
lbl_80642300:
	.incbin "baserom.dol", 0x474320, 0x4
.global lbl_80642304
lbl_80642304:
	.incbin "baserom.dol", 0x474324, 0x4
.global lbl_80642308
lbl_80642308:
	.incbin "baserom.dol", 0x474328, 0x8
.global lbl_80642310
lbl_80642310:
	.incbin "baserom.dol", 0x474330, 0x8
.global lbl_80642318
lbl_80642318:
	.incbin "baserom.dol", 0x474338, 0x4
.global lbl_8064231C
lbl_8064231C:
	.incbin "baserom.dol", 0x47433C, 0x4
.global lbl_80642320
lbl_80642320:
	.incbin "baserom.dol", 0x474340, 0x4
.global lbl_80642324
lbl_80642324:
	.incbin "baserom.dol", 0x474344, 0x4
.global lbl_80642328
lbl_80642328:
	.incbin "baserom.dol", 0x474348, 0x8
.global lbl_80642330
lbl_80642330:
	.incbin "baserom.dol", 0x474350, 0x4
.global lbl_80642334
lbl_80642334:
	.incbin "baserom.dol", 0x474354, 0x4
.global lbl_80642338
lbl_80642338:
	.incbin "baserom.dol", 0x474358, 0x4
.global lbl_8064233C
lbl_8064233C:
	.incbin "baserom.dol", 0x47435C, 0x4
.global lbl_80642340
lbl_80642340:
	.incbin "baserom.dol", 0x474360, 0x4
.global lbl_80642344
lbl_80642344:
	.incbin "baserom.dol", 0x474364, 0x4
.global lbl_80642348
lbl_80642348:
	.incbin "baserom.dol", 0x474368, 0x4
.global lbl_8064234C
lbl_8064234C:
	.incbin "baserom.dol", 0x47436C, 0x4
.global lbl_80642350
lbl_80642350:
	.incbin "baserom.dol", 0x474370, 0x4
.global lbl_80642354
lbl_80642354:
	.incbin "baserom.dol", 0x474374, 0x4
.global lbl_80642358
lbl_80642358:
	.incbin "baserom.dol", 0x474378, 0x4
.global lbl_8064235C
lbl_8064235C:
	.incbin "baserom.dol", 0x47437C, 0x4
.global lbl_80642360
lbl_80642360:
	.incbin "baserom.dol", 0x474380, 0x8
.global lbl_80642368
lbl_80642368:
	.incbin "baserom.dol", 0x474388, 0x8
.global lbl_80642370
lbl_80642370:
	.incbin "baserom.dol", 0x474390, 0x8
.global lbl_80642378
lbl_80642378:
	.incbin "baserom.dol", 0x474398, 0x4
.global lbl_8064237C
lbl_8064237C:
	.incbin "baserom.dol", 0x47439C, 0x4
.global lbl_80642380
lbl_80642380:
	.incbin "baserom.dol", 0x4743A0, 0x4
.global lbl_80642384
lbl_80642384:
	.incbin "baserom.dol", 0x4743A4, 0x4
.global lbl_80642388
lbl_80642388:
	.incbin "baserom.dol", 0x4743A8, 0x4
.global lbl_8064238C
lbl_8064238C:
	.incbin "baserom.dol", 0x4743AC, 0x4
.global lbl_80642390
lbl_80642390:
	.incbin "baserom.dol", 0x4743B0, 0x4
.global lbl_80642394
lbl_80642394:
	.incbin "baserom.dol", 0x4743B4, 0x4
.global lbl_80642398
lbl_80642398:
	.incbin "baserom.dol", 0x4743B8, 0x4
.global lbl_8064239C
lbl_8064239C:
	.incbin "baserom.dol", 0x4743BC, 0x4
.global lbl_806423A0
lbl_806423A0:
	.incbin "baserom.dol", 0x4743C0, 0x8
.global lbl_806423A8
lbl_806423A8:
	.incbin "baserom.dol", 0x4743C8, 0x4
.global lbl_806423AC
lbl_806423AC:
	.incbin "baserom.dol", 0x4743CC, 0x4
.global lbl_806423B0
lbl_806423B0:
	.incbin "baserom.dol", 0x4743D0, 0x4
.global lbl_806423B4
lbl_806423B4:
	.incbin "baserom.dol", 0x4743D4, 0x4
.global lbl_806423B8
lbl_806423B8:
	.incbin "baserom.dol", 0x4743D8, 0x1
.global lbl_806423B9
lbl_806423B9:
	.incbin "baserom.dol", 0x4743D9, 0x1
.global lbl_806423BA
lbl_806423BA:
	.incbin "baserom.dol", 0x4743DA, 0x1
.global lbl_806423BB
lbl_806423BB:
	.incbin "baserom.dol", 0x4743DB, 0x1
.global lbl_806423BC
lbl_806423BC:
	.incbin "baserom.dol", 0x4743DC, 0x4
.global lbl_806423C0
lbl_806423C0:
	.incbin "baserom.dol", 0x4743E0, 0x4
.global lbl_806423C4
lbl_806423C4:
	.incbin "baserom.dol", 0x4743E4, 0x4
.global lbl_806423C8
lbl_806423C8:
	.incbin "baserom.dol", 0x4743E8, 0x8
.global lbl_806423D0
lbl_806423D0:
	.incbin "baserom.dol", 0x4743F0, 0x4
.global lbl_806423D4
lbl_806423D4:
	.incbin "baserom.dol", 0x4743F4, 0x4
.global lbl_806423D8
lbl_806423D8:
	.incbin "baserom.dol", 0x4743F8, 0x8
.global lbl_806423E0
lbl_806423E0:
	.incbin "baserom.dol", 0x474400, 0x8
.global lbl_806423E8
lbl_806423E8:
	.incbin "baserom.dol", 0x474408, 0x4
.global lbl_806423EC
lbl_806423EC:
	.incbin "baserom.dol", 0x47440C, 0x4
.global lbl_806423F0
lbl_806423F0:
	.incbin "baserom.dol", 0x474410, 0x8
.global lbl_806423F8
lbl_806423F8:
	.incbin "baserom.dol", 0x474418, 0x4
.global lbl_806423FC
lbl_806423FC:
	.incbin "baserom.dol", 0x47441C, 0x4
.global lbl_80642400
lbl_80642400:
	.incbin "baserom.dol", 0x474420, 0x4
.global lbl_80642404
lbl_80642404:
	.incbin "baserom.dol", 0x474424, 0x4
.global lbl_80642408
lbl_80642408:
	.incbin "baserom.dol", 0x474428, 0x8
.global lbl_80642410
lbl_80642410:
	.incbin "baserom.dol", 0x474430, 0x4
.global lbl_80642414
lbl_80642414:
	.incbin "baserom.dol", 0x474434, 0x4
.global lbl_80642418
lbl_80642418:
	.incbin "baserom.dol", 0x474438, 0x8
.global lbl_80642420
lbl_80642420:
	.incbin "baserom.dol", 0x474440, 0x4
.global lbl_80642424
lbl_80642424:
	.incbin "baserom.dol", 0x474444, 0x4
.global lbl_80642428
lbl_80642428:
	.incbin "baserom.dol", 0x474448, 0x4
.global lbl_8064242C
lbl_8064242C:
	.incbin "baserom.dol", 0x47444C, 0x4
.global lbl_80642430
lbl_80642430:
	.incbin "baserom.dol", 0x474450, 0x8
.global lbl_80642438
lbl_80642438:
	.incbin "baserom.dol", 0x474458, 0x4
.global lbl_8064243C
lbl_8064243C:
	.incbin "baserom.dol", 0x47445C, 0x4
.global lbl_80642440
lbl_80642440:
	.incbin "baserom.dol", 0x474460, 0x4
.global lbl_80642444
lbl_80642444:
	.incbin "baserom.dol", 0x474464, 0x4
.global lbl_80642448
lbl_80642448:
	.incbin "baserom.dol", 0x474468, 0x8
.global lbl_80642450
lbl_80642450:
	.incbin "baserom.dol", 0x474470, 0x8
.global lbl_80642458
lbl_80642458:
	.incbin "baserom.dol", 0x474478, 0x4
.global lbl_8064245C
lbl_8064245C:
	.incbin "baserom.dol", 0x47447C, 0x4
.global lbl_80642460
lbl_80642460:
	.incbin "baserom.dol", 0x474480, 0x4
.global lbl_80642464
lbl_80642464:
	.incbin "baserom.dol", 0x474484, 0x4
.global lbl_80642468
lbl_80642468:
	.incbin "baserom.dol", 0x474488, 0x4
.global lbl_8064246C
lbl_8064246C:
	.incbin "baserom.dol", 0x47448C, 0x4
.global lbl_80642470
lbl_80642470:
	.incbin "baserom.dol", 0x474490, 0x4
.global lbl_80642474
lbl_80642474:
	.incbin "baserom.dol", 0x474494, 0x4
.global lbl_80642478
lbl_80642478:
	.incbin "baserom.dol", 0x474498, 0x4
.global lbl_8064247C
lbl_8064247C:
	.incbin "baserom.dol", 0x47449C, 0x4
.global lbl_80642480
lbl_80642480:
	.incbin "baserom.dol", 0x4744A0, 0x4
.global lbl_80642484
lbl_80642484:
	.incbin "baserom.dol", 0x4744A4, 0x4
.global lbl_80642488
lbl_80642488:
	.incbin "baserom.dol", 0x4744A8, 0x4
.global lbl_8064248C
lbl_8064248C:
	.incbin "baserom.dol", 0x4744AC, 0x4
.global lbl_80642490
lbl_80642490:
	.incbin "baserom.dol", 0x4744B0, 0x4
.global lbl_80642494
lbl_80642494:
	.incbin "baserom.dol", 0x4744B4, 0x4
.global lbl_80642498
lbl_80642498:
	.incbin "baserom.dol", 0x4744B8, 0x4
.global lbl_8064249C
lbl_8064249C:
	.incbin "baserom.dol", 0x4744BC, 0x4
.global lbl_806424A0
lbl_806424A0:
	.incbin "baserom.dol", 0x4744C0, 0x4
.global lbl_806424A4
lbl_806424A4:
	.incbin "baserom.dol", 0x4744C4, 0x4
.global lbl_806424A8
lbl_806424A8:
	.incbin "baserom.dol", 0x4744C8, 0x8
.global lbl_806424B0
lbl_806424B0:
	.incbin "baserom.dol", 0x4744D0, 0x8
.global lbl_806424B8
lbl_806424B8:
	.incbin "baserom.dol", 0x4744D8, 0x8
.global lbl_806424C0
lbl_806424C0:
	.incbin "baserom.dol", 0x4744E0, 0x4
.global lbl_806424C4
lbl_806424C4:
	.incbin "baserom.dol", 0x4744E4, 0x4
.global lbl_806424C8
lbl_806424C8:
	.incbin "baserom.dol", 0x4744E8, 0x8
.global lbl_806424D0
lbl_806424D0:
	.incbin "baserom.dol", 0x4744F0, 0x8
.global lbl_806424D8
lbl_806424D8:
	.incbin "baserom.dol", 0x4744F8, 0x8
.global lbl_806424E0
lbl_806424E0:
	.incbin "baserom.dol", 0x474500, 0x8
.global lbl_806424E8
lbl_806424E8:
	.incbin "baserom.dol", 0x474508, 0x4
.global lbl_806424EC
lbl_806424EC:
	.incbin "baserom.dol", 0x47450C, 0x4
.global lbl_806424F0
lbl_806424F0:
	.incbin "baserom.dol", 0x474510, 0x4
.global lbl_806424F4
lbl_806424F4:
	.incbin "baserom.dol", 0x474514, 0x4
.global lbl_806424F8
lbl_806424F8:
	.incbin "baserom.dol", 0x474518, 0x4
.global lbl_806424FC
lbl_806424FC:
	.incbin "baserom.dol", 0x47451C, 0x4
.global lbl_80642500
lbl_80642500:
	.incbin "baserom.dol", 0x474520, 0x4
.global lbl_80642504
lbl_80642504:
	.incbin "baserom.dol", 0x474524, 0x4
.global lbl_80642508
lbl_80642508:
	.incbin "baserom.dol", 0x474528, 0x4
.global lbl_8064250C
lbl_8064250C:
	.incbin "baserom.dol", 0x47452C, 0x4
.global lbl_80642510
lbl_80642510:
	.incbin "baserom.dol", 0x474530, 0x4
.global lbl_80642514
lbl_80642514:
	.incbin "baserom.dol", 0x474534, 0x4
.global lbl_80642518
lbl_80642518:
	.incbin "baserom.dol", 0x474538, 0x8
.global lbl_80642520
lbl_80642520:
	.incbin "baserom.dol", 0x474540, 0x4
.global lbl_80642524
lbl_80642524:
	.incbin "baserom.dol", 0x474544, 0x4
.global lbl_80642528
lbl_80642528:
	.incbin "baserom.dol", 0x474548, 0x4
.global lbl_8064252C
lbl_8064252C:
	.incbin "baserom.dol", 0x47454C, 0x4
.global lbl_80642530
lbl_80642530:
	.incbin "baserom.dol", 0x474550, 0x4
.global lbl_80642534
lbl_80642534:
	.incbin "baserom.dol", 0x474554, 0x4
.global lbl_80642538
lbl_80642538:
	.incbin "baserom.dol", 0x474558, 0x4
.global lbl_8064253C
lbl_8064253C:
	.incbin "baserom.dol", 0x47455C, 0x4
.global lbl_80642540
lbl_80642540:
	.incbin "baserom.dol", 0x474560, 0x4
.global lbl_80642544
lbl_80642544:
	.incbin "baserom.dol", 0x474564, 0x4
.global lbl_80642548
lbl_80642548:
	.incbin "baserom.dol", 0x474568, 0x8
.global lbl_80642550
lbl_80642550:
	.incbin "baserom.dol", 0x474570, 0x8
.global lbl_80642558
lbl_80642558:
	.incbin "baserom.dol", 0x474578, 0x4
.global lbl_8064255C
lbl_8064255C:
	.incbin "baserom.dol", 0x47457C, 0x4
.global lbl_80642560
lbl_80642560:
	.incbin "baserom.dol", 0x474580, 0x4
.global lbl_80642564
lbl_80642564:
	.incbin "baserom.dol", 0x474584, 0x4
.global lbl_80642568
lbl_80642568:
	.incbin "baserom.dol", 0x474588, 0x8
.global lbl_80642570
lbl_80642570:
	.incbin "baserom.dol", 0x474590, 0x4
.global lbl_80642574
lbl_80642574:
	.incbin "baserom.dol", 0x474594, 0x4
.global lbl_80642578
lbl_80642578:
	.incbin "baserom.dol", 0x474598, 0x8
.global lbl_80642580
lbl_80642580:
	.incbin "baserom.dol", 0x4745A0, 0x8
.global lbl_80642588
lbl_80642588:
	.incbin "baserom.dol", 0x4745A8, 0x8
.global lbl_80642590
lbl_80642590:
	.incbin "baserom.dol", 0x4745B0, 0x4
.global lbl_80642594
lbl_80642594:
	.incbin "baserom.dol", 0x4745B4, 0x4
.global lbl_80642598
lbl_80642598:
	.incbin "baserom.dol", 0x4745B8, 0x8
.global lbl_806425A0
lbl_806425A0:
	.incbin "baserom.dol", 0x4745C0, 0x4
.global lbl_806425A4
lbl_806425A4:
	.incbin "baserom.dol", 0x4745C4, 0x4
.global lbl_806425A8
lbl_806425A8:
	.incbin "baserom.dol", 0x4745C8, 0x4
.global lbl_806425AC
lbl_806425AC:
	.incbin "baserom.dol", 0x4745CC, 0x4
.global lbl_806425B0
lbl_806425B0:
	.incbin "baserom.dol", 0x4745D0, 0x4
.global lbl_806425B4
lbl_806425B4:
	.incbin "baserom.dol", 0x4745D4, 0x4
.global lbl_806425B8
lbl_806425B8:
	.incbin "baserom.dol", 0x4745D8, 0x4
.global lbl_806425BC
lbl_806425BC:
	.incbin "baserom.dol", 0x4745DC, 0x4
.global lbl_806425C0
lbl_806425C0:
	.incbin "baserom.dol", 0x4745E0, 0x4
.global lbl_806425C4
lbl_806425C4:
	.incbin "baserom.dol", 0x4745E4, 0x4
.global lbl_806425C8
lbl_806425C8:
	.incbin "baserom.dol", 0x4745E8, 0x8
.global lbl_806425D0
lbl_806425D0:
	.incbin "baserom.dol", 0x4745F0, 0x4
.global lbl_806425D4
lbl_806425D4:
	.incbin "baserom.dol", 0x4745F4, 0x4
.global lbl_806425D8
lbl_806425D8:
	.incbin "baserom.dol", 0x4745F8, 0x8
.global lbl_806425E0
lbl_806425E0:
	.incbin "baserom.dol", 0x474600, 0x8
.global lbl_806425E8
lbl_806425E8:
	.incbin "baserom.dol", 0x474608, 0x8
.global lbl_806425F0
lbl_806425F0:
	.incbin "baserom.dol", 0x474610, 0x4
.global lbl_806425F4
lbl_806425F4:
	.incbin "baserom.dol", 0x474614, 0x4
.global lbl_806425F8
lbl_806425F8:
	.incbin "baserom.dol", 0x474618, 0x4
.global lbl_806425FC
lbl_806425FC:
	.incbin "baserom.dol", 0x47461C, 0x4
.global lbl_80642600
lbl_80642600:
	.incbin "baserom.dol", 0x474620, 0x8
.global lbl_80642608
lbl_80642608:
	.incbin "baserom.dol", 0x474628, 0x4
.global lbl_8064260C
lbl_8064260C:
	.incbin "baserom.dol", 0x47462C, 0x4
.global lbl_80642610
lbl_80642610:
	.incbin "baserom.dol", 0x474630, 0x8
.global lbl_80642618
lbl_80642618:
	.incbin "baserom.dol", 0x474638, 0x1
.global lbl_80642619
lbl_80642619:
	.incbin "baserom.dol", 0x474639, 0x1
.global lbl_8064261A
lbl_8064261A:
	.incbin "baserom.dol", 0x47463A, 0x1
.global lbl_8064261B
lbl_8064261B:
	.incbin "baserom.dol", 0x47463B, 0x1
.global lbl_8064261C
lbl_8064261C:
	.incbin "baserom.dol", 0x47463C, 0x1
.global lbl_8064261D
lbl_8064261D:
	.incbin "baserom.dol", 0x47463D, 0x1
.global lbl_8064261E
lbl_8064261E:
	.incbin "baserom.dol", 0x47463E, 0x1
.global lbl_8064261F
lbl_8064261F:
	.incbin "baserom.dol", 0x47463F, 0x1
.global lbl_80642620
lbl_80642620:
	.incbin "baserom.dol", 0x474640, 0x4
.global lbl_80642624
lbl_80642624:
	.incbin "baserom.dol", 0x474644, 0x4
.global lbl_80642628
lbl_80642628:
	.incbin "baserom.dol", 0x474648, 0x4
.global lbl_8064262C
lbl_8064262C:
	.incbin "baserom.dol", 0x47464C, 0x4
.global lbl_80642630
lbl_80642630:
	.incbin "baserom.dol", 0x474650, 0x4
.global lbl_80642634
lbl_80642634:
	.incbin "baserom.dol", 0x474654, 0x4
.global lbl_80642638
lbl_80642638:
	.incbin "baserom.dol", 0x474658, 0x4
.global lbl_8064263C
lbl_8064263C:
	.incbin "baserom.dol", 0x47465C, 0x4
.global lbl_80642640
lbl_80642640:
	.incbin "baserom.dol", 0x474660, 0x4
.global lbl_80642644
lbl_80642644:
	.incbin "baserom.dol", 0x474664, 0x4
.global lbl_80642648
lbl_80642648:
	.incbin "baserom.dol", 0x474668, 0x4
.global lbl_8064264C
lbl_8064264C:
	.incbin "baserom.dol", 0x47466C, 0x4
.global lbl_80642650
lbl_80642650:
	.incbin "baserom.dol", 0x474670, 0x8
.global lbl_80642658
lbl_80642658:
	.incbin "baserom.dol", 0x474678, 0x8
.global lbl_80642660
lbl_80642660:
	.incbin "baserom.dol", 0x474680, 0x2
.global lbl_80642662
lbl_80642662:
	.incbin "baserom.dol", 0x474682, 0x2
.global lbl_80642664
lbl_80642664:
	.incbin "baserom.dol", 0x474684, 0x2
.global lbl_80642666
lbl_80642666:
	.incbin "baserom.dol", 0x474686, 0x2
.global lbl_80642668
lbl_80642668:
	.incbin "baserom.dol", 0x474688, 0x8
.global lbl_80642670
lbl_80642670:
	.incbin "baserom.dol", 0x474690, 0x4
.global lbl_80642674
lbl_80642674:
	.incbin "baserom.dol", 0x474694, 0x4
.global lbl_80642678
lbl_80642678:
	.incbin "baserom.dol", 0x474698, 0x4
.global lbl_8064267C
lbl_8064267C:
	.incbin "baserom.dol", 0x47469C, 0x4
.global lbl_80642680
lbl_80642680:
	.incbin "baserom.dol", 0x4746A0, 0x4
.global lbl_80642684
lbl_80642684:
	.incbin "baserom.dol", 0x4746A4, 0x4
.global lbl_80642688
lbl_80642688:
	.incbin "baserom.dol", 0x4746A8, 0x8
.global lbl_80642690
lbl_80642690:
	.incbin "baserom.dol", 0x4746B0, 0x4
.global lbl_80642694
lbl_80642694:
	.incbin "baserom.dol", 0x4746B4, 0x4
.global lbl_80642698
lbl_80642698:
	.incbin "baserom.dol", 0x4746B8, 0x4
.global lbl_8064269C
lbl_8064269C:
	.incbin "baserom.dol", 0x4746BC, 0x4
.global lbl_806426A0
lbl_806426A0:
	.incbin "baserom.dol", 0x4746C0, 0x4
.global lbl_806426A4
lbl_806426A4:
	.incbin "baserom.dol", 0x4746C4, 0x4
.global lbl_806426A8
lbl_806426A8:
	.incbin "baserom.dol", 0x4746C8, 0x4
.global lbl_806426AC
lbl_806426AC:
	.incbin "baserom.dol", 0x4746CC, 0x4
.global lbl_806426B0
lbl_806426B0:
	.incbin "baserom.dol", 0x4746D0, 0x4
.global lbl_806426B4
lbl_806426B4:
	.incbin "baserom.dol", 0x4746D4, 0x4
.global lbl_806426B8
lbl_806426B8:
	.incbin "baserom.dol", 0x4746D8, 0x4
.global lbl_806426BC
lbl_806426BC:
	.incbin "baserom.dol", 0x4746DC, 0x4
.global lbl_806426C0
lbl_806426C0:
	.incbin "baserom.dol", 0x4746E0, 0x4
.global lbl_806426C4
lbl_806426C4:
	.incbin "baserom.dol", 0x4746E4, 0x4
.global lbl_806426C8
lbl_806426C8:
	.incbin "baserom.dol", 0x4746E8, 0x8
.global lbl_806426D0
lbl_806426D0:
	.incbin "baserom.dol", 0x4746F0, 0x4
.global lbl_806426D4
lbl_806426D4:
	.incbin "baserom.dol", 0x4746F4, 0x4
.global lbl_806426D8
lbl_806426D8:
	.incbin "baserom.dol", 0x4746F8, 0x4
.global lbl_806426DC
lbl_806426DC:
	.incbin "baserom.dol", 0x4746FC, 0x1
.global lbl_806426DD
lbl_806426DD:
	.incbin "baserom.dol", 0x4746FD, 0x1
.global lbl_806426DE
lbl_806426DE:
	.incbin "baserom.dol", 0x4746FE, 0x1
.global lbl_806426DF
lbl_806426DF:
	.incbin "baserom.dol", 0x4746FF, 0x1
.global lbl_806426E0
lbl_806426E0:
	.incbin "baserom.dol", 0x474700, 0x1
.global lbl_806426E1
lbl_806426E1:
	.incbin "baserom.dol", 0x474701, 0x1
.global lbl_806426E2
lbl_806426E2:
	.incbin "baserom.dol", 0x474702, 0x1
.global lbl_806426E3
lbl_806426E3:
	.incbin "baserom.dol", 0x474703, 0x1
.global lbl_806426E4
lbl_806426E4:
	.incbin "baserom.dol", 0x474704, 0x4
.global lbl_806426E8
lbl_806426E8:
	.incbin "baserom.dol", 0x474708, 0x8
.global lbl_806426F0
lbl_806426F0:
	.incbin "baserom.dol", 0x474710, 0x8
.global lbl_806426F8
lbl_806426F8:
	.incbin "baserom.dol", 0x474718, 0x8
.global lbl_80642700
lbl_80642700:
	.incbin "baserom.dol", 0x474720, 0x8
.global lbl_80642708
lbl_80642708:
	.incbin "baserom.dol", 0x474728, 0x4
.global lbl_8064270C
lbl_8064270C:
	.incbin "baserom.dol", 0x47472C, 0x4
.global lbl_80642710
lbl_80642710:
	.incbin "baserom.dol", 0x474730, 0x4
.global lbl_80642714
lbl_80642714:
	.incbin "baserom.dol", 0x474734, 0x4
.global lbl_80642718
lbl_80642718:
	.incbin "baserom.dol", 0x474738, 0x4
.global lbl_8064271C
lbl_8064271C:
	.incbin "baserom.dol", 0x47473C, 0x4
.global lbl_80642720
lbl_80642720:
	.incbin "baserom.dol", 0x474740, 0x4
.global lbl_80642724
lbl_80642724:
	.incbin "baserom.dol", 0x474744, 0x4
.global lbl_80642728
lbl_80642728:
	.incbin "baserom.dol", 0x474748, 0x4
.global lbl_8064272C
lbl_8064272C:
	.incbin "baserom.dol", 0x47474C, 0x4
.global lbl_80642730
lbl_80642730:
	.incbin "baserom.dol", 0x474750, 0x4
.global lbl_80642734
lbl_80642734:
	.incbin "baserom.dol", 0x474754, 0x4
.global lbl_80642738
lbl_80642738:
	.incbin "baserom.dol", 0x474758, 0x8
.global lbl_80642740
lbl_80642740:
	.incbin "baserom.dol", 0x474760, 0x8
.global lbl_80642748
lbl_80642748:
	.incbin "baserom.dol", 0x474768, 0x8
.global lbl_80642750
lbl_80642750:
	.incbin "baserom.dol", 0x474770, 0x4
.global lbl_80642754
lbl_80642754:
	.incbin "baserom.dol", 0x474774, 0x4
.global lbl_80642758
lbl_80642758:
	.incbin "baserom.dol", 0x474778, 0x4
.global lbl_8064275C
lbl_8064275C:
	.incbin "baserom.dol", 0x47477C, 0x4
.global lbl_80642760
lbl_80642760:
	.incbin "baserom.dol", 0x474780, 0x4
.global lbl_80642764
lbl_80642764:
	.incbin "baserom.dol", 0x474784, 0x4
.global lbl_80642768
lbl_80642768:
	.incbin "baserom.dol", 0x474788, 0x4
.global lbl_8064276C
lbl_8064276C:
	.incbin "baserom.dol", 0x47478C, 0x4
.global lbl_80642770
lbl_80642770:
	.incbin "baserom.dol", 0x474790, 0x8
.global lbl_80642778
lbl_80642778:
	.incbin "baserom.dol", 0x474798, 0x8
.global lbl_80642780
lbl_80642780:
	.incbin "baserom.dol", 0x4747A0, 0x4
.global lbl_80642784
lbl_80642784:
	.incbin "baserom.dol", 0x4747A4, 0x4
.global lbl_80642788
lbl_80642788:
	.incbin "baserom.dol", 0x4747A8, 0x8
.global lbl_80642790
lbl_80642790:
	.incbin "baserom.dol", 0x4747B0, 0x8
.global lbl_80642798
lbl_80642798:
	.incbin "baserom.dol", 0x4747B8, 0x8
.global lbl_806427A0
lbl_806427A0:
	.incbin "baserom.dol", 0x4747C0, 0x8
.global lbl_806427A8
lbl_806427A8:
	.incbin "baserom.dol", 0x4747C8, 0x8
.global lbl_806427B0
lbl_806427B0:
	.incbin "baserom.dol", 0x4747D0, 0x8
.global lbl_806427B8
lbl_806427B8:
	.incbin "baserom.dol", 0x4747D8, 0x8
.global lbl_806427C0
lbl_806427C0:
	.incbin "baserom.dol", 0x4747E0, 0x4
.global lbl_806427C4
lbl_806427C4:
	.incbin "baserom.dol", 0x4747E4, 0x4
.global lbl_806427C8
lbl_806427C8:
	.incbin "baserom.dol", 0x4747E8, 0x8
.global lbl_806427D0
lbl_806427D0:
	.incbin "baserom.dol", 0x4747F0, 0x4
.global lbl_806427D4
lbl_806427D4:
	.incbin "baserom.dol", 0x4747F4, 0x4
.global lbl_806427D8
lbl_806427D8:
	.incbin "baserom.dol", 0x4747F8, 0x4
.global lbl_806427DC
lbl_806427DC:
	.incbin "baserom.dol", 0x4747FC, 0x4
.global lbl_806427E0
lbl_806427E0:
	.incbin "baserom.dol", 0x474800, 0x8
.global lbl_806427E8
lbl_806427E8:
	.incbin "baserom.dol", 0x474808, 0x8
.global lbl_806427F0
lbl_806427F0:
	.incbin "baserom.dol", 0x474810, 0x8
.global lbl_806427F8
lbl_806427F8:
	.incbin "baserom.dol", 0x474818, 0x4
.global lbl_806427FC
lbl_806427FC:
	.incbin "baserom.dol", 0x47481C, 0x4
.global lbl_80642800
lbl_80642800:
	.incbin "baserom.dol", 0x474820, 0x4
.global lbl_80642804
lbl_80642804:
	.incbin "baserom.dol", 0x474824, 0x4
.global lbl_80642808
lbl_80642808:
	.incbin "baserom.dol", 0x474828, 0x4
.global lbl_8064280C
lbl_8064280C:
	.incbin "baserom.dol", 0x47482C, 0x4
.global lbl_80642810
lbl_80642810:
	.incbin "baserom.dol", 0x474830, 0x1
.global lbl_80642811
lbl_80642811:
	.incbin "baserom.dol", 0x474831, 0x1
.global lbl_80642812
lbl_80642812:
	.incbin "baserom.dol", 0x474832, 0x1
.global lbl_80642813
lbl_80642813:
	.incbin "baserom.dol", 0x474833, 0x5
.global lbl_80642818
lbl_80642818:
	.incbin "baserom.dol", 0x474838, 0x4
.global lbl_8064281C
lbl_8064281C:
	.incbin "baserom.dol", 0x47483C, 0x4
.global lbl_80642820
lbl_80642820:
	.incbin "baserom.dol", 0x474840, 0x4
.global lbl_80642824
lbl_80642824:
	.incbin "baserom.dol", 0x474844, 0x4
.global lbl_80642828
lbl_80642828:
	.incbin "baserom.dol", 0x474848, 0x4
.global lbl_8064282C
lbl_8064282C:
	.incbin "baserom.dol", 0x47484C, 0x4
.global lbl_80642830
lbl_80642830:
	.incbin "baserom.dol", 0x474850, 0x8
.global lbl_80642838
lbl_80642838:
	.incbin "baserom.dol", 0x474858, 0x4
.global lbl_8064283C
lbl_8064283C:
	.incbin "baserom.dol", 0x47485C, 0x4
.global lbl_80642840
lbl_80642840:
	.incbin "baserom.dol", 0x474860, 0x4
.global lbl_80642844
lbl_80642844:
	.incbin "baserom.dol", 0x474864, 0x4
.global lbl_80642848
lbl_80642848:
	.incbin "baserom.dol", 0x474868, 0x4
.global lbl_8064284C
lbl_8064284C:
	.incbin "baserom.dol", 0x47486C, 0x4
.global lbl_80642850
lbl_80642850:
	.incbin "baserom.dol", 0x474870, 0x4
.global lbl_80642854
lbl_80642854:
	.incbin "baserom.dol", 0x474874, 0x4
.global lbl_80642858
lbl_80642858:
	.incbin "baserom.dol", 0x474878, 0x8
.global lbl_80642860
lbl_80642860:
	.incbin "baserom.dol", 0x474880, 0x8
.global lbl_80642868
lbl_80642868:
	.incbin "baserom.dol", 0x474888, 0x8
.global lbl_80642870
lbl_80642870:
	.incbin "baserom.dol", 0x474890, 0x8
.global lbl_80642878
lbl_80642878:
	.incbin "baserom.dol", 0x474898, 0x8
.global lbl_80642880
lbl_80642880:
	.incbin "baserom.dol", 0x4748A0, 0x8
.global lbl_80642888
lbl_80642888:
	.incbin "baserom.dol", 0x4748A8, 0x4
.global lbl_8064288C
lbl_8064288C:
	.incbin "baserom.dol", 0x4748AC, 0x4
.global lbl_80642890
lbl_80642890:
	.incbin "baserom.dol", 0x4748B0, 0x4
.global lbl_80642894
lbl_80642894:
	.incbin "baserom.dol", 0x4748B4, 0x4
.global lbl_80642898
lbl_80642898:
	.incbin "baserom.dol", 0x4748B8, 0x8
.global lbl_806428A0
lbl_806428A0:
	.incbin "baserom.dol", 0x4748C0, 0x8
.global lbl_806428A8
lbl_806428A8:
	.incbin "baserom.dol", 0x4748C8, 0x8
.global lbl_806428B0
lbl_806428B0:
	.incbin "baserom.dol", 0x4748D0, 0x8
.global lbl_806428B8
lbl_806428B8:
	.incbin "baserom.dol", 0x4748D8, 0x8
.global lbl_806428C0
lbl_806428C0:
	.incbin "baserom.dol", 0x4748E0, 0x8
.global lbl_806428C8
lbl_806428C8:
	.incbin "baserom.dol", 0x4748E8, 0x4
.global lbl_806428CC
lbl_806428CC:
	.incbin "baserom.dol", 0x4748EC, 0x4
.global lbl_806428D0
lbl_806428D0:
	.incbin "baserom.dol", 0x4748F0, 0x8
.global lbl_806428D8
lbl_806428D8:
	.incbin "baserom.dol", 0x4748F8, 0x4
.global lbl_806428DC
lbl_806428DC:
	.incbin "baserom.dol", 0x4748FC, 0x4
.global lbl_806428E0
lbl_806428E0:
	.incbin "baserom.dol", 0x474900, 0x4
.global lbl_806428E4
lbl_806428E4:
	.incbin "baserom.dol", 0x474904, 0x4
.global lbl_806428E8
lbl_806428E8:
	.incbin "baserom.dol", 0x474908, 0x4
.global lbl_806428EC
lbl_806428EC:
	.incbin "baserom.dol", 0x47490C, 0x4
.global lbl_806428F0
lbl_806428F0:
	.incbin "baserom.dol", 0x474910, 0x8
.global lbl_806428F8
lbl_806428F8:
	.incbin "baserom.dol", 0x474918, 0x4
.global lbl_806428FC
lbl_806428FC:
	.incbin "baserom.dol", 0x47491C, 0x4
.global lbl_80642900
lbl_80642900:
	.incbin "baserom.dol", 0x474920, 0x8
.global lbl_80642908
lbl_80642908:
	.incbin "baserom.dol", 0x474928, 0x8
.global lbl_80642910
lbl_80642910:
	.incbin "baserom.dol", 0x474930, 0x8
.global lbl_80642918
lbl_80642918:
	.incbin "baserom.dol", 0x474938, 0x8
.global lbl_80642920
lbl_80642920:
	.incbin "baserom.dol", 0x474940, 0x4
.global lbl_80642924
lbl_80642924:
	.incbin "baserom.dol", 0x474944, 0x4
.global lbl_80642928
lbl_80642928:
	.incbin "baserom.dol", 0x474948, 0x8
.global lbl_80642930
lbl_80642930:
	.incbin "baserom.dol", 0x474950, 0x8
.global lbl_80642938
lbl_80642938:
	.incbin "baserom.dol", 0x474958, 0x4
.global lbl_8064293C
lbl_8064293C:
	.incbin "baserom.dol", 0x47495C, 0x4
.global lbl_80642940
lbl_80642940:
	.incbin "baserom.dol", 0x474960, 0x8
.global lbl_80642948
lbl_80642948:
	.incbin "baserom.dol", 0x474968, 0x4
.global lbl_8064294C
lbl_8064294C:
	.incbin "baserom.dol", 0x47496C, 0x4
.global lbl_80642950
lbl_80642950:
	.incbin "baserom.dol", 0x474970, 0x4
.global lbl_80642954
lbl_80642954:
	.incbin "baserom.dol", 0x474974, 0x4
.global lbl_80642958
lbl_80642958:
	.incbin "baserom.dol", 0x474978, 0x4
.global lbl_8064295C
lbl_8064295C:
	.incbin "baserom.dol", 0x47497C, 0x4
.global lbl_80642960
lbl_80642960:
	.incbin "baserom.dol", 0x474980, 0x4
.global lbl_80642964
lbl_80642964:
	.incbin "baserom.dol", 0x474984, 0x4
.global lbl_80642968
lbl_80642968:
	.incbin "baserom.dol", 0x474988, 0x8
.global lbl_80642970
lbl_80642970:
	.incbin "baserom.dol", 0x474990, 0x8
.global lbl_80642978
lbl_80642978:
	.incbin "baserom.dol", 0x474998, 0x8
.global lbl_80642980
lbl_80642980:
	.incbin "baserom.dol", 0x4749A0, 0x8
.global lbl_80642988
lbl_80642988:
	.incbin "baserom.dol", 0x4749A8, 0x4
.global lbl_8064298C
lbl_8064298C:
	.incbin "baserom.dol", 0x4749AC, 0x4
.global lbl_80642990
lbl_80642990:
	.incbin "baserom.dol", 0x4749B0, 0x4
.global lbl_80642994
lbl_80642994:
	.incbin "baserom.dol", 0x4749B4, 0x4
.global lbl_80642998
lbl_80642998:
	.incbin "baserom.dol", 0x4749B8, 0x8
.global lbl_806429A0
lbl_806429A0:
	.incbin "baserom.dol", 0x4749C0, 0x4
.global lbl_806429A4
lbl_806429A4:
	.incbin "baserom.dol", 0x4749C4, 0x4
.global lbl_806429A8
lbl_806429A8:
	.incbin "baserom.dol", 0x4749C8, 0x4
.global lbl_806429AC
lbl_806429AC:
	.incbin "baserom.dol", 0x4749CC, 0x4
.global lbl_806429B0
lbl_806429B0:
	.incbin "baserom.dol", 0x4749D0, 0x4
.global lbl_806429B4
lbl_806429B4:
	.incbin "baserom.dol", 0x4749D4, 0x4
.global lbl_806429B8
lbl_806429B8:
	.incbin "baserom.dol", 0x4749D8, 0x4
.global lbl_806429BC
lbl_806429BC:
	.incbin "baserom.dol", 0x4749DC, 0x4
.global lbl_806429C0
lbl_806429C0:
	.incbin "baserom.dol", 0x4749E0, 0x4
.global lbl_806429C4
lbl_806429C4:
	.incbin "baserom.dol", 0x4749E4, 0x4
.global lbl_806429C8
lbl_806429C8:
	.incbin "baserom.dol", 0x4749E8, 0x8
.global lbl_806429D0
lbl_806429D0:
	.incbin "baserom.dol", 0x4749F0, 0x4
.global lbl_806429D4
lbl_806429D4:
	.incbin "baserom.dol", 0x4749F4, 0x4
.global lbl_806429D8
lbl_806429D8:
	.incbin "baserom.dol", 0x4749F8, 0x4
.global lbl_806429DC
lbl_806429DC:
	.incbin "baserom.dol", 0x4749FC, 0x2
.global lbl_806429DE
lbl_806429DE:
	.incbin "baserom.dol", 0x4749FE, 0x2
.global lbl_806429E0
lbl_806429E0:
	.incbin "baserom.dol", 0x474A00, 0x4
.global lbl_806429E4
lbl_806429E4:
	.incbin "baserom.dol", 0x474A04, 0x2
.global lbl_806429E6
lbl_806429E6:
	.incbin "baserom.dol", 0x474A06, 0x2
.global lbl_806429E8
lbl_806429E8:
	.incbin "baserom.dol", 0x474A08, 0x4
.global lbl_806429EC
lbl_806429EC:
	.incbin "baserom.dol", 0x474A0C, 0x4
.global lbl_806429F0
lbl_806429F0:
	.incbin "baserom.dol", 0x474A10, 0x8
.global lbl_806429F8
lbl_806429F8:
	.incbin "baserom.dol", 0x474A18, 0x8
.global lbl_80642A00
lbl_80642A00:
	.incbin "baserom.dol", 0x474A20, 0x1
.global lbl_80642A01
lbl_80642A01:
	.incbin "baserom.dol", 0x474A21, 0x1
.global lbl_80642A02
lbl_80642A02:
	.incbin "baserom.dol", 0x474A22, 0x1
.global lbl_80642A03
lbl_80642A03:
	.incbin "baserom.dol", 0x474A23, 0x1
.global lbl_80642A04
lbl_80642A04:
	.incbin "baserom.dol", 0x474A24, 0x1
.global lbl_80642A05
lbl_80642A05:
	.incbin "baserom.dol", 0x474A25, 0x1
.global lbl_80642A06
lbl_80642A06:
	.incbin "baserom.dol", 0x474A26, 0x2
.global lbl_80642A08
lbl_80642A08:
	.incbin "baserom.dol", 0x474A28, 0x2
.global lbl_80642A0A
lbl_80642A0A:
	.incbin "baserom.dol", 0x474A2A, 0x2
.global lbl_80642A0C
lbl_80642A0C:
	.incbin "baserom.dol", 0x474A2C, 0x2
.global lbl_80642A0E
lbl_80642A0E:
	.incbin "baserom.dol", 0x474A2E, 0x2
.global lbl_80642A10
lbl_80642A10:
	.incbin "baserom.dol", 0x474A30, 0x2
.global lbl_80642A12
lbl_80642A12:
	.incbin "baserom.dol", 0x474A32, 0x2
.global lbl_80642A14
lbl_80642A14:
	.incbin "baserom.dol", 0x474A34, 0x2
.global lbl_80642A16
lbl_80642A16:
	.incbin "baserom.dol", 0x474A36, 0x2
.global lbl_80642A18
lbl_80642A18:
	.incbin "baserom.dol", 0x474A38, 0x8
.global lbl_80642A20
lbl_80642A20:
	.incbin "baserom.dol", 0x474A40, 0x8
.global lbl_80642A28
lbl_80642A28:
	.incbin "baserom.dol", 0x474A48, 0x8
.global lbl_80642A30
lbl_80642A30:
	.incbin "baserom.dol", 0x474A50, 0x1
.global lbl_80642A31
lbl_80642A31:
	.incbin "baserom.dol", 0x474A51, 0x1
.global lbl_80642A32
lbl_80642A32:
	.incbin "baserom.dol", 0x474A52, 0x1
.global lbl_80642A33
lbl_80642A33:
	.incbin "baserom.dol", 0x474A53, 0x1
.global lbl_80642A34
lbl_80642A34:
	.incbin "baserom.dol", 0x474A54, 0x1
.global lbl_80642A35
lbl_80642A35:
	.incbin "baserom.dol", 0x474A55, 0x1
.global lbl_80642A36
lbl_80642A36:
	.incbin "baserom.dol", 0x474A56, 0x2
.global lbl_80642A38
lbl_80642A38:
	.incbin "baserom.dol", 0x474A58, 0x8
.global lbl_80642A40
lbl_80642A40:
	.incbin "baserom.dol", 0x474A60, 0x10
.global lbl_80642A50
lbl_80642A50:
	.incbin "baserom.dol", 0x474A70, 0x2
.global lbl_80642A52
lbl_80642A52:
	.incbin "baserom.dol", 0x474A72, 0x6
.global lbl_80642A58
lbl_80642A58:
	.incbin "baserom.dol", 0x474A78, 0x8
.global lbl_80642A60
lbl_80642A60:
	.incbin "baserom.dol", 0x474A80, 0x8
.global lbl_80642A68
lbl_80642A68:
	.incbin "baserom.dol", 0x474A88, 0x8
.global lbl_80642A70
lbl_80642A70:
	.incbin "baserom.dol", 0x474A90, 0x4
.global lbl_80642A74
lbl_80642A74:
	.incbin "baserom.dol", 0x474A94, 0x4
.global lbl_80642A78
lbl_80642A78:
	.incbin "baserom.dol", 0x474A98, 0x4
.global lbl_80642A7C
lbl_80642A7C:
	.incbin "baserom.dol", 0x474A9C, 0x4
.global lbl_80642A80
lbl_80642A80:
	.incbin "baserom.dol", 0x474AA0, 0x1
.global lbl_80642A81
lbl_80642A81:
	.incbin "baserom.dol", 0x474AA1, 0x1
.global lbl_80642A82
lbl_80642A82:
	.incbin "baserom.dol", 0x474AA2, 0x1
.global lbl_80642A83
lbl_80642A83:
	.incbin "baserom.dol", 0x474AA3, 0x1
.global lbl_80642A84
lbl_80642A84:
	.incbin "baserom.dol", 0x474AA4, 0x1
.global lbl_80642A85
lbl_80642A85:
	.incbin "baserom.dol", 0x474AA5, 0x3
.global lbl_80642A88
lbl_80642A88:
	.incbin "baserom.dol", 0x474AA8, 0x8
.global lbl_80642A90
lbl_80642A90:
	.incbin "baserom.dol", 0x474AB0, 0x8
.global lbl_80642A98
lbl_80642A98:
	.incbin "baserom.dol", 0x474AB8, 0x8
.global lbl_80642AA0
lbl_80642AA0:
	.incbin "baserom.dol", 0x474AC0, 0x1
.global lbl_80642AA1
lbl_80642AA1:
	.incbin "baserom.dol", 0x474AC1, 0x3
.global lbl_80642AA4
lbl_80642AA4:
	.incbin "baserom.dol", 0x474AC4, 0x1
.global lbl_80642AA5
lbl_80642AA5:
	.incbin "baserom.dol", 0x474AC5, 0x3
.global lbl_80642AA8
lbl_80642AA8:
	.incbin "baserom.dol", 0x474AC8, 0x1
.global lbl_80642AA9
lbl_80642AA9:
	.incbin "baserom.dol", 0x474AC9, 0x7
.global lbl_80642AB0
lbl_80642AB0:
	.incbin "baserom.dol", 0x474AD0, 0x4
.global lbl_80642AB4
lbl_80642AB4:
	.incbin "baserom.dol", 0x474AD4, 0x4
.global lbl_80642AB8
lbl_80642AB8:
	.incbin "baserom.dol", 0x474AD8, 0x4
.global lbl_80642ABC
lbl_80642ABC:
	.incbin "baserom.dol", 0x474ADC, 0x4
.global lbl_80642AC0
lbl_80642AC0:
	.incbin "baserom.dol", 0x474AE0, 0x8
.global lbl_80642AC8
lbl_80642AC8:
	.incbin "baserom.dol", 0x474AE8, 0x8
.global lbl_80642AD0
lbl_80642AD0:
	.incbin "baserom.dol", 0x474AF0, 0x1
.global lbl_80642AD1
lbl_80642AD1:
	.incbin "baserom.dol", 0x474AF1, 0x1
.global lbl_80642AD2
lbl_80642AD2:
	.incbin "baserom.dol", 0x474AF2, 0x1
.global lbl_80642AD3
lbl_80642AD3:
	.incbin "baserom.dol", 0x474AF3, 0x1
.global lbl_80642AD4
lbl_80642AD4:
	.incbin "baserom.dol", 0x474AF4, 0x1
.global lbl_80642AD5
lbl_80642AD5:
	.incbin "baserom.dol", 0x474AF5, 0x3
.global lbl_80642AD8
lbl_80642AD8:
	.incbin "baserom.dol", 0x474AF8, 0x1
.global lbl_80642AD9
lbl_80642AD9:
	.incbin "baserom.dol", 0x474AF9, 0x1
.global lbl_80642ADA
lbl_80642ADA:
	.incbin "baserom.dol", 0x474AFA, 0x1
.global lbl_80642ADB
lbl_80642ADB:
	.incbin "baserom.dol", 0x474AFB, 0x5
.global lbl_80642AE0
lbl_80642AE0:
	.incbin "baserom.dol", 0x474B00, 0x8
.global lbl_80642AE8
lbl_80642AE8:
	.incbin "baserom.dol", 0x474B08, 0x4
.global lbl_80642AEC
lbl_80642AEC:
	.incbin "baserom.dol", 0x474B0C, 0x4
.global lbl_80642AF0
lbl_80642AF0:
	.incbin "baserom.dol", 0x474B10, 0x8
.global lbl_80642AF8
lbl_80642AF8:
	.incbin "baserom.dol", 0x474B18, 0x8
.global lbl_80642B00
lbl_80642B00:
	.incbin "baserom.dol", 0x474B20, 0x1
.global lbl_80642B01
lbl_80642B01:
	.incbin "baserom.dol", 0x474B21, 0x1
.global lbl_80642B02
lbl_80642B02:
	.incbin "baserom.dol", 0x474B22, 0x1
.global lbl_80642B03
lbl_80642B03:
	.incbin "baserom.dol", 0x474B23, 0x1
.global lbl_80642B04
lbl_80642B04:
	.incbin "baserom.dol", 0x474B24, 0x1
.global lbl_80642B05
lbl_80642B05:
	.incbin "baserom.dol", 0x474B25, 0x1
.global lbl_80642B06
lbl_80642B06:
	.incbin "baserom.dol", 0x474B26, 0x1
.global lbl_80642B07
lbl_80642B07:
	.incbin "baserom.dol", 0x474B27, 0x1
.global lbl_80642B08
lbl_80642B08:
	.incbin "baserom.dol", 0x474B28, 0x8
.global lbl_80642B10
lbl_80642B10:
	.incbin "baserom.dol", 0x474B30, 0x4
.global lbl_80642B14
lbl_80642B14:
	.incbin "baserom.dol", 0x474B34, 0x4
.global lbl_80642B18
lbl_80642B18:
	.incbin "baserom.dol", 0x474B38, 0x8
.global lbl_80642B20
lbl_80642B20:
	.incbin "baserom.dol", 0x474B40, 0x8
.global lbl_80642B28
lbl_80642B28:
	.incbin "baserom.dol", 0x474B48, 0x8
.global lbl_80642B30
lbl_80642B30:
	.incbin "baserom.dol", 0x474B50, 0x4
.global lbl_80642B34
lbl_80642B34:
	.incbin "baserom.dol", 0x474B54, 0x4
.global lbl_80642B38
lbl_80642B38:
	.incbin "baserom.dol", 0x474B58, 0x8
.global lbl_80642B40
lbl_80642B40:
	.incbin "baserom.dol", 0x474B60, 0x8
.global lbl_80642B48
lbl_80642B48:
	.incbin "baserom.dol", 0x474B68, 0x4
.global lbl_80642B4C
lbl_80642B4C:
	.incbin "baserom.dol", 0x474B6C, 0x4
.global lbl_80642B50
lbl_80642B50:
	.incbin "baserom.dol", 0x474B70, 0x8
.global lbl_80642B58
lbl_80642B58:
	.incbin "baserom.dol", 0x474B78, 0x4
.global lbl_80642B5C
lbl_80642B5C:
	.incbin "baserom.dol", 0x474B7C, 0x4
.global lbl_80642B60
lbl_80642B60:
	.incbin "baserom.dol", 0x474B80, 0x4
.global lbl_80642B64
lbl_80642B64:
	.incbin "baserom.dol", 0x474B84, 0x4
.global lbl_80642B68
lbl_80642B68:
	.incbin "baserom.dol", 0x474B88, 0x8
.global lbl_80642B70
lbl_80642B70:
	.incbin "baserom.dol", 0x474B90, 0x8
.global lbl_80642B78
lbl_80642B78:
	.incbin "baserom.dol", 0x474B98, 0x4
.global lbl_80642B7C
lbl_80642B7C:
	.incbin "baserom.dol", 0x474B9C, 0x4
.global lbl_80642B80
lbl_80642B80:
	.incbin "baserom.dol", 0x474BA0, 0x4
.global lbl_80642B84
lbl_80642B84:
	.incbin "baserom.dol", 0x474BA4, 0x4
.global lbl_80642B88
lbl_80642B88:
	.incbin "baserom.dol", 0x474BA8, 0x8
.global lbl_80642B90
lbl_80642B90:
	.incbin "baserom.dol", 0x474BB0, 0x8
.global lbl_80642B98
lbl_80642B98:
	.incbin "baserom.dol", 0x474BB8, 0x8
.global lbl_80642BA0
lbl_80642BA0:
	.incbin "baserom.dol", 0x474BC0, 0x8
.global lbl_80642BA8
lbl_80642BA8:
	.incbin "baserom.dol", 0x474BC8, 0x4
.global lbl_80642BAC
lbl_80642BAC:
	.incbin "baserom.dol", 0x474BCC, 0x4
.global lbl_80642BB0
lbl_80642BB0:
	.incbin "baserom.dol", 0x474BD0, 0x4
.global lbl_80642BB4
lbl_80642BB4:
	.incbin "baserom.dol", 0x474BD4, 0x4
.global lbl_80642BB8
lbl_80642BB8:
	.incbin "baserom.dol", 0x474BD8, 0x8
.global lbl_80642BC0
lbl_80642BC0:
	.incbin "baserom.dol", 0x474BE0, 0x4
.global lbl_80642BC4
lbl_80642BC4:
	.incbin "baserom.dol", 0x474BE4, 0x4
.global lbl_80642BC8
lbl_80642BC8:
	.incbin "baserom.dol", 0x474BE8, 0x4
.global lbl_80642BCC
lbl_80642BCC:
	.incbin "baserom.dol", 0x474BEC, 0x4
.global lbl_80642BD0
lbl_80642BD0:
	.incbin "baserom.dol", 0x474BF0, 0x8
.global lbl_80642BD8
lbl_80642BD8:
	.incbin "baserom.dol", 0x474BF8, 0x8
.global lbl_80642BE0
lbl_80642BE0:
	.incbin "baserom.dol", 0x474C00, 0x8
.global lbl_80642BE8
lbl_80642BE8:
	.incbin "baserom.dol", 0x474C08, 0x4
.global lbl_80642BEC
lbl_80642BEC:
	.incbin "baserom.dol", 0x474C0C, 0x4
.global lbl_80642BF0
lbl_80642BF0:
	.incbin "baserom.dol", 0x474C10, 0x4
.global lbl_80642BF4
lbl_80642BF4:
	.incbin "baserom.dol", 0x474C14, 0x4
.global lbl_80642BF8
lbl_80642BF8:
	.incbin "baserom.dol", 0x474C18, 0x8
.global lbl_80642C00
lbl_80642C00:
	.incbin "baserom.dol", 0x474C20, 0x8
.global lbl_80642C08
lbl_80642C08:
	.incbin "baserom.dol", 0x474C28, 0x4
.global lbl_80642C0C
lbl_80642C0C:
	.incbin "baserom.dol", 0x474C2C, 0x4
.global lbl_80642C10
lbl_80642C10:
	.incbin "baserom.dol", 0x474C30, 0x4
.global lbl_80642C14
lbl_80642C14:
	.incbin "baserom.dol", 0x474C34, 0x4
.global lbl_80642C18
lbl_80642C18:
	.incbin "baserom.dol", 0x474C38, 0x8
.global lbl_80642C20
lbl_80642C20:
	.incbin "baserom.dol", 0x474C40, 0x8
.global lbl_80642C28
lbl_80642C28:
	.incbin "baserom.dol", 0x474C48, 0x4
.global lbl_80642C2C
lbl_80642C2C:
	.incbin "baserom.dol", 0x474C4C, 0x4
.global lbl_80642C30
lbl_80642C30:
	.incbin "baserom.dol", 0x474C50, 0x4
.global lbl_80642C34
lbl_80642C34:
	.incbin "baserom.dol", 0x474C54, 0x4
.global lbl_80642C38
lbl_80642C38:
	.incbin "baserom.dol", 0x474C58, 0x4
.global lbl_80642C3C
lbl_80642C3C:
	.incbin "baserom.dol", 0x474C5C, 0x4
.global lbl_80642C40
lbl_80642C40:
	.incbin "baserom.dol", 0x474C60, 0x4
.global lbl_80642C44
lbl_80642C44:
	.incbin "baserom.dol", 0x474C64, 0x4
.global lbl_80642C48
lbl_80642C48:
	.incbin "baserom.dol", 0x474C68, 0x4
.global lbl_80642C4C
lbl_80642C4C:
	.incbin "baserom.dol", 0x474C6C, 0x4
.global lbl_80642C50
lbl_80642C50:
	.incbin "baserom.dol", 0x474C70, 0x4
.global lbl_80642C54
lbl_80642C54:
	.incbin "baserom.dol", 0x474C74, 0x4
.global lbl_80642C58
lbl_80642C58:
	.incbin "baserom.dol", 0x474C78, 0x4
.global lbl_80642C5C
lbl_80642C5C:
	.incbin "baserom.dol", 0x474C7C, 0x4
.global lbl_80642C60
lbl_80642C60:
	.incbin "baserom.dol", 0x474C80, 0x8
.global lbl_80642C68
lbl_80642C68:
	.incbin "baserom.dol", 0x474C88, 0x8
.global lbl_80642C70
lbl_80642C70:
	.incbin "baserom.dol", 0x474C90, 0x4
.global lbl_80642C74
lbl_80642C74:
	.incbin "baserom.dol", 0x474C94, 0x4
.global lbl_80642C78
lbl_80642C78:
	.incbin "baserom.dol", 0x474C98, 0x8
.global lbl_80642C80
lbl_80642C80:
	.incbin "baserom.dol", 0x474CA0, 0x8
.global lbl_80642C88
lbl_80642C88:
	.incbin "baserom.dol", 0x474CA8, 0x4
.global lbl_80642C8C
lbl_80642C8C:
	.incbin "baserom.dol", 0x474CAC, 0x4
.global lbl_80642C90
lbl_80642C90:
	.incbin "baserom.dol", 0x474CB0, 0x8
.global lbl_80642C98
lbl_80642C98:
	.incbin "baserom.dol", 0x474CB8, 0x8
.global lbl_80642CA0
lbl_80642CA0:
	.incbin "baserom.dol", 0x474CC0, 0x8
.global lbl_80642CA8
lbl_80642CA8:
	.incbin "baserom.dol", 0x474CC8, 0x4
.global lbl_80642CAC
lbl_80642CAC:
	.incbin "baserom.dol", 0x474CCC, 0x4
.global lbl_80642CB0
lbl_80642CB0:
	.incbin "baserom.dol", 0x474CD0, 0x8
.global lbl_80642CB8
lbl_80642CB8:
	.incbin "baserom.dol", 0x474CD8, 0x8
.global lbl_80642CC0
lbl_80642CC0:
	.incbin "baserom.dol", 0x474CE0, 0x8
.global lbl_80642CC8
lbl_80642CC8:
	.incbin "baserom.dol", 0x474CE8, 0x4
.global lbl_80642CCC
lbl_80642CCC:
	.incbin "baserom.dol", 0x474CEC, 0x4
.global lbl_80642CD0
lbl_80642CD0:
	.incbin "baserom.dol", 0x474CF0, 0x4
.global lbl_80642CD4
lbl_80642CD4:
	.incbin "baserom.dol", 0x474CF4, 0x4
.global lbl_80642CD8
lbl_80642CD8:
	.incbin "baserom.dol", 0x474CF8, 0x4
.global lbl_80642CDC
lbl_80642CDC:
	.incbin "baserom.dol", 0x474CFC, 0x4
.global lbl_80642CE0
lbl_80642CE0:
	.incbin "baserom.dol", 0x474D00, 0x4
.global lbl_80642CE4
lbl_80642CE4:
	.incbin "baserom.dol", 0x474D04, 0x4
.global lbl_80642CE8
lbl_80642CE8:
	.incbin "baserom.dol", 0x474D08, 0x8
.global lbl_80642CF0
lbl_80642CF0:
	.incbin "baserom.dol", 0x474D10, 0x8
.global lbl_80642CF8
lbl_80642CF8:
	.incbin "baserom.dol", 0x474D18, 0x8
.global lbl_80642D00
lbl_80642D00:
	.incbin "baserom.dol", 0x474D20, 0x4
.global lbl_80642D04
lbl_80642D04:
	.incbin "baserom.dol", 0x474D24, 0x4
.global lbl_80642D08
lbl_80642D08:
	.incbin "baserom.dol", 0x474D28, 0x4
.global lbl_80642D0C
lbl_80642D0C:
	.incbin "baserom.dol", 0x474D2C, 0x4
.global lbl_80642D10
lbl_80642D10:
	.incbin "baserom.dol", 0x474D30, 0x4
.global lbl_80642D14
lbl_80642D14:
	.incbin "baserom.dol", 0x474D34, 0x4
.global lbl_80642D18
lbl_80642D18:
	.incbin "baserom.dol", 0x474D38, 0x4
.global lbl_80642D1C
lbl_80642D1C:
	.incbin "baserom.dol", 0x474D3C, 0x4
.global lbl_80642D20
lbl_80642D20:
	.incbin "baserom.dol", 0x474D40, 0x4
.global lbl_80642D24
lbl_80642D24:
	.incbin "baserom.dol", 0x474D44, 0x4
.global lbl_80642D28
lbl_80642D28:
	.incbin "baserom.dol", 0x474D48, 0x4
.global lbl_80642D2C
lbl_80642D2C:
	.incbin "baserom.dol", 0x474D4C, 0x4
.global lbl_80642D30
lbl_80642D30:
	.incbin "baserom.dol", 0x474D50, 0x4
.global lbl_80642D34
lbl_80642D34:
	.incbin "baserom.dol", 0x474D54, 0x4
.global lbl_80642D38
lbl_80642D38:
	.incbin "baserom.dol", 0x474D58, 0x4
.global lbl_80642D3C
lbl_80642D3C:
	.incbin "baserom.dol", 0x474D5C, 0x4
.global lbl_80642D40
lbl_80642D40:
	.incbin "baserom.dol", 0x474D60, 0x8
.global lbl_80642D48
lbl_80642D48:
	.incbin "baserom.dol", 0x474D68, 0x8
.global lbl_80642D50
lbl_80642D50:
	.incbin "baserom.dol", 0x474D70, 0x8
.global lbl_80642D58
lbl_80642D58:
	.incbin "baserom.dol", 0x474D78, 0x8
.global lbl_80642D60
lbl_80642D60:
	.incbin "baserom.dol", 0x474D80, 0x4
.global lbl_80642D64
lbl_80642D64:
	.incbin "baserom.dol", 0x474D84, 0x4
.global lbl_80642D68
lbl_80642D68:
	.incbin "baserom.dol", 0x474D88, 0x4
.global lbl_80642D6C
lbl_80642D6C:
	.incbin "baserom.dol", 0x474D8C, 0x4
.global lbl_80642D70
lbl_80642D70:
	.incbin "baserom.dol", 0x474D90, 0x4
.global lbl_80642D74
lbl_80642D74:
	.incbin "baserom.dol", 0x474D94, 0x4
.global lbl_80642D78
lbl_80642D78:
	.incbin "baserom.dol", 0x474D98, 0x4
.global lbl_80642D7C
lbl_80642D7C:
	.incbin "baserom.dol", 0x474D9C, 0x4
.global lbl_80642D80
lbl_80642D80:
	.incbin "baserom.dol", 0x474DA0, 0x4
.global lbl_80642D84
lbl_80642D84:
	.incbin "baserom.dol", 0x474DA4, 0x4
.global lbl_80642D88
lbl_80642D88:
	.incbin "baserom.dol", 0x474DA8, 0x4
.global lbl_80642D8C
lbl_80642D8C:
	.incbin "baserom.dol", 0x474DAC, 0x4
.global lbl_80642D90
lbl_80642D90:
	.incbin "baserom.dol", 0x474DB0, 0x4
.global lbl_80642D94
lbl_80642D94:
	.incbin "baserom.dol", 0x474DB4, 0x4
.global lbl_80642D98
lbl_80642D98:
	.incbin "baserom.dol", 0x474DB8, 0x4
.global lbl_80642D9C
lbl_80642D9C:
	.incbin "baserom.dol", 0x474DBC, 0x4
.global lbl_80642DA0
lbl_80642DA0:
	.incbin "baserom.dol", 0x474DC0, 0x8
.global lbl_80642DA8
lbl_80642DA8:
	.incbin "baserom.dol", 0x474DC8, 0x4
.global lbl_80642DAC
lbl_80642DAC:
	.incbin "baserom.dol", 0x474DCC, 0x4
.global lbl_80642DB0
lbl_80642DB0:
	.incbin "baserom.dol", 0x474DD0, 0x4
.global lbl_80642DB4
lbl_80642DB4:
	.incbin "baserom.dol", 0x474DD4, 0x4
.global lbl_80642DB8
lbl_80642DB8:
	.incbin "baserom.dol", 0x474DD8, 0x4
.global lbl_80642DBC
lbl_80642DBC:
	.incbin "baserom.dol", 0x474DDC, 0x4
.global lbl_80642DC0
lbl_80642DC0:
	.incbin "baserom.dol", 0x474DE0, 0x4
.global lbl_80642DC4
lbl_80642DC4:
	.incbin "baserom.dol", 0x474DE4, 0x4
.global lbl_80642DC8
lbl_80642DC8:
	.incbin "baserom.dol", 0x474DE8, 0x8
.global lbl_80642DD0
lbl_80642DD0:
	.incbin "baserom.dol", 0x474DF0, 0x8
.global lbl_80642DD8
lbl_80642DD8:
	.incbin "baserom.dol", 0x474DF8, 0x8
.global lbl_80642DE0
lbl_80642DE0:
	.incbin "baserom.dol", 0x474E00, 0x8
.global lbl_80642DE8
lbl_80642DE8:
	.incbin "baserom.dol", 0x474E08, 0x8
.global lbl_80642DF0
lbl_80642DF0:
	.incbin "baserom.dol", 0x474E10, 0x8
.global lbl_80642DF8
lbl_80642DF8:
	.incbin "baserom.dol", 0x474E18, 0x4
.global lbl_80642DFC
lbl_80642DFC:
	.incbin "baserom.dol", 0x474E1C, 0x4
.global lbl_80642E00
lbl_80642E00:
	.incbin "baserom.dol", 0x474E20, 0x4
.global lbl_80642E04
lbl_80642E04:
	.incbin "baserom.dol", 0x474E24, 0x4
.global lbl_80642E08
lbl_80642E08:
	.incbin "baserom.dol", 0x474E28, 0x8
.global lbl_80642E10
lbl_80642E10:
	.incbin "baserom.dol", 0x474E30, 0x8
.global lbl_80642E18
lbl_80642E18:
	.incbin "baserom.dol", 0x474E38, 0x8
.global lbl_80642E20
lbl_80642E20:
	.incbin "baserom.dol", 0x474E40, 0x4
.global lbl_80642E24
lbl_80642E24:
	.incbin "baserom.dol", 0x474E44, 0x4
.global lbl_80642E28
lbl_80642E28:
	.incbin "baserom.dol", 0x474E48, 0x4
.global lbl_80642E2C
lbl_80642E2C:
	.incbin "baserom.dol", 0x474E4C, 0x4
.global lbl_80642E30
lbl_80642E30:
	.incbin "baserom.dol", 0x474E50, 0x4
.global lbl_80642E34
lbl_80642E34:
	.incbin "baserom.dol", 0x474E54, 0x4
.global lbl_80642E38
lbl_80642E38:
	.incbin "baserom.dol", 0x474E58, 0x8
.global lbl_80642E40
lbl_80642E40:
	.incbin "baserom.dol", 0x474E60, 0x4
.global lbl_80642E44
lbl_80642E44:
	.incbin "baserom.dol", 0x474E64, 0x4
.global lbl_80642E48
lbl_80642E48:
	.incbin "baserom.dol", 0x474E68, 0x4
.global lbl_80642E4C
lbl_80642E4C:
	.incbin "baserom.dol", 0x474E6C, 0x4
.global lbl_80642E50
lbl_80642E50:
	.incbin "baserom.dol", 0x474E70, 0x8
.global lbl_80642E58
lbl_80642E58:
	.incbin "baserom.dol", 0x474E78, 0x8
.global lbl_80642E60
lbl_80642E60:
	.incbin "baserom.dol", 0x474E80, 0x4
.global lbl_80642E64
lbl_80642E64:
	.incbin "baserom.dol", 0x474E84, 0x4
.global lbl_80642E68
lbl_80642E68:
	.incbin "baserom.dol", 0x474E88, 0x8
.global lbl_80642E70
lbl_80642E70:
	.incbin "baserom.dol", 0x474E90, 0x8
.global lbl_80642E78
lbl_80642E78:
	.incbin "baserom.dol", 0x474E98, 0x8
.global lbl_80642E80
lbl_80642E80:
	.incbin "baserom.dol", 0x474EA0, 0x4
.global lbl_80642E84
lbl_80642E84:
	.incbin "baserom.dol", 0x474EA4, 0x4
.global lbl_80642E88
lbl_80642E88:
	.incbin "baserom.dol", 0x474EA8, 0x8
.global lbl_80642E90
lbl_80642E90:
	.incbin "baserom.dol", 0x474EB0, 0x8
.global lbl_80642E98
lbl_80642E98:
	.incbin "baserom.dol", 0x474EB8, 0x8
.global lbl_80642EA0
lbl_80642EA0:
	.incbin "baserom.dol", 0x474EC0, 0x4
.global lbl_80642EA4
lbl_80642EA4:
	.incbin "baserom.dol", 0x474EC4, 0x4
.global lbl_80642EA8
lbl_80642EA8:
	.incbin "baserom.dol", 0x474EC8, 0x4
.global lbl_80642EAC
lbl_80642EAC:
	.incbin "baserom.dol", 0x474ECC, 0x4
.global lbl_80642EB0
lbl_80642EB0:
	.incbin "baserom.dol", 0x474ED0, 0x8
.global lbl_80642EB8
lbl_80642EB8:
	.incbin "baserom.dol", 0x474ED8, 0x8
.global lbl_80642EC0
lbl_80642EC0:
	.incbin "baserom.dol", 0x474EE0, 0x8
.global lbl_80642EC8
lbl_80642EC8:
	.incbin "baserom.dol", 0x474EE8, 0x8
.global lbl_80642ED0
lbl_80642ED0:
	.incbin "baserom.dol", 0x474EF0, 0x8
.global lbl_80642ED8
lbl_80642ED8:
	.incbin "baserom.dol", 0x474EF8, 0x4
.global lbl_80642EDC
lbl_80642EDC:
	.incbin "baserom.dol", 0x474EFC, 0x4
.global lbl_80642EE0
lbl_80642EE0:
	.incbin "baserom.dol", 0x474F00, 0x4
.global lbl_80642EE4
lbl_80642EE4:
	.incbin "baserom.dol", 0x474F04, 0x4
.global lbl_80642EE8
lbl_80642EE8:
	.incbin "baserom.dol", 0x474F08, 0x4
.global lbl_80642EEC
lbl_80642EEC:
	.incbin "baserom.dol", 0x474F0C, 0x4
.global lbl_80642EF0
lbl_80642EF0:
	.incbin "baserom.dol", 0x474F10, 0x4
.global lbl_80642EF4
lbl_80642EF4:
	.incbin "baserom.dol", 0x474F14, 0x4
.global lbl_80642EF8
lbl_80642EF8:
	.incbin "baserom.dol", 0x474F18, 0x4
.global lbl_80642EFC
lbl_80642EFC:
	.incbin "baserom.dol", 0x474F1C, 0x4
.global lbl_80642F00
lbl_80642F00:
	.incbin "baserom.dol", 0x474F20, 0x4
.global lbl_80642F04
lbl_80642F04:
	.incbin "baserom.dol", 0x474F24, 0x4
.global lbl_80642F08
lbl_80642F08:
	.incbin "baserom.dol", 0x474F28, 0x8
.global lbl_80642F10
lbl_80642F10:
	.incbin "baserom.dol", 0x474F30, 0x8
.global lbl_80642F18
lbl_80642F18:
	.incbin "baserom.dol", 0x474F38, 0x8
.global lbl_80642F20
lbl_80642F20:
	.incbin "baserom.dol", 0x474F40, 0x8
.global lbl_80642F28
lbl_80642F28:
	.incbin "baserom.dol", 0x474F48, 0x4
.global lbl_80642F2C
lbl_80642F2C:
	.incbin "baserom.dol", 0x474F4C, 0x4
.global lbl_80642F30
lbl_80642F30:
	.incbin "baserom.dol", 0x474F50, 0x4
.global lbl_80642F34
lbl_80642F34:
	.incbin "baserom.dol", 0x474F54, 0x4
.global lbl_80642F38
lbl_80642F38:
	.incbin "baserom.dol", 0x474F58, 0x8
.global lbl_80642F40
lbl_80642F40:
	.incbin "baserom.dol", 0x474F60, 0x8
.global lbl_80642F48
lbl_80642F48:
	.incbin "baserom.dol", 0x474F68, 0x4
.global lbl_80642F4C
lbl_80642F4C:
	.incbin "baserom.dol", 0x474F6C, 0x4
.global lbl_80642F50
lbl_80642F50:
	.incbin "baserom.dol", 0x474F70, 0x4
.global lbl_80642F54
lbl_80642F54:
	.incbin "baserom.dol", 0x474F74, 0x4
.global lbl_80642F58
lbl_80642F58:
	.incbin "baserom.dol", 0x474F78, 0x4
.global lbl_80642F5C
lbl_80642F5C:
	.incbin "baserom.dol", 0x474F7C, 0x4
.global lbl_80642F60
lbl_80642F60:
	.incbin "baserom.dol", 0x474F80, 0x8
.global lbl_80642F68
lbl_80642F68:
	.incbin "baserom.dol", 0x474F88, 0x8
.global lbl_80642F70
lbl_80642F70:
	.incbin "baserom.dol", 0x474F90, 0x4
.global lbl_80642F74
lbl_80642F74:
	.incbin "baserom.dol", 0x474F94, 0x4
.global lbl_80642F78
lbl_80642F78:
	.incbin "baserom.dol", 0x474F98, 0x4
.global lbl_80642F7C
lbl_80642F7C:
	.incbin "baserom.dol", 0x474F9C, 0x4
.global lbl_80642F80
lbl_80642F80:
	.incbin "baserom.dol", 0x474FA0, 0x4
.global lbl_80642F84
lbl_80642F84:
	.incbin "baserom.dol", 0x474FA4, 0x4
.global lbl_80642F88
lbl_80642F88:
	.incbin "baserom.dol", 0x474FA8, 0x4
.global lbl_80642F8C
lbl_80642F8C:
	.incbin "baserom.dol", 0x474FAC, 0x4
.global lbl_80642F90
lbl_80642F90:
	.incbin "baserom.dol", 0x474FB0, 0x4
.global lbl_80642F94
lbl_80642F94:
	.incbin "baserom.dol", 0x474FB4, 0x4
.global lbl_80642F98
lbl_80642F98:
	.incbin "baserom.dol", 0x474FB8, 0x4
.global lbl_80642F9C
lbl_80642F9C:
	.incbin "baserom.dol", 0x474FBC, 0x4
.global lbl_80642FA0
lbl_80642FA0:
	.incbin "baserom.dol", 0x474FC0, 0x8
.global lbl_80642FA8
lbl_80642FA8:
	.incbin "baserom.dol", 0x474FC8, 0x8
.global lbl_80642FB0
lbl_80642FB0:
	.incbin "baserom.dol", 0x474FD0, 0x4
.global lbl_80642FB4
lbl_80642FB4:
	.incbin "baserom.dol", 0x474FD4, 0x1
.global lbl_80642FB5
lbl_80642FB5:
	.incbin "baserom.dol", 0x474FD5, 0x1
.global lbl_80642FB6
lbl_80642FB6:
	.incbin "baserom.dol", 0x474FD6, 0x1
.global lbl_80642FB7
lbl_80642FB7:
	.incbin "baserom.dol", 0x474FD7, 0x1
.global lbl_80642FB8
lbl_80642FB8:
	.incbin "baserom.dol", 0x474FD8, 0x8
.global lbl_80642FC0
lbl_80642FC0:
	.incbin "baserom.dol", 0x474FE0, 0x4
.global lbl_80642FC4
lbl_80642FC4:
	.incbin "baserom.dol", 0x474FE4, 0x4
.global lbl_80642FC8
lbl_80642FC8:
	.incbin "baserom.dol", 0x474FE8, 0x8
.global lbl_80642FD0
lbl_80642FD0:
	.incbin "baserom.dol", 0x474FF0, 0x2
.global lbl_80642FD2
lbl_80642FD2:
	.incbin "baserom.dol", 0x474FF2, 0x4
.global lbl_80642FD6
lbl_80642FD6:
	.incbin "baserom.dol", 0x474FF6, 0x4
.global lbl_80642FDA
lbl_80642FDA:
	.incbin "baserom.dol", 0x474FFA, 0xE
.global lbl_80642FE8
lbl_80642FE8:
	.incbin "baserom.dol", 0x475008, 0x8
.global lbl_80642FF0
lbl_80642FF0:
	.incbin "baserom.dol", 0x475010, 0x8
.global lbl_80642FF8
lbl_80642FF8:
	.incbin "baserom.dol", 0x475018, 0x8
.global lbl_80643000
lbl_80643000:
	.incbin "baserom.dol", 0x475020, 0x8
.global lbl_80643008
lbl_80643008:
	.incbin "baserom.dol", 0x475028, 0x1
.global lbl_80643009
lbl_80643009:
	.incbin "baserom.dol", 0x475029, 0x17
