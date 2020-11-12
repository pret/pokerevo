	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

.global lbl_80423410
lbl_80423410:
	.incbin "baserom.dol", 0x41F510, 0x48
.global lbl_80423458
lbl_80423458:
	.incbin "baserom.dol", 0x41F558, 0x24
.global lbl_8042347C
lbl_8042347C:
	.incbin "baserom.dol", 0x41F57C, 0x84
.global lbl_80423500
lbl_80423500:
	.incbin "baserom.dol", 0x41F600, 0x40
.global lbl_80423540
lbl_80423540:
	.incbin "baserom.dol", 0x41F640, 0x10
.global lbl_80423550
lbl_80423550:
	.incbin "baserom.dol", 0x41F650, 0x40
.global lbl_80423590
lbl_80423590:
	.incbin "baserom.dol", 0x41F690, 0x40
.global lbl_804235D0
lbl_804235D0:
	.incbin "baserom.dol", 0x41F6D0, 0x2C
.global lbl_804235FC
lbl_804235FC:
	.incbin "baserom.dol", 0x41F6FC, 0x24
.global lbl_80423620
lbl_80423620:
	.incbin "baserom.dol", 0x41F720, 0x30
.global lbl_80423650
lbl_80423650:
	.incbin "baserom.dol", 0x41F750, 0x18
.global lbl_80423668
lbl_80423668:
	.incbin "baserom.dol", 0x41F768, 0x60
.global lbl_804236C8
lbl_804236C8:
	.incbin "baserom.dol", 0x41F7C8, 0x18
.global lbl_804236E0
lbl_804236E0:
	.incbin "baserom.dol", 0x41F7E0, 0x20
.global lbl_80423700
lbl_80423700:
	.incbin "baserom.dol", 0x41F800, 0x20
.global lbl_80423720
lbl_80423720:
	.incbin "baserom.dol", 0x41F820, 0x48
.global lbl_80423768
lbl_80423768:
	.incbin "baserom.dol", 0x41F868, 0x38
.global lbl_804237A0
lbl_804237A0:
	.incbin "baserom.dol", 0x41F8A0, 0x10
.global lbl_804237B0
lbl_804237B0:
	.incbin "baserom.dol", 0x41F8B0, 0x38
.global lbl_804237E8
lbl_804237E8:
	.incbin "baserom.dol", 0x41F8E8, 0x14
.global lbl_804237FC
lbl_804237FC:
	.incbin "baserom.dol", 0x41F8FC, 0x14
.global lbl_80423810
lbl_80423810:
	.incbin "baserom.dol", 0x41F910, 0x38
.global lbl_80423848
lbl_80423848:
	.incbin "baserom.dol", 0x41F948, 0x20
.global lbl_80423868
lbl_80423868:
	.incbin "baserom.dol", 0x41F968, 0x48
.global lbl_804238B0
lbl_804238B0:
	.incbin "baserom.dol", 0x41F9B0, 0x50
.global lbl_80423900
lbl_80423900:
	.incbin "baserom.dol", 0x41FA00, 0x48
.global lbl_80423948
lbl_80423948:
	.incbin "baserom.dol", 0x41FA48, 0x48
.global lbl_80423990
lbl_80423990:
	.incbin "baserom.dol", 0x41FA90, 0x48
.global lbl_804239D8
lbl_804239D8:
	.incbin "baserom.dol", 0x41FAD8, 0x50
.global lbl_80423A28
lbl_80423A28:
	.incbin "baserom.dol", 0x41FB28, 0x20
.global lbl_80423A48
lbl_80423A48:
	.incbin "baserom.dol", 0x41FB48, 0x48
.global lbl_80423A90
lbl_80423A90:
	.incbin "baserom.dol", 0x41FB90, 0x2C
.global lbl_80423ABC
lbl_80423ABC:
	.incbin "baserom.dol", 0x41FBBC, 0x7C
.global lbl_80423B38
lbl_80423B38:
	.incbin "baserom.dol", 0x41FC38, 0x38
.global lbl_80423B70
lbl_80423B70:
	.incbin "baserom.dol", 0x41FC70, 0x40
.global lbl_80423BB0
lbl_80423BB0:
	.incbin "baserom.dol", 0x41FCB0, 0x30
.global lbl_80423BE0
lbl_80423BE0:
	.incbin "baserom.dol", 0x41FCE0, 0x30
.global lbl_80423C10
lbl_80423C10:
	.incbin "baserom.dol", 0x41FD10, 0x10
.global lbl_80423C20
lbl_80423C20:
	.incbin "baserom.dol", 0x41FD20, 0x18
.global lbl_80423C38
lbl_80423C38:
	.incbin "baserom.dol", 0x41FD38, 0x10
.global lbl_80423C48
lbl_80423C48:
	.incbin "baserom.dol", 0x41FD48, 0x24
.global lbl_80423C6C
lbl_80423C6C:
	.incbin "baserom.dol", 0x41FD6C, 0x14
.global lbl_80423C80
lbl_80423C80:
	.incbin "baserom.dol", 0x41FD80, 0x80
.global lbl_80423D00
lbl_80423D00:
	.incbin "baserom.dol", 0x41FE00, 0x10
.global lbl_80423D10
lbl_80423D10:
	.incbin "baserom.dol", 0x41FE10, 0x70
.global lbl_80423D80
lbl_80423D80:
	.incbin "baserom.dol", 0x41FE80, 0x14
.global lbl_80423D94
lbl_80423D94:
	.incbin "baserom.dol", 0x41FE94, 0x74
.global lbl_80423E08
lbl_80423E08:
	.incbin "baserom.dol", 0x41FF08, 0x30
.global lbl_80423E38
lbl_80423E38:
	.incbin "baserom.dol", 0x41FF38, 0x20
.global lbl_80423E58
lbl_80423E58:
	.incbin "baserom.dol", 0x41FF58, 0x24
.global lbl_80423E7C
lbl_80423E7C:
	.incbin "baserom.dol", 0x41FF7C, 0x24
.global lbl_80423EA0
lbl_80423EA0:
	.incbin "baserom.dol", 0x41FFA0, 0x10
.global lbl_80423EB0
lbl_80423EB0:
	.incbin "baserom.dol", 0x41FFB0, 0x14
.global lbl_80423EC4
lbl_80423EC4:
	.incbin "baserom.dol", 0x41FFC4, 0x28
.global lbl_80423EEC
lbl_80423EEC:
	.incbin "baserom.dol", 0x41FFEC, 0xA8
.global lbl_80423F94
lbl_80423F94:
	.incbin "baserom.dol", 0x420094, 0xC
.global lbl_80423FA0
lbl_80423FA0:
	.incbin "baserom.dol", 0x4200A0, 0x24
.global lbl_80423FC4
lbl_80423FC4:
	.incbin "baserom.dol", 0x4200C4, 0x24
.global lbl_80423FE8
lbl_80423FE8:
	.incbin "baserom.dol", 0x4200E8, 0x14
.global lbl_80423FFC
lbl_80423FFC:
	.incbin "baserom.dol", 0x4200FC, 0x14
.global lbl_80424010
lbl_80424010:
	.incbin "baserom.dol", 0x420110, 0x18
.global lbl_80424028
lbl_80424028:
	.incbin "baserom.dol", 0x420128, 0x28
.global lbl_80424050
lbl_80424050:
	.incbin "baserom.dol", 0x420150, 0x18
.global lbl_80424068
lbl_80424068:
	.incbin "baserom.dol", 0x420168, 0x44
.global lbl_804240AC
lbl_804240AC:
	.incbin "baserom.dol", 0x4201AC, 0x14
.global lbl_804240C0
lbl_804240C0:
	.incbin "baserom.dol", 0x4201C0, 0x14
.global lbl_804240D4
lbl_804240D4:
	.incbin "baserom.dol", 0x4201D4, 0x48
.global lbl_8042411C
lbl_8042411C:
	.incbin "baserom.dol", 0x42021C, 0x10
.global lbl_8042412C
lbl_8042412C:
	.incbin "baserom.dol", 0x42022C, 0x14
.global lbl_80424140
lbl_80424140:
	.incbin "baserom.dol", 0x420240, 0x14
.global lbl_80424154
lbl_80424154:
	.incbin "baserom.dol", 0x420254, 0x14
.global lbl_80424168
lbl_80424168:
	.incbin "baserom.dol", 0x420268, 0x14
.global lbl_8042417C
lbl_8042417C:
	.incbin "baserom.dol", 0x42027C, 0x14
.global lbl_80424190
lbl_80424190:
	.incbin "baserom.dol", 0x420290, 0x14
.global lbl_804241A4
lbl_804241A4:
	.incbin "baserom.dol", 0x4202A4, 0x4C
.global lbl_804241F0
lbl_804241F0:
	.incbin "baserom.dol", 0x4202F0, 0x90
.global lbl_80424280
lbl_80424280:
	.incbin "baserom.dol", 0x420380, 0x28C
.global lbl_8042450C
lbl_8042450C:
	.incbin "baserom.dol", 0x42060C, 0x28
.global lbl_80424534
lbl_80424534:
	.incbin "baserom.dol", 0x420634, 0x64
.global lbl_80424598
lbl_80424598:
	.incbin "baserom.dol", 0x420698, 0x10
.global lbl_804245A8
lbl_804245A8:
	.incbin "baserom.dol", 0x4206A8, 0x14
.global lbl_804245BC
lbl_804245BC:
	.incbin "baserom.dol", 0x4206BC, 0x24
.global lbl_804245E0
lbl_804245E0:
	.incbin "baserom.dol", 0x4206E0, 0x20
.global lbl_80424600
lbl_80424600:
	.incbin "baserom.dol", 0x420700, 0x58
.global lbl_80424658
lbl_80424658:
	.incbin "baserom.dol", 0x420758, 0x18
.global lbl_80424670
lbl_80424670:
	.incbin "baserom.dol", 0x420770, 0x18
.global lbl_80424688
lbl_80424688:
	.incbin "baserom.dol", 0x420788, 0x18
.global lbl_804246A0
lbl_804246A0:
	.incbin "baserom.dol", 0x4207A0, 0x34
.global lbl_804246D4
lbl_804246D4:
	.incbin "baserom.dol", 0x4207D4, 0x44
.global lbl_80424718
lbl_80424718:
	.incbin "baserom.dol", 0x420818, 0x28
.global lbl_80424740
lbl_80424740:
	.incbin "baserom.dol", 0x420840, 0xC8
.global lbl_80424808
lbl_80424808:
	.incbin "baserom.dol", 0x420908, 0x38
.global lbl_80424840
lbl_80424840:
	.incbin "baserom.dol", 0x420940, 0xDC
.global lbl_8042491C
lbl_8042491C:
	.incbin "baserom.dol", 0x420A1C, 0xC
.global lbl_80424928
lbl_80424928:
	.incbin "baserom.dol", 0x420A28, 0x30
.global lbl_80424958
lbl_80424958:
	.incbin "baserom.dol", 0x420A58, 0x10
.global lbl_80424968
lbl_80424968:
	.incbin "baserom.dol", 0x420A68, 0xE8
.global lbl_80424A50
lbl_80424A50:
	.incbin "baserom.dol", 0x420B50, 0x18
.global lbl_80424A68
lbl_80424A68:
	.incbin "baserom.dol", 0x420B68, 0x18
.global lbl_80424A80
lbl_80424A80:
	.incbin "baserom.dol", 0x420B80, 0x180
.global lbl_80424C00
lbl_80424C00:
	.incbin "baserom.dol", 0x420D00, 0xA0
.global lbl_80424CA0
lbl_80424CA0:
	.incbin "baserom.dol", 0x420DA0, 0x20
.global lbl_80424CC0
lbl_80424CC0:
	.incbin "baserom.dol", 0x420DC0, 0x44
.global lbl_80424D04
lbl_80424D04:
	.incbin "baserom.dol", 0x420E04, 0x5C
.global lbl_80424D60
lbl_80424D60:
	.incbin "baserom.dol", 0x420E60, 0x28
.global lbl_80424D88
lbl_80424D88:
	.incbin "baserom.dol", 0x420E88, 0x2C
.global lbl_80424DB4
lbl_80424DB4:
	.incbin "baserom.dol", 0x420EB4, 0x80
.global lbl_80424E34
lbl_80424E34:
	.incbin "baserom.dol", 0x420F34, 0x2C
.global lbl_80424E60
lbl_80424E60:
	.incbin "baserom.dol", 0x420F60, 0x18
.global lbl_80424E78
lbl_80424E78:
	.incbin "baserom.dol", 0x420F78, 0x30
.global lbl_80424EA8
lbl_80424EA8:
	.incbin "baserom.dol", 0x420FA8, 0x14
.global lbl_80424EBC
lbl_80424EBC:
	.incbin "baserom.dol", 0x420FBC, 0x2C
.global lbl_80424EE8
lbl_80424EE8:
	.incbin "baserom.dol", 0x420FE8, 0x40
.global lbl_80424F28
lbl_80424F28:
	.incbin "baserom.dol", 0x421028, 0x38
.global lbl_80424F60
lbl_80424F60:
	.incbin "baserom.dol", 0x421060, 0x140
.global lbl_804250A0
lbl_804250A0:
	.incbin "baserom.dol", 0x4211A0, 0x18
.global lbl_804250B8
lbl_804250B8:
	.incbin "baserom.dol", 0x4211B8, 0x38
.global lbl_804250F0
lbl_804250F0:
	.incbin "baserom.dol", 0x4211F0, 0xC
.global lbl_804250FC
lbl_804250FC:
	.incbin "baserom.dol", 0x4211FC, 0x14
.global lbl_80425110
lbl_80425110:
	.incbin "baserom.dol", 0x421210, 0x34
.global lbl_80425144
lbl_80425144:
	.incbin "baserom.dol", 0x421244, 0xC4
.global lbl_80425208
lbl_80425208:
	.incbin "baserom.dol", 0x421308, 0x54
.global lbl_8042525C
lbl_8042525C:
	.incbin "baserom.dol", 0x42135C, 0xC
.global lbl_80425268
lbl_80425268:
	.incbin "baserom.dol", 0x421368, 0x18
.global lbl_80425280
lbl_80425280:
	.incbin "baserom.dol", 0x421380, 0x18
.global lbl_80425298
lbl_80425298:
	.incbin "baserom.dol", 0x421398, 0x110
.global lbl_804253A8
lbl_804253A8:
	.incbin "baserom.dol", 0x4214A8, 0x88
.global lbl_80425430
lbl_80425430:
	.incbin "baserom.dol", 0x421530, 0x34
.global lbl_80425464
lbl_80425464:
	.incbin "baserom.dol", 0x421564, 0xEC
.global lbl_80425550
lbl_80425550:
	.incbin "baserom.dol", 0x421650, 0x1C
.global lbl_8042556C
lbl_8042556C:
	.incbin "baserom.dol", 0x42166C, 0x1C
.global lbl_80425588
lbl_80425588:
	.incbin "baserom.dol", 0x421688, 0x20
.global lbl_804255A8
lbl_804255A8:
	.incbin "baserom.dol", 0x4216A8, 0x20
.global lbl_804255C8
lbl_804255C8:
	.incbin "baserom.dol", 0x4216C8, 0x290
.global lbl_80425858
lbl_80425858:
	.incbin "baserom.dol", 0x421958, 0xD4
.global lbl_8042592C
lbl_8042592C:
	.incbin "baserom.dol", 0x421A2C, 0x20
.global lbl_8042594C
lbl_8042594C:
	.incbin "baserom.dol", 0x421A4C, 0x24
.global lbl_80425970
lbl_80425970:
	.incbin "baserom.dol", 0x421A70, 0x90
.global lbl_80425A00
lbl_80425A00:
	.incbin "baserom.dol", 0x421B00, 0x80
.global lbl_80425A80
lbl_80425A80:
	.incbin "baserom.dol", 0x421B80, 0x100
.global lbl_80425B80
lbl_80425B80:
	.incbin "baserom.dol", 0x421C80, 0x184
.global lbl_80425D04
lbl_80425D04:
	.incbin "baserom.dol", 0x421E04, 0x4C
.global lbl_80425D50
lbl_80425D50:
	.incbin "baserom.dol", 0x421E50, 0x110
.global lbl_80425E60
lbl_80425E60:
	.incbin "baserom.dol", 0x421F60, 0x244
.global lbl_804260A4
lbl_804260A4:
	.incbin "baserom.dol", 0x4221A4, 0x204
.global lbl_804262A8
lbl_804262A8:
	.incbin "baserom.dol", 0x4223A8, 0x118
.global lbl_804263C0
lbl_804263C0:
	.incbin "baserom.dol", 0x4224C0, 0x20
.global lbl_804263E0
lbl_804263E0:
	.incbin "baserom.dol", 0x4224E0, 0x10
.global lbl_804263F0
lbl_804263F0:
	.incbin "baserom.dol", 0x4224F0, 0xC
.global lbl_804263FC
lbl_804263FC:
	.incbin "baserom.dol", 0x4224FC, 0x10
.global lbl_8042640C
lbl_8042640C:
	.incbin "baserom.dol", 0x42250C, 0x18
.global lbl_80426424
lbl_80426424:
	.incbin "baserom.dol", 0x422524, 0x10
.global lbl_80426434
lbl_80426434:
	.incbin "baserom.dol", 0x422534, 0x20
.global lbl_80426454
lbl_80426454:
	.incbin "baserom.dol", 0x422554, 0x44
.global lbl_80426498
lbl_80426498:
	.incbin "baserom.dol", 0x422598, 0x110
.global lbl_804265A8
lbl_804265A8:
	.incbin "baserom.dol", 0x4226A8, 0x38
.global lbl_804265E0
lbl_804265E0:
	.incbin "baserom.dol", 0x4226E0, 0x1F0
.global lbl_804267D0
lbl_804267D0:
	.incbin "baserom.dol", 0x4228D0, 0x200
.global lbl_804269D0
lbl_804269D0:
	.incbin "baserom.dol", 0x422AD0, 0x10
.global lbl_804269E0
lbl_804269E0:
	.incbin "baserom.dol", 0x422AE0, 0x80
.global lbl_80426A60
lbl_80426A60:
	.incbin "baserom.dol", 0x422B60, 0x238
.global lbl_80426C98
lbl_80426C98:
	.incbin "baserom.dol", 0x422D98, 0x1B8
.global lbl_80426E50
lbl_80426E50:
	.incbin "baserom.dol", 0x422F50, 0x28
.global lbl_80426E78
lbl_80426E78:
	.incbin "baserom.dol", 0x422F78, 0x2DC
.global lbl_80427154
lbl_80427154:
	.incbin "baserom.dol", 0x423254, 0x44
.global lbl_80427198
lbl_80427198:
	.incbin "baserom.dol", 0x423298, 0x24
.global lbl_804271BC
lbl_804271BC:
	.incbin "baserom.dol", 0x4232BC, 0xC
.global lbl_804271C8
lbl_804271C8:
	.incbin "baserom.dol", 0x4232C8, 0x180
.global lbl_80427348
lbl_80427348:
	.incbin "baserom.dol", 0x423448, 0x990
.global lbl_80427CD8
lbl_80427CD8:
	.incbin "baserom.dol", 0x423DD8, 0x30
.global lbl_80427D08
lbl_80427D08:
	.incbin "baserom.dol", 0x423E08, 0x10
.global lbl_80427D18
lbl_80427D18:
	.incbin "baserom.dol", 0x423E18, 0xC
.global lbl_80427D24
lbl_80427D24:
	.incbin "baserom.dol", 0x423E24, 0x30
.global lbl_80427D54
lbl_80427D54:
	.incbin "baserom.dol", 0x423E54, 0x34
.global lbl_80427D88
lbl_80427D88:
	.incbin "baserom.dol", 0x423E88, 0x40
.global lbl_80427DC8
lbl_80427DC8:
	.incbin "baserom.dol", 0x423EC8, 0x30
.global lbl_80427DF8
lbl_80427DF8:
	.incbin "baserom.dol", 0x423EF8, 0x30
.global lbl_80427E28
lbl_80427E28:
	.incbin "baserom.dol", 0x423F28, 0xBA40
.global lbl_80433868
lbl_80433868:
	.incbin "baserom.dol", 0x42F968, 0x400
.global lbl_80433C68
lbl_80433C68:
	.incbin "baserom.dol", 0x42FD68, 0x14
.global lbl_80433C7C
lbl_80433C7C:
	.incbin "baserom.dol", 0x42FD7C, 0x14
.global lbl_80433C90
lbl_80433C90:
	.incbin "baserom.dol", 0x42FD90, 0xC
.global lbl_80433C9C
lbl_80433C9C:
	.incbin "baserom.dol", 0x42FD9C, 0x38
.global lbl_80433CD4
lbl_80433CD4:
	.incbin "baserom.dol", 0x42FDD4, 0x38
.global lbl_80433D0C
lbl_80433D0C:
	.incbin "baserom.dol", 0x42FE0C, 0x24
.global lbl_80433D30
lbl_80433D30:
	.incbin "baserom.dol", 0x42FE30, 0x2C
.global lbl_80433D5C
lbl_80433D5C:
	.incbin "baserom.dol", 0x42FE5C, 0x1C
.global lbl_80433D78
lbl_80433D78:
	.incbin "baserom.dol", 0x42FE78, 0x28
.global lbl_80433DA0
lbl_80433DA0:
	.incbin "baserom.dol", 0x42FEA0, 0x168
.global lbl_80433F08
lbl_80433F08:
	.incbin "baserom.dol", 0x430008, 0xB0
.global lbl_80433FB8
lbl_80433FB8:
	.incbin "baserom.dol", 0x4300B8, 0x18
.global lbl_80433FD0
lbl_80433FD0:
	.incbin "baserom.dol", 0x4300D0, 0x10
.global lbl_80433FE0
lbl_80433FE0:
	.incbin "baserom.dol", 0x4300E0, 0x98
.global lbl_80434078
lbl_80434078:
	.incbin "baserom.dol", 0x430178, 0x18
.global lbl_80434090
lbl_80434090:
	.incbin "baserom.dol", 0x430190, 0x48
.global lbl_804340D8
lbl_804340D8:
	.incbin "baserom.dol", 0x4301D8, 0x1A4
.global lbl_8043427C
lbl_8043427C:
	.incbin "baserom.dol", 0x43037C, 0x34
.global lbl_804342B0
lbl_804342B0:
	.incbin "baserom.dol", 0x4303B0, 0x10
.global lbl_804342C0
lbl_804342C0:
	.incbin "baserom.dol", 0x4303C0, 0x20
.global lbl_804342E0
lbl_804342E0:
	.incbin "baserom.dol", 0x4303E0, 0x7C
.global lbl_8043435C
lbl_8043435C:
	.incbin "baserom.dol", 0x43045C, 0x174
.global lbl_804344D0
lbl_804344D0:
	.incbin "baserom.dol", 0x4305D0, 0x20
.global lbl_804344F0
lbl_804344F0:
	.incbin "baserom.dol", 0x4305F0, 0x20
.global lbl_80434510
lbl_80434510:
	.incbin "baserom.dol", 0x430610, 0x590
.global lbl_80434AA0
lbl_80434AA0:
	.incbin "baserom.dol", 0x430BA0, 0x170
.global lbl_80434C10
lbl_80434C10:
	.incbin "baserom.dol", 0x430D10, 0xC0
.global lbl_80434CD0
lbl_80434CD0:
	.incbin "baserom.dol", 0x430DD0, 0x10
.global lbl_80434CE0
lbl_80434CE0:
	.incbin "baserom.dol", 0x430DE0, 0x18
.global lbl_80434CF8
lbl_80434CF8:
	.incbin "baserom.dol", 0x430DF8, 0x18
.global lbl_80434D10
lbl_80434D10:
	.incbin "baserom.dol", 0x430E10, 0xD0
.global lbl_80434DE0
lbl_80434DE0:
	.incbin "baserom.dol", 0x430EE0, 0x68
.global lbl_80434E48
lbl_80434E48:
	.incbin "baserom.dol", 0x430F48, 0x88
.global lbl_80434ED0
lbl_80434ED0:
	.incbin "baserom.dol", 0x430FD0, 0x44
.global lbl_80434F14
lbl_80434F14:
	.incbin "baserom.dol", 0x431014, 0x1C
.global lbl_80434F30
lbl_80434F30:
	.incbin "baserom.dol", 0x431030, 0x148
.global lbl_80435078
lbl_80435078:
	.incbin "baserom.dol", 0x431178, 0x258
.global lbl_804352D0
lbl_804352D0:
	.incbin "baserom.dol", 0x4313D0, 0x1A4
.global lbl_80435474
lbl_80435474:
	.incbin "baserom.dol", 0x431574, 0x1A4
.global lbl_80435618
lbl_80435618:
	.incbin "baserom.dol", 0x431718, 0x168
.global lbl_80435780
lbl_80435780:
	.incbin "baserom.dol", 0x431880, 0x20
.global lbl_804357A0
lbl_804357A0:
	.incbin "baserom.dol", 0x4318A0, 0xF4
.global lbl_80435894
lbl_80435894:
	.incbin "baserom.dol", 0x431994, 0x3C
.global lbl_804358D0
lbl_804358D0:
	.incbin "baserom.dol", 0x4319D0, 0x50
.global lbl_80435920
lbl_80435920:
	.incbin "baserom.dol", 0x431A20, 0x28
.global lbl_80435948
lbl_80435948:
	.incbin "baserom.dol", 0x431A48, 0x20
.global lbl_80435968
lbl_80435968:
	.incbin "baserom.dol", 0x431A68, 0xF0
.global lbl_80435A58
lbl_80435A58:
	.incbin "baserom.dol", 0x431B58, 0xF0
.global lbl_80435B48
lbl_80435B48:
	.incbin "baserom.dol", 0x431C48, 0x48
.global lbl_80435B90
lbl_80435B90:
	.incbin "baserom.dol", 0x431C90, 0x18
.global lbl_80435BA8
lbl_80435BA8:
	.incbin "baserom.dol", 0x431CA8, 0x90
.global lbl_80435C38
lbl_80435C38:
	.incbin "baserom.dol", 0x431D38, 0x40
.global lbl_80435C78
lbl_80435C78:
	.incbin "baserom.dol", 0x431D78, 0x5C
.global lbl_80435CD4
lbl_80435CD4:
	.incbin "baserom.dol", 0x431DD4, 0x15C
.global lbl_80435E30
lbl_80435E30:
	.incbin "baserom.dol", 0x431F30, 0x38
.global lbl_80435E68
lbl_80435E68:
	.incbin "baserom.dol", 0x431F68, 0x34
.global lbl_80435E9C
lbl_80435E9C:
	.incbin "baserom.dol", 0x431F9C, 0x30
.global lbl_80435ECC
lbl_80435ECC:
	.incbin "baserom.dol", 0x431FCC, 0x74
.global lbl_80435F40
lbl_80435F40:
	.incbin "baserom.dol", 0x432040, 0x34
.global lbl_80435F74
lbl_80435F74:
	.incbin "baserom.dol", 0x432074, 0x9C
.global lbl_80436010
lbl_80436010:
	.incbin "baserom.dol", 0x432110, 0xA8
.global lbl_804360B8
lbl_804360B8:
	.incbin "baserom.dol", 0x4321B8, 0x98
.global lbl_80436150
lbl_80436150:
	.incbin "baserom.dol", 0x432250, 0x38
.global lbl_80436188
lbl_80436188:
	.incbin "baserom.dol", 0x432288, 0x38
.global lbl_804361C0
lbl_804361C0:
	.incbin "baserom.dol", 0x4322C0, 0x1C
.global lbl_804361DC
lbl_804361DC:
	.incbin "baserom.dol", 0x4322DC, 0x4C4
.global lbl_804366A0
lbl_804366A0:
	.incbin "baserom.dol", 0x4327A0, 0xC88
.global lbl_80437328
lbl_80437328:
	.incbin "baserom.dol", 0x433428, 0x80
.global lbl_804373A8
lbl_804373A8:
	.incbin "baserom.dol", 0x4334A8, 0x18
.global lbl_804373C0
lbl_804373C0:
	.incbin "baserom.dol", 0x4334C0, 0xFC0
.global lbl_80438380
lbl_80438380:
	.incbin "baserom.dol", 0x434480, 0x2000
.global lbl_8043A380
lbl_8043A380:
	.incbin "baserom.dol", 0x436480, 0xC0
.global lbl_8043A440
lbl_8043A440:
	.incbin "baserom.dol", 0x436540, 0xE0
.global lbl_8043A520
lbl_8043A520:
	.incbin "baserom.dol", 0x436620, 0xC0
.global lbl_8043A5E0
lbl_8043A5E0:
	.incbin "baserom.dol", 0x4366E0, 0x100
.global lbl_8043A6E0
lbl_8043A6E0:
	.incbin "baserom.dol", 0x4367E0, 0x20
.global lbl_8043A700
lbl_8043A700:
	.incbin "baserom.dol", 0x436800, 0x70
.global lbl_8043A770
lbl_8043A770:
	.incbin "baserom.dol", 0x436870, 0x200
.global lbl_8043A970
lbl_8043A970:
	.incbin "baserom.dol", 0x436A70, 0x800
.global lbl_8043B170
lbl_8043B170:
	.incbin "baserom.dol", 0x437270, 0xB90
.global lbl_8043BD00
lbl_8043BD00:
	.incbin "baserom.dol", 0x437E00, 0x80
.global lbl_8043BD80
lbl_8043BD80:
	.incbin "baserom.dol", 0x437E80, 0x140
.global lbl_8043BEC0
lbl_8043BEC0:
	.incbin "baserom.dol", 0x437FC0, 0xC4
.global lbl_8043BF84
lbl_8043BF84:
	.incbin "baserom.dol", 0x438084, 0xC
.global lbl_8043BF90
lbl_8043BF90:
	.incbin "baserom.dol", 0x438090, 0x28
.global lbl_8043BFB8
lbl_8043BFB8:
	.incbin "baserom.dol", 0x4380B8, 0x4C
.global lbl_8043C004
lbl_8043C004:
	.incbin "baserom.dol", 0x438104, 0x1C
.global lbl_8043C020
lbl_8043C020:
	.incbin "baserom.dol", 0x438120, 0x1C
.global lbl_8043C03C
lbl_8043C03C:
	.incbin "baserom.dol", 0x43813C, 0x34
.global lbl_8043C070
lbl_8043C070:
	.incbin "baserom.dol", 0x438170, 0x10
.global lbl_8043C080
lbl_8043C080:
	.incbin "baserom.dol", 0x438180, 0x28
.global lbl_8043C0A8
lbl_8043C0A8:
	.incbin "baserom.dol", 0x4381A8, 0x18
.global lbl_8043C0C0
lbl_8043C0C0:
	.incbin "baserom.dol", 0x4381C0, 0xC
.global lbl_8043C0CC
lbl_8043C0CC:
	.incbin "baserom.dol", 0x4381CC, 0x38
.global lbl_8043C104
lbl_8043C104:
	.incbin "baserom.dol", 0x438204, 0xA4
.global lbl_8043C1A8
lbl_8043C1A8:
	.incbin "baserom.dol", 0x4382A8, 0x18
.global lbl_8043C1C0
lbl_8043C1C0:
	.incbin "baserom.dol", 0x4382C0, 0x2C
.global lbl_8043C1EC
lbl_8043C1EC:
	.incbin "baserom.dol", 0x4382EC, 0x1C
.global lbl_8043C208
lbl_8043C208:
	.incbin "baserom.dol", 0x438308, 0x1C
.global lbl_8043C224
lbl_8043C224:
	.incbin "baserom.dol", 0x438324, 0x1C
.global lbl_8043C240
lbl_8043C240:
	.incbin "baserom.dol", 0x438340, 0x1C
.global lbl_8043C25C
lbl_8043C25C:
	.incbin "baserom.dol", 0x43835C, 0x1C
.global lbl_8043C278
lbl_8043C278:
	.incbin "baserom.dol", 0x438378, 0x28
.global lbl_8043C2A0
lbl_8043C2A0:
	.incbin "baserom.dol", 0x4383A0, 0x80
.global lbl_8043C320
lbl_8043C320:
	.incbin "baserom.dol", 0x438420, 0x290
.global lbl_8043C5B0
lbl_8043C5B0:
	.incbin "baserom.dol", 0x4386B0, 0xC
.global lbl_8043C5BC
lbl_8043C5BC:
	.incbin "baserom.dol", 0x4386BC, 0x144
.global lbl_8043C700
lbl_8043C700:
	.incbin "baserom.dol", 0x438800, 0x1328
.global lbl_8043DA28
lbl_8043DA28:
	.incbin "baserom.dol", 0x439B28, 0x620
.global lbl_8043E048
lbl_8043E048:
	.incbin "baserom.dol", 0x43A148, 0xDC
.global lbl_8043E124
lbl_8043E124:
	.incbin "baserom.dol", 0x43A224, 0x10
.global lbl_8043E134
lbl_8043E134:
	.incbin "baserom.dol", 0x43A234, 0x10
.global lbl_8043E144
lbl_8043E144:
	.incbin "baserom.dol", 0x43A244, 0x24
.global lbl_8043E168
lbl_8043E168:
	.incbin "baserom.dol", 0x43A268, 0x28
.global lbl_8043E190
lbl_8043E190:
	.incbin "baserom.dol", 0x43A290, 0x28
.global lbl_8043E1B8
lbl_8043E1B8:
	.incbin "baserom.dol", 0x43A2B8, 0x20
.global lbl_8043E1D8
lbl_8043E1D8:
	.incbin "baserom.dol", 0x43A2D8, 0x10C
.global lbl_8043E2E4
lbl_8043E2E4:
	.incbin "baserom.dol", 0x43A3E4, 0x100
.global lbl_8043E3E4
lbl_8043E3E4:
	.incbin "baserom.dol", 0x43A4E4, 0xC
.global lbl_8043E3F0
lbl_8043E3F0:
	.incbin "baserom.dol", 0x43A4F0, 0x18
.global lbl_8043E408
lbl_8043E408:
	.incbin "baserom.dol", 0x43A508, 0x14
.global lbl_8043E41C
lbl_8043E41C:
	.incbin "baserom.dol", 0x43A51C, 0x10
.global lbl_8043E42C
lbl_8043E42C:
	.incbin "baserom.dol", 0x43A52C, 0x50
.global lbl_8043E47C
lbl_8043E47C:
	.incbin "baserom.dol", 0x43A57C, 0x30
.global lbl_8043E4AC
lbl_8043E4AC:
	.incbin "baserom.dol", 0x43A5AC, 0x34
.global lbl_8043E4E0
lbl_8043E4E0:
	.incbin "baserom.dol", 0x43A5E0, 0x18
.global lbl_8043E4F8
lbl_8043E4F8:
	.incbin "baserom.dol", 0x43A5F8, 0x1C
.global lbl_8043E514
lbl_8043E514:
	.incbin "baserom.dol", 0x43A614, 0x1C
.global lbl_8043E530
lbl_8043E530:
	.incbin "baserom.dol", 0x43A630, 0x1C
.global lbl_8043E54C
lbl_8043E54C:
	.incbin "baserom.dol", 0x43A64C, 0xBC
.global lbl_8043E608
lbl_8043E608:
	.incbin "baserom.dol", 0x43A708, 0x5C
.global lbl_8043E664
lbl_8043E664:
	.incbin "baserom.dol", 0x43A764, 0x138
.global lbl_8043E79C
lbl_8043E79C:
	.incbin "baserom.dol", 0x43A89C, 0x18
.global lbl_8043E7B4
lbl_8043E7B4:
	.incbin "baserom.dol", 0x43A8B4, 0x27C
.global lbl_8043EA30
lbl_8043EA30:
	.incbin "baserom.dol", 0x43AB30, 0x1A0
.global lbl_8043EBD0
lbl_8043EBD0:
	.incbin "baserom.dol", 0x43ACD0, 0x1C
.global lbl_8043EBEC
lbl_8043EBEC:
	.incbin "baserom.dol", 0x43ACEC, 0x2C4
.global lbl_8043EEB0
lbl_8043EEB0:
	.incbin "baserom.dol", 0x43AFB0, 0x200
.global lbl_8043F0B0
lbl_8043F0B0:
	.incbin "baserom.dol", 0x43B1B0, 0x40
.global lbl_8043F0F0
lbl_8043F0F0:
	.incbin "baserom.dol", 0x43B1F0, 0x18
.global lbl_8043F108
lbl_8043F108:
	.incbin "baserom.dol", 0x43B208, 0x14
.global lbl_8043F11C
lbl_8043F11C:
	.incbin "baserom.dol", 0x43B21C, 0x14
.global lbl_8043F130
lbl_8043F130:
	.incbin "baserom.dol", 0x43B230, 0x18
.global lbl_8043F148
lbl_8043F148:
	.incbin "baserom.dol", 0x43B248, 0x98
.global lbl_8043F1E0
lbl_8043F1E0:
	.incbin "baserom.dol", 0x43B2E0, 0x1C
.global lbl_8043F1FC
lbl_8043F1FC:
	.incbin "baserom.dol", 0x43B2FC, 0x20
.global lbl_8043F21C
lbl_8043F21C:
	.incbin "baserom.dol", 0x43B31C, 0x44
.global lbl_8043F260
lbl_8043F260:
	.incbin "baserom.dol", 0x43B360, 0x54
.global lbl_8043F2B4
lbl_8043F2B4:
	.incbin "baserom.dol", 0x43B3B4, 0x34
.global lbl_8043F2E8
lbl_8043F2E8:
	.incbin "baserom.dol", 0x43B3E8, 0x5D0
.global lbl_8043F8B8
lbl_8043F8B8:
	.incbin "baserom.dol", 0x43B9B8, 0x60
.global lbl_8043F918
lbl_8043F918:
	.incbin "baserom.dol", 0x43BA18, 0x718
.global lbl_80440030
lbl_80440030:
	.incbin "baserom.dol", 0x43C130, 0x14
.global lbl_80440044
lbl_80440044:
	.incbin "baserom.dol", 0x43C144, 0x24
.global lbl_80440068
lbl_80440068:
	.incbin "baserom.dol", 0x43C168, 0x20
.global lbl_80440088
lbl_80440088:
	.incbin "baserom.dol", 0x43C188, 0x20
.global lbl_804400A8
lbl_804400A8:
	.incbin "baserom.dol", 0x43C1A8, 0x40
.global lbl_804400E8
lbl_804400E8:
	.incbin "baserom.dol", 0x43C1E8, 0x14
.global lbl_804400FC
lbl_804400FC:
	.incbin "baserom.dol", 0x43C1FC, 0x30
.global lbl_8044012C
lbl_8044012C:
	.incbin "baserom.dol", 0x43C22C, 0x3C
.global lbl_80440168
lbl_80440168:
	.incbin "baserom.dol", 0x43C268, 0x40
.global lbl_804401A8
lbl_804401A8:
	.incbin "baserom.dol", 0x43C2A8, 0x2C
.global lbl_804401D4
lbl_804401D4:
	.incbin "baserom.dol", 0x43C2D4, 0x24
.global lbl_804401F8
lbl_804401F8:
	.incbin "baserom.dol", 0x43C2F8, 0x58
.global lbl_80440250
lbl_80440250:
	.incbin "baserom.dol", 0x43C350, 0x30
.global lbl_80440280
lbl_80440280:
	.incbin "baserom.dol", 0x43C380, 0x50
.global lbl_804402D0
lbl_804402D0:
	.incbin "baserom.dol", 0x43C3D0, 0x20
.global lbl_804402F0
lbl_804402F0:
	.incbin "baserom.dol", 0x43C3F0, 0x4C
.global lbl_8044033C
lbl_8044033C:
	.incbin "baserom.dol", 0x43C43C, 0x114
.global lbl_80440450
lbl_80440450:
	.incbin "baserom.dol", 0x43C550, 0x28
.global lbl_80440478
lbl_80440478:
	.incbin "baserom.dol", 0x43C578, 0x84
.global lbl_804404FC
lbl_804404FC:
	.incbin "baserom.dol", 0x43C5FC, 0x28
.global lbl_80440524
lbl_80440524:
	.incbin "baserom.dol", 0x43C624, 0x2C
.global lbl_80440550
lbl_80440550:
	.incbin "baserom.dol", 0x43C650, 0x10
.global lbl_80440560
lbl_80440560:
	.incbin "baserom.dol", 0x43C660, 0x1C
.global lbl_8044057C
lbl_8044057C:
	.incbin "baserom.dol", 0x43C67C, 0x12C
.global lbl_804406A8
lbl_804406A8:
	.incbin "baserom.dol", 0x43C7A8, 0x24
.global lbl_804406CC
lbl_804406CC:
	.incbin "baserom.dol", 0x43C7CC, 0x24
.global lbl_804406F0
lbl_804406F0:
	.incbin "baserom.dol", 0x43C7F0, 0x30
.global lbl_80440720
lbl_80440720:
	.incbin "baserom.dol", 0x43C820, 0xDC
.global lbl_804407FC
lbl_804407FC:
	.incbin "baserom.dol", 0x43C8FC, 0x1C4
.global lbl_804409C0
lbl_804409C0:
	.incbin "baserom.dol", 0x43CAC0, 0x40
.global lbl_80440A00
lbl_80440A00:
	.incbin "baserom.dol", 0x43CB00, 0x84
.global lbl_80440A84
lbl_80440A84:
	.incbin "baserom.dol", 0x43CB84, 0x23C
.global lbl_80440CC0
lbl_80440CC0:
	.incbin "baserom.dol", 0x43CDC0, 0x40
.global lbl_80440D00
lbl_80440D00:
	.incbin "baserom.dol", 0x43CE00, 0x20
.global lbl_80440D20
lbl_80440D20:
	.incbin "baserom.dol", 0x43CE20, 0x180
.global lbl_80440EA0
lbl_80440EA0:
	.incbin "baserom.dol", 0x43CFA0, 0x3C
.global lbl_80440EDC
lbl_80440EDC:
	.incbin "baserom.dol", 0x43CFDC, 0x68
.global lbl_80440F44
lbl_80440F44:
	.incbin "baserom.dol", 0x43D044, 0x28
.global lbl_80440F6C
lbl_80440F6C:
	.incbin "baserom.dol", 0x43D06C, 0x34
.global lbl_80440FA0
lbl_80440FA0:
	.incbin "baserom.dol", 0x43D0A0, 0x3C
.global lbl_80440FDC
lbl_80440FDC:
	.incbin "baserom.dol", 0x43D0DC, 0x30
.global lbl_8044100C
lbl_8044100C:
	.incbin "baserom.dol", 0x43D10C, 0xD4
.global lbl_804410E0
lbl_804410E0:
	.incbin "baserom.dol", 0x43D1E0, 0x30
.global lbl_80441110
lbl_80441110:
	.incbin "baserom.dol", 0x43D210, 0x6C
.global lbl_8044117C
lbl_8044117C:
	.incbin "baserom.dol", 0x43D27C, 0x40
.global lbl_804411BC
lbl_804411BC:
	.incbin "baserom.dol", 0x43D2BC, 0x44
.global lbl_80441200
lbl_80441200:
	.incbin "baserom.dol", 0x43D300, 0x40
.global lbl_80441240
lbl_80441240:
	.incbin "baserom.dol", 0x43D340, 0x70
.global lbl_804412B0
lbl_804412B0:
	.incbin "baserom.dol", 0x43D3B0, 0x2C
.global lbl_804412DC
lbl_804412DC:
	.incbin "baserom.dol", 0x43D3DC, 0x2C
.global lbl_80441308
lbl_80441308:
	.incbin "baserom.dol", 0x43D408, 0x38
.global lbl_80441340
lbl_80441340:
	.incbin "baserom.dol", 0x43D440, 0x5C
.global lbl_8044139C
lbl_8044139C:
	.incbin "baserom.dol", 0x43D49C, 0x54
.global lbl_804413F0
lbl_804413F0:
	.incbin "baserom.dol", 0x43D4F0, 0x1C
.global lbl_8044140C
lbl_8044140C:
	.incbin "baserom.dol", 0x43D50C, 0x38
.global lbl_80441444
lbl_80441444:
	.incbin "baserom.dol", 0x43D544, 0x40
.global lbl_80441484
lbl_80441484:
	.incbin "baserom.dol", 0x43D584, 0x20
.global lbl_804414A4
lbl_804414A4:
	.incbin "baserom.dol", 0x43D5A4, 0x34
.global lbl_804414D8
lbl_804414D8:
	.incbin "baserom.dol", 0x43D5D8, 0x3C
.global lbl_80441514
lbl_80441514:
	.incbin "baserom.dol", 0x43D614, 0x3C
.global lbl_80441550
lbl_80441550:
	.incbin "baserom.dol", 0x43D650, 0x40
.global lbl_80441590
lbl_80441590:
	.incbin "baserom.dol", 0x43D690, 0x12C
.global lbl_804416BC
lbl_804416BC:
	.incbin "baserom.dol", 0x43D7BC, 0x198
.global lbl_80441854
lbl_80441854:
	.incbin "baserom.dol", 0x43D954, 0x3C
.global lbl_80441890
lbl_80441890:
	.incbin "baserom.dol", 0x43D990, 0x98
.global lbl_80441928
lbl_80441928:
	.incbin "baserom.dol", 0x43DA28, 0x108
.global lbl_80441A30
lbl_80441A30:
	.incbin "baserom.dol", 0x43DB30, 0x60
.global lbl_80441A90
lbl_80441A90:
	.incbin "baserom.dol", 0x43DB90, 0xFC
.global lbl_80441B8C
lbl_80441B8C:
	.incbin "baserom.dol", 0x43DC8C, 0x25C
.global lbl_80441DE8
lbl_80441DE8:
	.incbin "baserom.dol", 0x43DEE8, 0x40
.global lbl_80441E28
lbl_80441E28:
	.incbin "baserom.dol", 0x43DF28, 0x3C
.global lbl_80441E64
lbl_80441E64:
	.incbin "baserom.dol", 0x43DF64, 0x38
.global lbl_80441E9C
lbl_80441E9C:
	.incbin "baserom.dol", 0x43DF9C, 0x34
.global lbl_80441ED0
lbl_80441ED0:
	.incbin "baserom.dol", 0x43DFD0, 0x30
.global lbl_80441F00
lbl_80441F00:
	.incbin "baserom.dol", 0x43E000, 0x34
.global lbl_80441F34
lbl_80441F34:
	.incbin "baserom.dol", 0x43E034, 0x44
.global lbl_80441F78
lbl_80441F78:
	.incbin "baserom.dol", 0x43E078, 0x44
.global lbl_80441FBC
lbl_80441FBC:
	.incbin "baserom.dol", 0x43E0BC, 0x2C
.global lbl_80441FE8
lbl_80441FE8:
	.incbin "baserom.dol", 0x43E0E8, 0x40
.global lbl_80442028
lbl_80442028:
	.incbin "baserom.dol", 0x43E128, 0x25C
.global lbl_80442284
lbl_80442284:
	.incbin "baserom.dol", 0x43E384, 0x1C
.global lbl_804422A0
lbl_804422A0:
	.incbin "baserom.dol", 0x43E3A0, 0x18
.global lbl_804422B8
lbl_804422B8:
	.incbin "baserom.dol", 0x43E3B8, 0x28
.global lbl_804422E0
lbl_804422E0:
	.incbin "baserom.dol", 0x43E3E0, 0x20
.global lbl_80442300
lbl_80442300:
	.incbin "baserom.dol", 0x43E400, 0x30
.global lbl_80442330
lbl_80442330:
	.incbin "baserom.dol", 0x43E430, 0x44
.global lbl_80442374
lbl_80442374:
	.incbin "baserom.dol", 0x43E474, 0x2C
.global lbl_804423A0
lbl_804423A0:
	.incbin "baserom.dol", 0x43E4A0, 0x28
.global lbl_804423C8
lbl_804423C8:
	.incbin "baserom.dol", 0x43E4C8, 0x38
.global lbl_80442400
lbl_80442400:
	.incbin "baserom.dol", 0x43E500, 0xCC
.global lbl_804424CC
lbl_804424CC:
	.incbin "baserom.dol", 0x43E5CC, 0xAC
.global lbl_80442578
lbl_80442578:
	.incbin "baserom.dol", 0x43E678, 0x44
.global lbl_804425BC
lbl_804425BC:
	.incbin "baserom.dol", 0x43E6BC, 0x3C
.global lbl_804425F8
lbl_804425F8:
	.incbin "baserom.dol", 0x43E6F8, 0x24
.global lbl_8044261C
lbl_8044261C:
	.incbin "baserom.dol", 0x43E71C, 0x24
.global lbl_80442640
lbl_80442640:
	.incbin "baserom.dol", 0x43E740, 0x44
.global lbl_80442684
lbl_80442684:
	.incbin "baserom.dol", 0x43E784, 0x24
.global lbl_804426A8
lbl_804426A8:
	.incbin "baserom.dol", 0x43E7A8, 0x24
.global lbl_804426CC
lbl_804426CC:
	.incbin "baserom.dol", 0x43E7CC, 0x24
.global lbl_804426F0
lbl_804426F0:
	.incbin "baserom.dol", 0x43E7F0, 0x18
.global lbl_80442708
lbl_80442708:
	.incbin "baserom.dol", 0x43E808, 0x18
.global lbl_80442720
lbl_80442720:
	.incbin "baserom.dol", 0x43E820, 0x20
.global lbl_80442740
lbl_80442740:
	.incbin "baserom.dol", 0x43E840, 0x118
.global lbl_80442858
lbl_80442858:
	.incbin "baserom.dol", 0x43E958, 0x20
.global lbl_80442878
lbl_80442878:
	.incbin "baserom.dol", 0x43E978, 0x24
.global lbl_8044289C
lbl_8044289C:
	.incbin "baserom.dol", 0x43E99C, 0x120
.global lbl_804429BC
lbl_804429BC:
	.incbin "baserom.dol", 0x43EABC, 0xB8
.global lbl_80442A74
lbl_80442A74:
	.incbin "baserom.dol", 0x43EB74, 0x2C
.global lbl_80442AA0
lbl_80442AA0:
	.incbin "baserom.dol", 0x43EBA0, 0x58
.global lbl_80442AF8
lbl_80442AF8:
	.incbin "baserom.dol", 0x43EBF8, 0x2C
.global lbl_80442B24
lbl_80442B24:
	.incbin "baserom.dol", 0x43EC24, 0x24
.global lbl_80442B48
lbl_80442B48:
	.incbin "baserom.dol", 0x43EC48, 0x30
.global lbl_80442B78
lbl_80442B78:
	.incbin "baserom.dol", 0x43EC78, 0x28
.global lbl_80442BA0
lbl_80442BA0:
	.incbin "baserom.dol", 0x43ECA0, 0x38
.global lbl_80442BD8
lbl_80442BD8:
	.incbin "baserom.dol", 0x43ECD8, 0x38
.global lbl_80442C10
lbl_80442C10:
	.incbin "baserom.dol", 0x43ED10, 0x30
.global lbl_80442C40
lbl_80442C40:
	.incbin "baserom.dol", 0x43ED40, 0xA8
.global lbl_80442CE8
lbl_80442CE8:
	.incbin "baserom.dol", 0x43EDE8, 0x34
.global lbl_80442D1C
lbl_80442D1C:
	.incbin "baserom.dol", 0x43EE1C, 0x27C
.global lbl_80442F98
lbl_80442F98:
	.incbin "baserom.dol", 0x43F098, 0x20
.global lbl_80442FB8
lbl_80442FB8:
	.incbin "baserom.dol", 0x43F0B8, 0x2C
.global lbl_80442FE4
lbl_80442FE4:
	.incbin "baserom.dol", 0x43F0E4, 0x2C
.global lbl_80443010
lbl_80443010:
	.incbin "baserom.dol", 0x43F110, 0x2C
.global lbl_8044303C
lbl_8044303C:
	.incbin "baserom.dol", 0x43F13C, 0x24
.global lbl_80443060
lbl_80443060:
	.incbin "baserom.dol", 0x43F160, 0x2C
.global lbl_8044308C
lbl_8044308C:
	.incbin "baserom.dol", 0x43F18C, 0x24
.global lbl_804430B0
lbl_804430B0:
	.incbin "baserom.dol", 0x43F1B0, 0x160
.global lbl_80443210
lbl_80443210:
	.incbin "baserom.dol", 0x43F310, 0x1C0
.global lbl_804433D0
lbl_804433D0:
	.incbin "baserom.dol", 0x43F4D0, 0x40
.global lbl_80443410
lbl_80443410:
	.incbin "baserom.dol", 0x43F510, 0x80
.global lbl_80443490
lbl_80443490:
	.incbin "baserom.dol", 0x43F590, 0xA4
.global lbl_80443534
lbl_80443534:
	.incbin "baserom.dol", 0x43F634, 0x6C
.global lbl_804435A0
lbl_804435A0:
	.incbin "baserom.dol", 0x43F6A0, 0x28
.global lbl_804435C8
lbl_804435C8:
	.incbin "baserom.dol", 0x43F6C8, 0x30
.global lbl_804435F8
lbl_804435F8:
	.incbin "baserom.dol", 0x43F6F8, 0x168
.global lbl_80443760
lbl_80443760:
	.incbin "baserom.dol", 0x43F860, 0x70
.global lbl_804437D0
lbl_804437D0:
	.incbin "baserom.dol", 0x43F8D0, 0x24
.global lbl_804437F4
lbl_804437F4:
	.incbin "baserom.dol", 0x43F8F4, 0x194
.global lbl_80443988
lbl_80443988:
	.incbin "baserom.dol", 0x43FA88, 0x8C
.global lbl_80443A14
lbl_80443A14:
	.incbin "baserom.dol", 0x43FB14, 0xC4
.global lbl_80443AD8
lbl_80443AD8:
	.incbin "baserom.dol", 0x43FBD8, 0x70
.global lbl_80443B48
lbl_80443B48:
	.incbin "baserom.dol", 0x43FC48, 0x28
.global lbl_80443B70
lbl_80443B70:
	.incbin "baserom.dol", 0x43FC70, 0x98
.global lbl_80443C08
lbl_80443C08:
	.incbin "baserom.dol", 0x43FD08, 0x20
.global lbl_80443C28
lbl_80443C28:
	.incbin "baserom.dol", 0x43FD28, 0x28
.global lbl_80443C50
lbl_80443C50:
	.incbin "baserom.dol", 0x43FD50, 0x28
.global lbl_80443C78
lbl_80443C78:
	.incbin "baserom.dol", 0x43FD78, 0x34
.global lbl_80443CAC
lbl_80443CAC:
	.incbin "baserom.dol", 0x43FDAC, 0x28
.global lbl_80443CD4
lbl_80443CD4:
	.incbin "baserom.dol", 0x43FDD4, 0x12C
.global lbl_80443E00
lbl_80443E00:
	.incbin "baserom.dol", 0x43FF00, 0x20
.global lbl_80443E20
lbl_80443E20:
	.incbin "baserom.dol", 0x43FF20, 0x20
.global lbl_80443E40
lbl_80443E40:
	.incbin "baserom.dol", 0x43FF40, 0x38
.global lbl_80443E78
lbl_80443E78:
	.incbin "baserom.dol", 0x43FF78, 0x2D4
.global lbl_8044414C
lbl_8044414C:
	.incbin "baserom.dol", 0x44024C, 0x14
.global lbl_80444160
lbl_80444160:
	.incbin "baserom.dol", 0x440260, 0x18
.global lbl_80444178
lbl_80444178:
	.incbin "baserom.dol", 0x440278, 0x1C
.global lbl_80444194
lbl_80444194:
	.incbin "baserom.dol", 0x440294, 0x20
.global lbl_804441B4
lbl_804441B4:
	.incbin "baserom.dol", 0x4402B4, 0x20
.global lbl_804441D4
lbl_804441D4:
	.incbin "baserom.dol", 0x4402D4, 0x64
.global lbl_80444238
lbl_80444238:
	.incbin "baserom.dol", 0x440338, 0x28
.global lbl_80444260
lbl_80444260:
	.incbin "baserom.dol", 0x440360, 0x38
.global lbl_80444298
lbl_80444298:
	.incbin "baserom.dol", 0x440398, 0x38
.global lbl_804442D0
lbl_804442D0:
	.incbin "baserom.dol", 0x4403D0, 0x10
.global lbl_804442E0
lbl_804442E0:
	.incbin "baserom.dol", 0x4403E0, 0x20
.global lbl_80444300
lbl_80444300:
	.incbin "baserom.dol", 0x440400, 0x20
.global lbl_80444320
lbl_80444320:
	.incbin "baserom.dol", 0x440420, 0x2C
.global lbl_8044434C
lbl_8044434C:
	.incbin "baserom.dol", 0x44044C, 0x24
.global lbl_80444370
lbl_80444370:
	.incbin "baserom.dol", 0x440470, 0x30
.global lbl_804443A0
lbl_804443A0:
	.incbin "baserom.dol", 0x4404A0, 0x60
.global lbl_80444400
lbl_80444400:
	.incbin "baserom.dol", 0x440500, 0x10
.global lbl_80444410
lbl_80444410:
	.incbin "baserom.dol", 0x440510, 0x40
.global lbl_80444450
lbl_80444450:
	.incbin "baserom.dol", 0x440550, 0x10
.global lbl_80444460
lbl_80444460:
	.incbin "baserom.dol", 0x440560, 0x14
.global lbl_80444474
lbl_80444474:
	.incbin "baserom.dol", 0x440574, 0x14
.global lbl_80444488
lbl_80444488:
	.incbin "baserom.dol", 0x440588, 0x10
.global lbl_80444498
lbl_80444498:
	.incbin "baserom.dol", 0x440598, 0x18
.global lbl_804444B0
lbl_804444B0:
	.incbin "baserom.dol", 0x4405B0, 0x24
.global lbl_804444D4
lbl_804444D4:
	.incbin "baserom.dol", 0x4405D4, 0x34
.global lbl_80444508
lbl_80444508:
	.incbin "baserom.dol", 0x440608, 0x2C
.global lbl_80444534
lbl_80444534:
	.incbin "baserom.dol", 0x440634, 0x2C
.global lbl_80444560
lbl_80444560:
	.incbin "baserom.dol", 0x440660, 0x30
.global lbl_80444590
lbl_80444590:
	.incbin "baserom.dol", 0x440690, 0x100
.global lbl_80444690
lbl_80444690:
	.incbin "baserom.dol", 0x440790, 0x18
.global lbl_804446A8
lbl_804446A8:
	.incbin "baserom.dol", 0x4407A8, 0x30
.global lbl_804446D8
lbl_804446D8:
	.incbin "baserom.dol", 0x4407D8, 0x140
.global lbl_80444818
lbl_80444818:
	.incbin "baserom.dol", 0x440918, 0x70
.global lbl_80444888
lbl_80444888:
	.incbin "baserom.dol", 0x440988, 0x28
.global lbl_804448B0
lbl_804448B0:
	.incbin "baserom.dol", 0x4409B0, 0x80
.global lbl_80444930
lbl_80444930:
	.incbin "baserom.dol", 0x440A30, 0x48
.global lbl_80444978
lbl_80444978:
	.incbin "baserom.dol", 0x440A78, 0x3C
.global lbl_804449B4
lbl_804449B4:
	.incbin "baserom.dol", 0x440AB4, 0x24
.global lbl_804449D8
lbl_804449D8:
	.incbin "baserom.dol", 0x440AD8, 0x24
.global lbl_804449FC
lbl_804449FC:
	.incbin "baserom.dol", 0x440AFC, 0x30
.global lbl_80444A2C
lbl_80444A2C:
	.incbin "baserom.dol", 0x440B2C, 0x28
.global lbl_80444A54
lbl_80444A54:
	.incbin "baserom.dol", 0x440B54, 0x3C
.global lbl_80444A90
lbl_80444A90:
	.incbin "baserom.dol", 0x440B90, 0x24
.global lbl_80444AB4
lbl_80444AB4:
	.incbin "baserom.dol", 0x440BB4, 0x1C
.global lbl_80444AD0
lbl_80444AD0:
	.incbin "baserom.dol", 0x440BD0, 0x14
.global lbl_80444AE4
lbl_80444AE4:
	.incbin "baserom.dol", 0x440BE4, 0x20
.global lbl_80444B04
lbl_80444B04:
	.incbin "baserom.dol", 0x440C04, 0x24
.global lbl_80444B28
lbl_80444B28:
	.incbin "baserom.dol", 0x440C28, 0x3C
.global lbl_80444B64
lbl_80444B64:
	.incbin "baserom.dol", 0x440C64, 0x2C
.global lbl_80444B90
lbl_80444B90:
	.incbin "baserom.dol", 0x440C90, 0x98
.global lbl_80444C28
lbl_80444C28:
	.incbin "baserom.dol", 0x440D28, 0xA0
.global lbl_80444CC8
lbl_80444CC8:
	.incbin "baserom.dol", 0x440DC8, 0x40
.global lbl_80444D08
lbl_80444D08:
	.incbin "baserom.dol", 0x440E08, 0x24
.global lbl_80444D2C
lbl_80444D2C:
	.incbin "baserom.dol", 0x440E2C, 0x3C
.global lbl_80444D68
lbl_80444D68:
	.incbin "baserom.dol", 0x440E68, 0x2C
.global lbl_80444D94
lbl_80444D94:
	.incbin "baserom.dol", 0x440E94, 0x3C
.global lbl_80444DD0
lbl_80444DD0:
	.incbin "baserom.dol", 0x440ED0, 0x28
.global lbl_80444DF8
lbl_80444DF8:
	.incbin "baserom.dol", 0x440EF8, 0xD8
.global lbl_80444ED0
lbl_80444ED0:
	.incbin "baserom.dol", 0x440FD0, 0x10
.global lbl_80444EE0
lbl_80444EE0:
	.incbin "baserom.dol", 0x440FE0, 0x20
.global lbl_80444F00
lbl_80444F00:
	.incbin "baserom.dol", 0x441000, 0x24
.global lbl_80444F24
lbl_80444F24:
	.incbin "baserom.dol", 0x441024, 0x24
.global lbl_80444F48
lbl_80444F48:
	.incbin "baserom.dol", 0x441048, 0x18
.global lbl_80444F60
lbl_80444F60:
	.incbin "baserom.dol", 0x441060, 0x50
.global lbl_80444FB0
lbl_80444FB0:
	.incbin "baserom.dol", 0x4410B0, 0x3C
.global lbl_80444FEC
lbl_80444FEC:
	.incbin "baserom.dol", 0x4410EC, 0x5C
.global lbl_80445048
lbl_80445048:
	.incbin "baserom.dol", 0x441148, 0x28
.global lbl_80445070
lbl_80445070:
	.incbin "baserom.dol", 0x441170, 0x28
.global lbl_80445098
lbl_80445098:
	.incbin "baserom.dol", 0x441198, 0xE8
.global lbl_80445180
lbl_80445180:
	.incbin "baserom.dol", 0x441280, 0x28
.global lbl_804451A8
lbl_804451A8:
	.incbin "baserom.dol", 0x4412A8, 0x78
.global lbl_80445220
lbl_80445220:
	.incbin "baserom.dol", 0x441320, 0xC0
.global lbl_804452E0
lbl_804452E0:
	.incbin "baserom.dol", 0x4413E0, 0x2C
.global lbl_8044530C
lbl_8044530C:
	.incbin "baserom.dol", 0x44140C, 0x58
.global lbl_80445364
lbl_80445364:
	.incbin "baserom.dol", 0x441464, 0x1C
.global lbl_80445380
lbl_80445380:
	.incbin "baserom.dol", 0x441480, 0x2C
.global lbl_804453AC
lbl_804453AC:
	.incbin "baserom.dol", 0x4414AC, 0x24
.global lbl_804453D0
lbl_804453D0:
	.incbin "baserom.dol", 0x4414D0, 0x38
.global lbl_80445408
lbl_80445408:
	.incbin "baserom.dol", 0x441508, 0x78
.global lbl_80445480
lbl_80445480:
	.incbin "baserom.dol", 0x441580, 0x30
.global lbl_804454B0
lbl_804454B0:
	.incbin "baserom.dol", 0x4415B0, 0x28
.global lbl_804454D8
lbl_804454D8:
	.incbin "baserom.dol", 0x4415D8, 0x30
.global lbl_80445508
lbl_80445508:
	.incbin "baserom.dol", 0x441608, 0x24
.global lbl_8044552C
lbl_8044552C:
	.incbin "baserom.dol", 0x44162C, 0x1C
.global lbl_80445548
lbl_80445548:
	.incbin "baserom.dol", 0x441648, 0x44
.global lbl_8044558C
lbl_8044558C:
	.incbin "baserom.dol", 0x44168C, 0x38
.global lbl_804455C4
lbl_804455C4:
	.incbin "baserom.dol", 0x4416C4, 0x3C
.global lbl_80445600
lbl_80445600:
	.incbin "baserom.dol", 0x441700, 0x20
.global lbl_80445620
lbl_80445620:
	.incbin "baserom.dol", 0x441720, 0x20
.global lbl_80445640
lbl_80445640:
	.incbin "baserom.dol", 0x441740, 0xC
.global lbl_8044564C
lbl_8044564C:
	.incbin "baserom.dol", 0x44174C, 0x14
.global lbl_80445660
lbl_80445660:
	.incbin "baserom.dol", 0x441760, 0x60
.global lbl_804456C0
lbl_804456C0:
	.incbin "baserom.dol", 0x4417C0, 0x50
.global lbl_80445710
lbl_80445710:
	.incbin "baserom.dol", 0x441810, 0xC
.global lbl_8044571C
lbl_8044571C:
	.incbin "baserom.dol", 0x44181C, 0xC
.global lbl_80445728
lbl_80445728:
	.incbin "baserom.dol", 0x441828, 0xD8
.global lbl_80445800
lbl_80445800:
	.incbin "baserom.dol", 0x441900, 0x2C
.global lbl_8044582C
lbl_8044582C:
	.incbin "baserom.dol", 0x44192C, 0x18
.global lbl_80445844
lbl_80445844:
	.incbin "baserom.dol", 0x441944, 0xB4
.global lbl_804458F8
lbl_804458F8:
	.incbin "baserom.dol", 0x4419F8, 0x118
.global lbl_80445A10
lbl_80445A10:
	.incbin "baserom.dol", 0x441B10, 0x28
.global lbl_80445A38
lbl_80445A38:
	.incbin "baserom.dol", 0x441B38, 0x48
.global lbl_80445A80
lbl_80445A80:
	.incbin "baserom.dol", 0x441B80, 0x70
.global lbl_80445AF0
lbl_80445AF0:
	.incbin "baserom.dol", 0x441BF0, 0x18
.global lbl_80445B08
lbl_80445B08:
	.incbin "baserom.dol", 0x441C08, 0x18
.global lbl_80445B20
lbl_80445B20:
	.incbin "baserom.dol", 0x441C20, 0x18
.global lbl_80445B38
lbl_80445B38:
	.incbin "baserom.dol", 0x441C38, 0x14
.global lbl_80445B4C
lbl_80445B4C:
	.incbin "baserom.dol", 0x441C4C, 0x1C
.global lbl_80445B68
lbl_80445B68:
	.incbin "baserom.dol", 0x441C68, 0xC
.global lbl_80445B74
lbl_80445B74:
	.incbin "baserom.dol", 0x441C74, 0x3C
.global lbl_80445BB0
lbl_80445BB0:
	.incbin "baserom.dol", 0x441CB0, 0x10
.global lbl_80445BC0
lbl_80445BC0:
	.incbin "baserom.dol", 0x441CC0, 0x18
.global lbl_80445BD8
lbl_80445BD8:
	.incbin "baserom.dol", 0x441CD8, 0xD0
.global lbl_80445CA8
lbl_80445CA8:
	.incbin "baserom.dol", 0x441DA8, 0x88
.global lbl_80445D30
lbl_80445D30:
	.incbin "baserom.dol", 0x441E30, 0x20
.global lbl_80445D50
lbl_80445D50:
	.incbin "baserom.dol", 0x441E50, 0x34
.global lbl_80445D84
lbl_80445D84:
	.incbin "baserom.dol", 0x441E84, 0x1C
.global lbl_80445DA0
lbl_80445DA0:
	.incbin "baserom.dol", 0x441EA0, 0xA8
.global lbl_80445E48
lbl_80445E48:
	.incbin "baserom.dol", 0x441F48, 0x98
.global lbl_80445EE0
lbl_80445EE0:
	.incbin "baserom.dol", 0x441FE0, 0x88
.global lbl_80445F68
lbl_80445F68:
	.incbin "baserom.dol", 0x442068, 0x78
.global lbl_80445FE0
lbl_80445FE0:
	.incbin "baserom.dol", 0x4420E0, 0x10
.global lbl_80445FF0
lbl_80445FF0:
	.incbin "baserom.dol", 0x4420F0, 0x48
.global lbl_80446038
lbl_80446038:
	.incbin "baserom.dol", 0x442138, 0x40
.global lbl_80446078
lbl_80446078:
	.incbin "baserom.dol", 0x442178, 0x40
.global lbl_804460B8
lbl_804460B8:
	.incbin "baserom.dol", 0x4421B8, 0x10
.global lbl_804460C8
lbl_804460C8:
	.incbin "baserom.dol", 0x4421C8, 0x48
.global lbl_80446110
lbl_80446110:
	.incbin "baserom.dol", 0x442210, 0x5C
.global lbl_8044616C
lbl_8044616C:
	.incbin "baserom.dol", 0x44226C, 0x6C
.global lbl_804461D8
lbl_804461D8:
	.incbin "baserom.dol", 0x4422D8, 0x68
.global lbl_80446240
lbl_80446240:
	.incbin "baserom.dol", 0x442340, 0x98
.global lbl_804462D8
lbl_804462D8:
	.incbin "baserom.dol", 0x4423D8, 0x7C
.global lbl_80446354
lbl_80446354:
	.incbin "baserom.dol", 0x442454, 0x10
.global lbl_80446364
lbl_80446364:
	.incbin "baserom.dol", 0x442464, 0x58
.global lbl_804463BC
lbl_804463BC:
	.incbin "baserom.dol", 0x4424BC, 0xC4
.global lbl_80446480
lbl_80446480:
	.incbin "baserom.dol", 0x442580, 0x10
.global lbl_80446490
lbl_80446490:
	.incbin "baserom.dol", 0x442590, 0x10
.global lbl_804464A0
lbl_804464A0:
	.incbin "baserom.dol", 0x4425A0, 0x10
.global lbl_804464B0
lbl_804464B0:
	.incbin "baserom.dol", 0x4425B0, 0x10
.global lbl_804464C0
lbl_804464C0:
	.incbin "baserom.dol", 0x4425C0, 0x14
.global lbl_804464D4
lbl_804464D4:
	.incbin "baserom.dol", 0x4425D4, 0x1C
.global lbl_804464F0
lbl_804464F0:
	.incbin "baserom.dol", 0x4425F0, 0x58
.global lbl_80446548
lbl_80446548:
	.incbin "baserom.dol", 0x442648, 0x14
.global lbl_8044655C
lbl_8044655C:
	.incbin "baserom.dol", 0x44265C, 0x34
.global lbl_80446590
lbl_80446590:
	.incbin "baserom.dol", 0x442690, 0x18
.global lbl_804465A8
lbl_804465A8:
	.incbin "baserom.dol", 0x4426A8, 0x14
.global lbl_804465BC
lbl_804465BC:
	.incbin "baserom.dol", 0x4426BC, 0x1C
.global lbl_804465D8
lbl_804465D8:
	.incbin "baserom.dol", 0x4426D8, 0x10
.global lbl_804465E8
lbl_804465E8:
	.incbin "baserom.dol", 0x4426E8, 0xE8
.global lbl_804466D0
lbl_804466D0:
	.incbin "baserom.dol", 0x4427D0, 0x48
.global lbl_80446718
lbl_80446718:
	.incbin "baserom.dol", 0x442818, 0x250
.global lbl_80446968
lbl_80446968:
	.incbin "baserom.dol", 0x442A68, 0x168
.global lbl_80446AD0
lbl_80446AD0:
	.incbin "baserom.dol", 0x442BD0, 0x10
.global lbl_80446AE0
lbl_80446AE0:
	.incbin "baserom.dol", 0x442BE0, 0x14
.global lbl_80446AF4
lbl_80446AF4:
	.incbin "baserom.dol", 0x442BF4, 0x24
.global lbl_80446B18
lbl_80446B18:
	.incbin "baserom.dol", 0x442C18, 0x14
.global lbl_80446B2C
lbl_80446B2C:
	.incbin "baserom.dol", 0x442C2C, 0x14
.global lbl_80446B40
lbl_80446B40:
	.incbin "baserom.dol", 0x442C40, 0x14
.global lbl_80446B54
lbl_80446B54:
	.incbin "baserom.dol", 0x442C54, 0x1C
.global lbl_80446B70
lbl_80446B70:
	.incbin "baserom.dol", 0x442C70, 0x70
.global lbl_80446BE0
lbl_80446BE0:
	.incbin "baserom.dol", 0x442CE0, 0x14
.global lbl_80446BF4
lbl_80446BF4:
	.incbin "baserom.dol", 0x442CF4, 0x10
.global lbl_80446C04
lbl_80446C04:
	.incbin "baserom.dol", 0x442D04, 0x10
.global lbl_80446C14
lbl_80446C14:
	.incbin "baserom.dol", 0x442D14, 0x18
.global lbl_80446C2C
lbl_80446C2C:
	.incbin "baserom.dol", 0x442D2C, 0x14
.global lbl_80446C40
lbl_80446C40:
	.incbin "baserom.dol", 0x442D40, 0x10
.global lbl_80446C50
lbl_80446C50:
	.incbin "baserom.dol", 0x442D50, 0x10
.global lbl_80446C60
lbl_80446C60:
	.incbin "baserom.dol", 0x442D60, 0x10
.global lbl_80446C70
lbl_80446C70:
	.incbin "baserom.dol", 0x442D70, 0x10
.global lbl_80446C80
lbl_80446C80:
	.incbin "baserom.dol", 0x442D80, 0x2C
.global lbl_80446CAC
lbl_80446CAC:
	.incbin "baserom.dol", 0x442DAC, 0x30
.global lbl_80446CDC
lbl_80446CDC:
	.incbin "baserom.dol", 0x442DDC, 0x2C
.global lbl_80446D08
lbl_80446D08:
	.incbin "baserom.dol", 0x442E08, 0x20
.global lbl_80446D28
lbl_80446D28:
	.incbin "baserom.dol", 0x442E28, 0x84
.global lbl_80446DAC
lbl_80446DAC:
	.incbin "baserom.dol", 0x442EAC, 0xF4
.global lbl_80446EA0
lbl_80446EA0:
	.incbin "baserom.dol", 0x442FA0, 0x30
.global lbl_80446ED0
lbl_80446ED0:
	.incbin "baserom.dol", 0x442FD0, 0x18
.global lbl_80446EE8
lbl_80446EE8:
	.incbin "baserom.dol", 0x442FE8, 0x20
.global lbl_80446F08
lbl_80446F08:
	.incbin "baserom.dol", 0x443008, 0x340
.global lbl_80447248
lbl_80447248:
	.incbin "baserom.dol", 0x443348, 0xB8
.global lbl_80447300
lbl_80447300:
	.incbin "baserom.dol", 0x443400, 0x20
.global lbl_80447320
lbl_80447320:
	.incbin "baserom.dol", 0x443420, 0x328
.global lbl_80447648
lbl_80447648:
	.incbin "baserom.dol", 0x443748, 0x28
.global lbl_80447670
lbl_80447670:
	.incbin "baserom.dol", 0x443770, 0x3C
.global lbl_804476AC
lbl_804476AC:
	.incbin "baserom.dol", 0x4437AC, 0x64
.global lbl_80447710
lbl_80447710:
	.incbin "baserom.dol", 0x443810, 0x10
.global lbl_80447720
lbl_80447720:
	.incbin "baserom.dol", 0x443820, 0x2C
.global lbl_8044774C
lbl_8044774C:
	.incbin "baserom.dol", 0x44384C, 0x58
.global lbl_804477A4
lbl_804477A4:
	.incbin "baserom.dol", 0x4438A4, 0x1A8
.global lbl_8044794C
lbl_8044794C:
	.incbin "baserom.dol", 0x443A4C, 0x1C
.global lbl_80447968
lbl_80447968:
	.incbin "baserom.dol", 0x443A68, 0x1C
.global lbl_80447984
lbl_80447984:
	.incbin "baserom.dol", 0x443A84, 0x14
.global lbl_80447998
lbl_80447998:
	.incbin "baserom.dol", 0x443A98, 0x1C
.global lbl_804479B4
lbl_804479B4:
	.incbin "baserom.dol", 0x443AB4, 0x14
.global lbl_804479C8
lbl_804479C8:
	.incbin "baserom.dol", 0x443AC8, 0x5EC
.global lbl_80447FB4
lbl_80447FB4:
	.incbin "baserom.dol", 0x4440B4, 0xC
.global lbl_80447FC0
lbl_80447FC0:
	.incbin "baserom.dol", 0x4440C0, 0x20
.global lbl_80447FE0
lbl_80447FE0:
	.incbin "baserom.dol", 0x4440E0, 0x30
.global lbl_80448010
lbl_80448010:
	.incbin "baserom.dol", 0x444110, 0x10
.global lbl_80448020
lbl_80448020:
	.incbin "baserom.dol", 0x444120, 0x18
.global lbl_80448038
lbl_80448038:
	.incbin "baserom.dol", 0x444138, 0x18
.global lbl_80448050
lbl_80448050:
	.incbin "baserom.dol", 0x444150, 0x58
.global lbl_804480A8
lbl_804480A8:
	.incbin "baserom.dol", 0x4441A8, 0x58
.global lbl_80448100
lbl_80448100:
	.incbin "baserom.dol", 0x444200, 0x94
.global lbl_80448194
lbl_80448194:
	.incbin "baserom.dol", 0x444294, 0x254
.global lbl_804483E8
lbl_804483E8:
	.incbin "baserom.dol", 0x4444E8, 0x2E8
.global lbl_804486D0
lbl_804486D0:
	.incbin "baserom.dol", 0x4447D0, 0x30
.global lbl_80448700
lbl_80448700:
	.incbin "baserom.dol", 0x444800, 0x28
.global lbl_80448728
lbl_80448728:
	.incbin "baserom.dol", 0x444828, 0x1D4
.global lbl_804488FC
lbl_804488FC:
	.incbin "baserom.dol", 0x4449FC, 0x30
.global lbl_8044892C
lbl_8044892C:
	.incbin "baserom.dol", 0x444A2C, 0x14C
.global lbl_80448A78
lbl_80448A78:
	.incbin "baserom.dol", 0x444B78, 0x2D8
.global lbl_80448D50
lbl_80448D50:
	.incbin "baserom.dol", 0x444E50, 0x108
.global lbl_80448E58
lbl_80448E58:
	.incbin "baserom.dol", 0x444F58, 0x30
.global lbl_80448E88
lbl_80448E88:
	.incbin "baserom.dol", 0x444F88, 0x8C
.global lbl_80448F14
lbl_80448F14:
	.incbin "baserom.dol", 0x445014, 0x144
.global lbl_80449058
lbl_80449058:
	.incbin "baserom.dol", 0x445158, 0x2C
.global lbl_80449084
lbl_80449084:
	.incbin "baserom.dol", 0x445184, 0x3C
.global lbl_804490C0
lbl_804490C0:
	.incbin "baserom.dol", 0x4451C0, 0x100
.global lbl_804491C0
lbl_804491C0:
	.incbin "baserom.dol", 0x4452C0, 0x128
.global lbl_804492E8
lbl_804492E8:
	.incbin "baserom.dol", 0x4453E8, 0x14
.global lbl_804492FC
lbl_804492FC:
	.incbin "baserom.dol", 0x4453FC, 0x14
.global lbl_80449310
lbl_80449310:
	.incbin "baserom.dol", 0x445410, 0x18
.global lbl_80449328
lbl_80449328:
	.incbin "baserom.dol", 0x445428, 0x40
.global lbl_80449368
lbl_80449368:
	.incbin "baserom.dol", 0x445468, 0x18
.global lbl_80449380
lbl_80449380:
	.incbin "baserom.dol", 0x445480, 0x228
.global lbl_804495A8
lbl_804495A8:
	.incbin "baserom.dol", 0x4456A8, 0x2C
.global lbl_804495D4
lbl_804495D4:
	.incbin "baserom.dol", 0x4456D4, 0x2C
.global lbl_80449600
lbl_80449600:
	.incbin "baserom.dol", 0x445700, 0x28
.global lbl_80449628
lbl_80449628:
	.incbin "baserom.dol", 0x445728, 0x30
.global lbl_80449658
lbl_80449658:
	.incbin "baserom.dol", 0x445758, 0x24
.global lbl_8044967C
lbl_8044967C:
	.incbin "baserom.dol", 0x44577C, 0xB4
.global lbl_80449730
lbl_80449730:
	.incbin "baserom.dol", 0x445830, 0x188
.global lbl_804498B8
lbl_804498B8:
	.incbin "baserom.dol", 0x4459B8, 0x88
.global lbl_80449940
lbl_80449940:
	.incbin "baserom.dol", 0x445A40, 0x1C
.global lbl_8044995C
lbl_8044995C:
	.incbin "baserom.dol", 0x445A5C, 0x34
.global lbl_80449990
lbl_80449990:
	.incbin "baserom.dol", 0x445A90, 0x1C
.global lbl_804499AC
lbl_804499AC:
	.incbin "baserom.dol", 0x445AAC, 0x20
.global lbl_804499CC
lbl_804499CC:
	.incbin "baserom.dol", 0x445ACC, 0x24
.global lbl_804499F0
lbl_804499F0:
	.incbin "baserom.dol", 0x445AF0, 0x120
.global lbl_80449B10
lbl_80449B10:
	.incbin "baserom.dol", 0x445C10, 0x20
.global lbl_80449B30
lbl_80449B30:
	.incbin "baserom.dol", 0x445C30, 0x20
.global lbl_80449B50
lbl_80449B50:
	.incbin "baserom.dol", 0x445C50, 0x18
.global lbl_80449B68
lbl_80449B68:
	.incbin "baserom.dol", 0x445C68, 0x38
.global lbl_80449BA0
lbl_80449BA0:
	.incbin "baserom.dol", 0x445CA0, 0x68
.global lbl_80449C08
lbl_80449C08:
	.incbin "baserom.dol", 0x445D08, 0x24
.global lbl_80449C2C
lbl_80449C2C:
	.incbin "baserom.dol", 0x445D2C, 0xEC
.global lbl_80449D18
lbl_80449D18:
	.incbin "baserom.dol", 0x445E18, 0x100
.global lbl_80449E18
lbl_80449E18:
	.incbin "baserom.dol", 0x445F18, 0xBC
.global lbl_80449ED4
lbl_80449ED4:
	.incbin "baserom.dol", 0x445FD4, 0x4D4
.global lbl_8044A3A8
lbl_8044A3A8:
	.incbin "baserom.dol", 0x4464A8, 0x18
.global lbl_8044A3C0
lbl_8044A3C0:
	.incbin "baserom.dol", 0x4464C0, 0x20
.global lbl_8044A3E0
lbl_8044A3E0:
	.incbin "baserom.dol", 0x4464E0, 0x40
.global lbl_8044A420
lbl_8044A420:
	.incbin "baserom.dol", 0x446520, 0x10
.global lbl_8044A430
lbl_8044A430:
	.incbin "baserom.dol", 0x446530, 0x28
.global lbl_8044A458
lbl_8044A458:
	.incbin "baserom.dol", 0x446558, 0x10
.global lbl_8044A468
lbl_8044A468:
	.incbin "baserom.dol", 0x446568, 0x74
.global lbl_8044A4DC
lbl_8044A4DC:
	.incbin "baserom.dol", 0x4465DC, 0x9C
.global lbl_8044A578
lbl_8044A578:
	.incbin "baserom.dol", 0x446678, 0x10
.global lbl_8044A588
lbl_8044A588:
	.incbin "baserom.dol", 0x446688, 0x68
.global lbl_8044A5F0
lbl_8044A5F0:
	.incbin "baserom.dol", 0x4466F0, 0x98
.global lbl_8044A688
lbl_8044A688:
	.incbin "baserom.dol", 0x446788, 0x78
.global lbl_8044A700
lbl_8044A700:
	.incbin "baserom.dol", 0x446800, 0x4C
.global lbl_8044A74C
lbl_8044A74C:
	.incbin "baserom.dol", 0x44684C, 0x5C
.global lbl_8044A7A8
lbl_8044A7A8:
	.incbin "baserom.dol", 0x4468A8, 0x10
.global lbl_8044A7B8
lbl_8044A7B8:
	.incbin "baserom.dol", 0x4468B8, 0x28
.global lbl_8044A7E0
lbl_8044A7E0:
	.incbin "baserom.dol", 0x4468E0, 0x30
.global lbl_8044A810
lbl_8044A810:
	.incbin "baserom.dol", 0x446910, 0x10
.global lbl_8044A820
lbl_8044A820:
	.incbin "baserom.dol", 0x446920, 0x38C
.global lbl_8044ABAC
lbl_8044ABAC:
	.incbin "baserom.dol", 0x446CAC, 0x28
.global lbl_8044ABD4
lbl_8044ABD4:
	.incbin "baserom.dol", 0x446CD4, 0x14
.global lbl_8044ABE8
lbl_8044ABE8:
	.incbin "baserom.dol", 0x446CE8, 0x64
.global lbl_8044AC4C
lbl_8044AC4C:
	.incbin "baserom.dol", 0x446D4C, 0x180
.global lbl_8044ADCC
lbl_8044ADCC:
	.incbin "baserom.dol", 0x446ECC, 0xD0
.global lbl_8044AE9C
lbl_8044AE9C:
	.incbin "baserom.dol", 0x446F9C, 0x8C
.global lbl_8044AF28
lbl_8044AF28:
	.incbin "baserom.dol", 0x447028, 0x18
.global lbl_8044AF40
lbl_8044AF40:
	.incbin "baserom.dol", 0x447040, 0x10
.global lbl_8044AF50
lbl_8044AF50:
	.incbin "baserom.dol", 0x447050, 0x60
.global lbl_8044AFB0
lbl_8044AFB0:
	.incbin "baserom.dol", 0x4470B0, 0x98
.global lbl_8044B048
lbl_8044B048:
	.incbin "baserom.dol", 0x447148, 0x14
.global lbl_8044B05C
lbl_8044B05C:
	.incbin "baserom.dol", 0x44715C, 0x14
.global lbl_8044B070
lbl_8044B070:
	.incbin "baserom.dol", 0x447170, 0x104
.global lbl_8044B174
lbl_8044B174:
	.incbin "baserom.dol", 0x447274, 0x3C
.global lbl_8044B1B0
lbl_8044B1B0:
	.incbin "baserom.dol", 0x4472B0, 0x78
.global lbl_8044B228
lbl_8044B228:
	.incbin "baserom.dol", 0x447328, 0x40
.global lbl_8044B268
lbl_8044B268:
	.incbin "baserom.dol", 0x447368, 0xC8
.global lbl_8044B330
lbl_8044B330:
	.incbin "baserom.dol", 0x447430, 0x1F0
.global lbl_8044B520
lbl_8044B520:
	.incbin "baserom.dol", 0x447620, 0x18
.global lbl_8044B538
lbl_8044B538:
	.incbin "baserom.dol", 0x447638, 0x10
.global lbl_8044B548
lbl_8044B548:
	.incbin "baserom.dol", 0x447648, 0x30
.global lbl_8044B578
lbl_8044B578:
	.incbin "baserom.dol", 0x447678, 0x10
.global lbl_8044B588
lbl_8044B588:
	.incbin "baserom.dol", 0x447688, 0x10
.global lbl_8044B598
lbl_8044B598:
	.incbin "baserom.dol", 0x447698, 0x38
.global lbl_8044B5D0
lbl_8044B5D0:
	.incbin "baserom.dol", 0x4476D0, 0x10
.global lbl_8044B5E0
lbl_8044B5E0:
	.incbin "baserom.dol", 0x4476E0, 0x28
.global lbl_8044B608
lbl_8044B608:
	.incbin "baserom.dol", 0x447708, 0x394
.global lbl_8044B99C
lbl_8044B99C:
	.incbin "baserom.dol", 0x447A9C, 0x24
.global lbl_8044B9C0
lbl_8044B9C0:
	.incbin "baserom.dol", 0x447AC0, 0x38
.global lbl_8044B9F8
lbl_8044B9F8:
	.incbin "baserom.dol", 0x447AF8, 0x10
.global lbl_8044BA08
lbl_8044BA08:
	.incbin "baserom.dol", 0x447B08, 0xC
.global lbl_8044BA14
lbl_8044BA14:
	.incbin "baserom.dol", 0x447B14, 0xC
.global lbl_8044BA20
lbl_8044BA20:
	.incbin "baserom.dol", 0x447B20, 0x158
.global lbl_8044BB78
lbl_8044BB78:
	.incbin "baserom.dol", 0x447C78, 0x3F8
.global lbl_8044BF70
lbl_8044BF70:
	.incbin "baserom.dol", 0x448070, 0x10
.global lbl_8044BF80
lbl_8044BF80:
	.incbin "baserom.dol", 0x448080, 0xC
.global lbl_8044BF8C
lbl_8044BF8C:
	.incbin "baserom.dol", 0x44808C, 0x34
.global lbl_8044BFC0
lbl_8044BFC0:
	.incbin "baserom.dol", 0x4480C0, 0x38
.global lbl_8044BFF8
lbl_8044BFF8:
	.incbin "baserom.dol", 0x4480F8, 0xCC
.global lbl_8044C0C4
lbl_8044C0C4:
	.incbin "baserom.dol", 0x4481C4, 0x54
.global lbl_8044C118
lbl_8044C118:
	.incbin "baserom.dol", 0x448218, 0xF0
.global lbl_8044C208
lbl_8044C208:
	.incbin "baserom.dol", 0x448308, 0x30
.global lbl_8044C238
lbl_8044C238:
	.incbin "baserom.dol", 0x448338, 0x70
.global lbl_8044C2A8
lbl_8044C2A8:
	.incbin "baserom.dol", 0x4483A8, 0x60
.global lbl_8044C308
lbl_8044C308:
	.incbin "baserom.dol", 0x448408, 0x10
.global lbl_8044C318
lbl_8044C318:
	.incbin "baserom.dol", 0x448418, 0x20
.global lbl_8044C338
lbl_8044C338:
	.incbin "baserom.dol", 0x448438, 0xD8
.global lbl_8044C410
lbl_8044C410:
	.incbin "baserom.dol", 0x448510, 0x140
.global lbl_8044C550
lbl_8044C550:
	.incbin "baserom.dol", 0x448650, 0x10
.global lbl_8044C560
lbl_8044C560:
	.incbin "baserom.dol", 0x448660, 0x58
.global lbl_8044C5B8
lbl_8044C5B8:
	.incbin "baserom.dol", 0x4486B8, 0x10
.global lbl_8044C5C8
lbl_8044C5C8:
	.incbin "baserom.dol", 0x4486C8, 0xC
.global lbl_8044C5D4
lbl_8044C5D4:
	.incbin "baserom.dol", 0x4486D4, 0xC
.global lbl_8044C5E0
lbl_8044C5E0:
	.incbin "baserom.dol", 0x4486E0, 0x10
.global lbl_8044C5F0
lbl_8044C5F0:
	.incbin "baserom.dol", 0x4486F0, 0x30
.global lbl_8044C620
lbl_8044C620:
	.incbin "baserom.dol", 0x448720, 0x28
.global lbl_8044C648
lbl_8044C648:
	.incbin "baserom.dol", 0x448748, 0x60
.global lbl_8044C6A8
lbl_8044C6A8:
	.incbin "baserom.dol", 0x4487A8, 0x20
.global lbl_8044C6C8
lbl_8044C6C8:
	.incbin "baserom.dol", 0x4487C8, 0x14
.global lbl_8044C6DC
lbl_8044C6DC:
	.incbin "baserom.dol", 0x4487DC, 0x14
.global lbl_8044C6F0
lbl_8044C6F0:
	.incbin "baserom.dol", 0x4487F0, 0x68
.global lbl_8044C758
lbl_8044C758:
	.incbin "baserom.dol", 0x448858, 0x68
.global lbl_8044C7C0
lbl_8044C7C0:
	.incbin "baserom.dol", 0x4488C0, 0x30
.global lbl_8044C7F0
lbl_8044C7F0:
	.incbin "baserom.dol", 0x4488F0, 0x68
.global lbl_8044C858
lbl_8044C858:
	.incbin "baserom.dol", 0x448958, 0x58
.global lbl_8044C8B0
lbl_8044C8B0:
	.incbin "baserom.dol", 0x4489B0, 0x58
.global lbl_8044C908
lbl_8044C908:
	.incbin "baserom.dol", 0x448A08, 0x28
.global lbl_8044C930
lbl_8044C930:
	.incbin "baserom.dol", 0x448A30, 0x70
.global lbl_8044C9A0
lbl_8044C9A0:
	.incbin "baserom.dol", 0x448AA0, 0x68
.global lbl_8044CA08
lbl_8044CA08:
	.incbin "baserom.dol", 0x448B08, 0x20
.global lbl_8044CA28
lbl_8044CA28:
	.incbin "baserom.dol", 0x448B28, 0x20
.global lbl_8044CA48
lbl_8044CA48:
	.incbin "baserom.dol", 0x448B48, 0x20
.global lbl_8044CA68
lbl_8044CA68:
	.incbin "baserom.dol", 0x448B68, 0x20
.global lbl_8044CA88
lbl_8044CA88:
	.incbin "baserom.dol", 0x448B88, 0x20
.global lbl_8044CAA8
lbl_8044CAA8:
	.incbin "baserom.dol", 0x448BA8, 0x20
.global lbl_8044CAC8
lbl_8044CAC8:
	.incbin "baserom.dol", 0x448BC8, 0x28
.global lbl_8044CAF0
lbl_8044CAF0:
	.incbin "baserom.dol", 0x448BF0, 0x1F8
.global lbl_8044CCE8
lbl_8044CCE8:
	.incbin "baserom.dol", 0x448DE8, 0x10
.global lbl_8044CCF8
lbl_8044CCF8:
	.incbin "baserom.dol", 0x448DF8, 0x10
.global lbl_8044CD08
lbl_8044CD08:
	.incbin "baserom.dol", 0x448E08, 0x18
.global lbl_8044CD20
lbl_8044CD20:
	.incbin "baserom.dol", 0x448E20, 0x68
.global lbl_8044CD88
lbl_8044CD88:
	.incbin "baserom.dol", 0x448E88, 0x70
.global lbl_8044CDF8
lbl_8044CDF8:
	.incbin "baserom.dol", 0x448EF8, 0x18
.global lbl_8044CE10
lbl_8044CE10:
	.incbin "baserom.dol", 0x448F10, 0x10
.global lbl_8044CE20
lbl_8044CE20:
	.incbin "baserom.dol", 0x448F20, 0x28
.global lbl_8044CE48
lbl_8044CE48:
	.incbin "baserom.dol", 0x448F48, 0x20
.global lbl_8044CE68
lbl_8044CE68:
	.incbin "baserom.dol", 0x448F68, 0x30
.global lbl_8044CE98
lbl_8044CE98:
	.incbin "baserom.dol", 0x448F98, 0x10
.global lbl_8044CEA8
lbl_8044CEA8:
	.incbin "baserom.dol", 0x448FA8, 0x10
.global lbl_8044CEB8
lbl_8044CEB8:
	.incbin "baserom.dol", 0x448FB8, 0x10
.global lbl_8044CEC8
lbl_8044CEC8:
	.incbin "baserom.dol", 0x448FC8, 0x58
.global lbl_8044CF20
lbl_8044CF20:
	.incbin "baserom.dol", 0x449020, 0x48
.global lbl_8044CF68
lbl_8044CF68:
	.incbin "baserom.dol", 0x449068, 0x18
.global lbl_8044CF80
lbl_8044CF80:
	.incbin "baserom.dol", 0x449080, 0x18
.global lbl_8044CF98
lbl_8044CF98:
	.incbin "baserom.dol", 0x449098, 0x70
.global lbl_8044D008
lbl_8044D008:
	.incbin "baserom.dol", 0x449108, 0x24
.global lbl_8044D02C
lbl_8044D02C:
	.incbin "baserom.dol", 0x44912C, 0x14
.global lbl_8044D040
lbl_8044D040:
	.incbin "baserom.dol", 0x449140, 0x10
.global lbl_8044D050
lbl_8044D050:
	.incbin "baserom.dol", 0x449150, 0x70
.global lbl_8044D0C0
lbl_8044D0C0:
	.incbin "baserom.dol", 0x4491C0, 0x60

# TODO: make up a name for this table in nw4r::math

# NOTE: This is an array of structs each containing 4 floats, and it is 
# used by SinFIdx__Q24nw4r4mathFf and CosFIdx__Q24nw4r4mathFf in a 
# linear interpolation method to compute the sine and cosine of x

# NOTE: Here is the element structure (table is indexed using floor(x)):
  # { 
  #   sin(floor(x)*2*pi/256);
  #   cos(floor(x)*2*pi/256); 
  #   sin_correction_coeff;
  #   cos_correction_coeff;
  # };

.global lbl_8044D120
lbl_8044D120:
    .float 0.000000, 1.000000, 0.024541, -0.000301
    .float 0.024541, 0.999699, 0.024526, -0.000903
    .float 0.049068, 0.998795, 0.024497, -0.001505
    .float 0.073565, 0.997290, 0.024453, -0.002106
    .float 0.098017, 0.995185, 0.024394, -0.002705
    .float 0.122411, 0.992480, 0.024320, -0.003303
    .float 0.146730, 0.989177, 0.024231, -0.003899
    .float 0.170962, 0.985278, 0.024128, -0.004492
    .float 0.195090, 0.980785, 0.024011, -0.005083
    .float 0.219101, 0.975702, 0.023879, -0.005671
    .float 0.242980, 0.970031, 0.023733, -0.006255
    .float 0.266713, 0.963776, 0.023572, -0.006836
    .float 0.290285, 0.956940, 0.023397, -0.007412
    .float 0.313682, 0.949528, 0.023208, -0.007984
    .float 0.336890, 0.941544, 0.023005, -0.008551
    .float 0.359895, 0.932993, 0.022788, -0.009113
    .float 0.382683, 0.923880, 0.022558, -0.009670
    .float 0.405241, 0.914210, 0.022314, -0.010220
    .float 0.427555, 0.903989, 0.022056, -0.010765
    .float 0.449611, 0.893224, 0.021785, -0.011303
    .float 0.471397, 0.881921, 0.021501, -0.011834
    .float 0.492898, 0.870087, 0.021205, -0.012358
    .float 0.514103, 0.857729, 0.020895, -0.012875
    .float 0.534998, 0.844854, 0.020573, -0.013384
    .float 0.555570, 0.831470, 0.020238, -0.013885
    .float 0.575808, 0.817585, 0.019891, -0.014377
    .float 0.595699, 0.803208, 0.019532, -0.014861
    .float 0.615232, 0.788346, 0.019162, -0.015336
    .float 0.634393, 0.773010, 0.018780, -0.015802
    .float 0.653173, 0.757209, 0.018386, -0.016258
    .float 0.671559, 0.740951, 0.017982, -0.016704
    .float 0.689541, 0.724247, 0.017566, -0.017140
    .float 0.707107, 0.707107, 0.017140, -0.017566
    .float 0.724247, 0.689541, 0.016704, -0.017982
    .float 0.740951, 0.671559, 0.016258, -0.018386
    .float 0.757209, 0.653173, 0.015802, -0.018780
    .float 0.773010, 0.634393, 0.015336, -0.019162
    .float 0.788346, 0.615232, 0.014861, -0.019532
    .float 0.803208, 0.595699, 0.014377, -0.019891
    .float 0.817585, 0.575808, 0.013885, -0.020238
    .float 0.831470, 0.555570, 0.013384, -0.020573
    .float 0.844854, 0.534998, 0.012875, -0.020895
    .float 0.857729, 0.514103, 0.012358, -0.021205
    .float 0.870087, 0.492898, 0.011834, -0.021501
    .float 0.881921, 0.471397, 0.011303, -0.021785
    .float 0.893224, 0.449611, 0.010765, -0.022056
    .float 0.903989, 0.427555, 0.010220, -0.022314
    .float 0.914210, 0.405241, 0.009670, -0.022558
    .float 0.923880, 0.382683, 0.009113, -0.022788
    .float 0.932993, 0.359895, 0.008551, -0.023005
    .float 0.941544, 0.336890, 0.007984, -0.023208
    .float 0.949528, 0.313682, 0.007412, -0.023397
    .float 0.956940, 0.290285, 0.006836, -0.023572
    .float 0.963776, 0.266713, 0.006255, -0.023733
    .float 0.970031, 0.242980, 0.005671, -0.023879
    .float 0.975702, 0.219101, 0.005083, -0.024011
    .float 0.980785, 0.195090, 0.004492, -0.024128
    .float 0.985278, 0.170962, 0.003899, -0.024231
    .float 0.989177, 0.146730, 0.003303, -0.024320
    .float 0.992480, 0.122411, 0.002705, -0.024394
    .float 0.995185, 0.098017, 0.002106, -0.024453
    .float 0.997290, 0.073565, 0.001505, -0.024497
    .float 0.998795, 0.049068, 0.000903, -0.024526
    .float 0.999699, 0.024541, 0.000301, -0.024541
    .float 1.000000, 0.000000, -0.000301, -0.024541
    .float 0.999699, -0.024541, -0.000903, -0.024526
    .float 0.998795, -0.049068, -0.001505, -0.024497
    .float 0.997290, -0.073565, -0.002106, -0.024453
    .float 0.995185, -0.098017, -0.002705, -0.024394
    .float 0.992480, -0.122411, -0.003303, -0.024320
    .float 0.989177, -0.146730, -0.003899, -0.024231
    .float 0.985278, -0.170962, -0.004492, -0.024128
    .float 0.980785, -0.195090, -0.005083, -0.024011
    .float 0.975702, -0.219101, -0.005671, -0.023879
    .float 0.970031, -0.242980, -0.006255, -0.023733
    .float 0.963776, -0.266713, -0.006836, -0.023572
    .float 0.956940, -0.290285, -0.007412, -0.023397
    .float 0.949528, -0.313682, -0.007984, -0.023208
    .float 0.941544, -0.336890, -0.008551, -0.023005
    .float 0.932993, -0.359895, -0.009113, -0.022788
    .float 0.923880, -0.382683, -0.009670, -0.022558
    .float 0.914210, -0.405241, -0.010220, -0.022314
    .float 0.903989, -0.427555, -0.010765, -0.022056
    .float 0.893224, -0.449611, -0.011303, -0.021785
    .float 0.881921, -0.471397, -0.011834, -0.021501
    .float 0.870087, -0.492898, -0.012358, -0.021205
    .float 0.857729, -0.514103, -0.012875, -0.020895
    .float 0.844854, -0.534998, -0.013384, -0.020573
    .float 0.831470, -0.555570, -0.013885, -0.020238
    .float 0.817585, -0.575808, -0.014377, -0.019891
    .float 0.803208, -0.595699, -0.014861, -0.019532
    .float 0.788346, -0.615232, -0.015336, -0.019162
    .float 0.773010, -0.634393, -0.015802, -0.018780
    .float 0.757209, -0.653173, -0.016258, -0.018386
    .float 0.740951, -0.671559, -0.016704, -0.017982
    .float 0.724247, -0.689541, -0.017140, -0.017566
    .float 0.707107, -0.707107, -0.017566, -0.017140
    .float 0.689541, -0.724247, -0.017982, -0.016704
    .float 0.671559, -0.740951, -0.018386, -0.016258
    .float 0.653173, -0.757209, -0.018780, -0.015802
    .float 0.634393, -0.773010, -0.019162, -0.015336
    .float 0.615232, -0.788346, -0.019532, -0.014861
    .float 0.595699, -0.803208, -0.019891, -0.014377
    .float 0.575808, -0.817585, -0.020238, -0.013885
    .float 0.555570, -0.831470, -0.020573, -0.013384
    .float 0.534998, -0.844854, -0.020895, -0.012875
    .float 0.514103, -0.857729, -0.021205, -0.012358
    .float 0.492898, -0.870087, -0.021501, -0.011834
    .float 0.471397, -0.881921, -0.021785, -0.011303
    .float 0.449611, -0.893224, -0.022056, -0.010765
    .float 0.427555, -0.903989, -0.022314, -0.010220
    .float 0.405241, -0.914210, -0.022558, -0.009670
    .float 0.382683, -0.923880, -0.022788, -0.009113
    .float 0.359895, -0.932993, -0.023005, -0.008551
    .float 0.336890, -0.941544, -0.023208, -0.007984
    .float 0.313682, -0.949528, -0.023397, -0.007412
    .float 0.290285, -0.956940, -0.023572, -0.006836
    .float 0.266713, -0.963776, -0.023733, -0.006255
    .float 0.242980, -0.970031, -0.023879, -0.005671
    .float 0.219101, -0.975702, -0.024011, -0.005083
    .float 0.195090, -0.980785, -0.024128, -0.004492
    .float 0.170962, -0.985278, -0.024231, -0.003899
    .float 0.146730, -0.989177, -0.024320, -0.003303
    .float 0.122411, -0.992480, -0.024394, -0.002705
    .float 0.098017, -0.995185, -0.024453, -0.002106
    .float 0.073565, -0.997290, -0.024497, -0.001505
    .float 0.049068, -0.998795, -0.024526, -0.000903
    .float 0.024541, -0.999699, -0.024541, -0.000301
    .float 0.000000, -1.000000, -0.024541, 0.000301
    .float -0.024541, -0.999699, -0.024526, 0.000903
    .float -0.049068, -0.998795, -0.024497, 0.001505
    .float -0.073565, -0.997290, -0.024453, 0.002106
    .float -0.098017, -0.995185, -0.024394, 0.002705
    .float -0.122411, -0.992480, -0.024320, 0.003303
    .float -0.146730, -0.989177, -0.024231, 0.003899
    .float -0.170962, -0.985278, -0.024128, 0.004492
    .float -0.195090, -0.980785, -0.024011, 0.005083
    .float -0.219101, -0.975702, -0.023879, 0.005671
    .float -0.242980, -0.970031, -0.023733, 0.006255
    .float -0.266713, -0.963776, -0.023572, 0.006836
    .float -0.290285, -0.956940, -0.023397, 0.007412
    .float -0.313682, -0.949528, -0.023208, 0.007984
    .float -0.336890, -0.941544, -0.023005, 0.008551
    .float -0.359895, -0.932993, -0.022788, 0.009113
    .float -0.382683, -0.923880, -0.022558, 0.009670
    .float -0.405241, -0.914210, -0.022314, 0.010220
    .float -0.427555, -0.903989, -0.022056, 0.010765
    .float -0.449611, -0.893224, -0.021785, 0.011303
    .float -0.471397, -0.881921, -0.021501, 0.011834
    .float -0.492898, -0.870087, -0.021205, 0.012358
    .float -0.514103, -0.857729, -0.020895, 0.012875
    .float -0.534998, -0.844854, -0.020573, 0.013384
    .float -0.555570, -0.831470, -0.020238, 0.013885
    .float -0.575808, -0.817585, -0.019891, 0.014377
    .float -0.595699, -0.803208, -0.019532, 0.014861
    .float -0.615232, -0.788346, -0.019162, 0.015336
    .float -0.634393, -0.773010, -0.018780, 0.015802
    .float -0.653173, -0.757209, -0.018386, 0.016258
    .float -0.671559, -0.740951, -0.017982, 0.016704
    .float -0.689541, -0.724247, -0.017566, 0.017140
    .float -0.707107, -0.707107, -0.017140, 0.017566
    .float -0.724247, -0.689541, -0.016704, 0.017982
    .float -0.740951, -0.671559, -0.016258, 0.018386
    .float -0.757209, -0.653173, -0.015802, 0.018780
    .float -0.773010, -0.634393, -0.015336, 0.019162
    .float -0.788346, -0.615232, -0.014861, 0.019532
    .float -0.803208, -0.595699, -0.014377, 0.019891
    .float -0.817585, -0.575808, -0.013885, 0.020238
    .float -0.831470, -0.555570, -0.013384, 0.020573
    .float -0.844854, -0.534998, -0.012875, 0.020895
    .float -0.857729, -0.514103, -0.012358, 0.021205
    .float -0.870087, -0.492898, -0.011834, 0.021501
    .float -0.881921, -0.471397, -0.011303, 0.021785
    .float -0.893224, -0.449611, -0.010765, 0.022056
    .float -0.903989, -0.427555, -0.010220, 0.022314
    .float -0.914210, -0.405241, -0.009670, 0.022558
    .float -0.923880, -0.382683, -0.009113, 0.022788
    .float -0.932993, -0.359895, -0.008551, 0.023005
    .float -0.941544, -0.336890, -0.007984, 0.023208
    .float -0.949528, -0.313682, -0.007412, 0.023397
    .float -0.956940, -0.290285, -0.006836, 0.023572
    .float -0.963776, -0.266713, -0.006255, 0.023733
    .float -0.970031, -0.242980, -0.005671, 0.023879
    .float -0.975702, -0.219101, -0.005083, 0.024011
    .float -0.980785, -0.195090, -0.004492, 0.024128
    .float -0.985278, -0.170962, -0.003899, 0.024231
    .float -0.989177, -0.146730, -0.003303, 0.024320
    .float -0.992480, -0.122411, -0.002705, 0.024394
    .float -0.995185, -0.098017, -0.002106, 0.024453
    .float -0.997290, -0.073565, -0.001505, 0.024497
    .float -0.998795, -0.049068, -0.000903, 0.024526
    .float -0.999699, -0.024541, -0.000301, 0.024541
    .float -1.000000, -0.000000, 0.000301, 0.024541
    .float -0.999699, 0.024541, 0.000903, 0.024526
    .float -0.998795, 0.049068, 0.001505, 0.024497
    .float -0.997290, 0.073565, 0.002106, 0.024453
    .float -0.995185, 0.098017, 0.002705, 0.024394
    .float -0.992480, 0.122411, 0.003303, 0.024320
    .float -0.989177, 0.146730, 0.003899, 0.024231
    .float -0.985278, 0.170962, 0.004492, 0.024128
    .float -0.980785, 0.195090, 0.005083, 0.024011
    .float -0.975702, 0.219101, 0.005671, 0.023879
    .float -0.970031, 0.242980, 0.006255, 0.023733
    .float -0.963776, 0.266713, 0.006836, 0.023572
    .float -0.956940, 0.290285, 0.007412, 0.023397
    .float -0.949528, 0.313682, 0.007984, 0.023208
    .float -0.941544, 0.336890, 0.008551, 0.023005
    .float -0.932993, 0.359895, 0.009113, 0.022788
    .float -0.923880, 0.382683, 0.009670, 0.022558
    .float -0.914210, 0.405241, 0.010220, 0.022314
    .float -0.903989, 0.427555, 0.010765, 0.022056
    .float -0.893224, 0.449611, 0.011303, 0.021785
    .float -0.881921, 0.471397, 0.011834, 0.021501
    .float -0.870087, 0.492898, 0.012358, 0.021205
    .float -0.857729, 0.514103, 0.012875, 0.020895
    .float -0.844854, 0.534998, 0.013384, 0.020573
    .float -0.831470, 0.555570, 0.013885, 0.020238
    .float -0.817585, 0.575808, 0.014377, 0.019891
    .float -0.803208, 0.595699, 0.014861, 0.019532
    .float -0.788346, 0.615232, 0.015336, 0.019162
    .float -0.773010, 0.634393, 0.015802, 0.018780
    .float -0.757209, 0.653173, 0.016258, 0.018386
    .float -0.740951, 0.671559, 0.016704, 0.017982
    .float -0.724247, 0.689541, 0.017140, 0.017566
    .float -0.707107, 0.707107, 0.017566, 0.017140
    .float -0.689541, 0.724247, 0.017982, 0.016704
    .float -0.671559, 0.740951, 0.018386, 0.016258
    .float -0.653173, 0.757209, 0.018780, 0.015802
    .float -0.634393, 0.773010, 0.019162, 0.015336
    .float -0.615232, 0.788346, 0.019532, 0.014861
    .float -0.595699, 0.803208, 0.019891, 0.014377
    .float -0.575808, 0.817585, 0.020238, 0.013885
    .float -0.555570, 0.831470, 0.020573, 0.013384
    .float -0.534998, 0.844854, 0.020895, 0.012875
    .float -0.514103, 0.857729, 0.021205, 0.012358
    .float -0.492898, 0.870087, 0.021501, 0.011834
    .float -0.471397, 0.881921, 0.021785, 0.011303
    .float -0.449611, 0.893224, 0.022056, 0.010765
    .float -0.427555, 0.903989, 0.022314, 0.010220
    .float -0.405241, 0.914210, 0.022558, 0.009670
    .float -0.382683, 0.923880, 0.022788, 0.009113
    .float -0.359895, 0.932993, 0.023005, 0.008551
    .float -0.336890, 0.941544, 0.023208, 0.007984
    .float -0.313682, 0.949528, 0.023397, 0.007412
    .float -0.290285, 0.956940, 0.023572, 0.006836
    .float -0.266713, 0.963776, 0.023733, 0.006255
    .float -0.242980, 0.970031, 0.023879, 0.005671
    .float -0.219101, 0.975702, 0.024011, 0.005083
    .float -0.195090, 0.980785, 0.024128, 0.004492
    .float -0.170962, 0.985278, 0.024231, 0.003899
    .float -0.146730, 0.989177, 0.024320, 0.003303
    .float -0.122411, 0.992480, 0.024394, 0.002705
    .float -0.098017, 0.995185, 0.024453, 0.002106
    .float -0.073565, 0.997290, 0.024497, 0.001505
    .float -0.049068, 0.998795, 0.024526, 0.000903
    .float -0.024541, 0.999699, 0.024541, 0.000301
    .float -0.000000, 1.000000, 0.024541, -0.000301

# NOTE: used by Atan2FIdx__Q24nw4r4mathFff     
.global lbl_8044E130
lbl_8044E130:
    .float 0.00000000, 1.27282536
    .float 1.27282536, 1.27034581
    .float 2.54317117, 1.26541555
    .float 3.80858660, 1.25809157
    .float 5.06667852, 1.24845707
    .float 6.31513548, 1.23661947
    .float 7.55175495, 1.22270715
    .float 8.77446175, 1.20686662
    .float 9.98132896, 1.18925822
    .float 11.17058659, 1.17005289
    .float 12.34064007, 1.14942801
    .float 13.49006748, 1.12756443
    .float 14.61763191, 1.10464227
    .float 15.72227478, 1.08083868
    .float 16.80311394, 1.05632508
    .float 17.85943794, 1.03126490
    .float 18.89070320, 1.00581205
    .float 19.89651489, 0.98010963
    .float 20.87662506, 0.95428908
    .float 21.83091354, 0.92846978
    .float 22.75938416, 0.90275896
    .float 23.66214180, 0.87725157
    .float 24.53939438, 0.85203087
    .float 25.39142418, 0.82716888
    .float 26.21859360, 0.80272698
    .float 27.02132034, 0.77875656
    .float 27.80007744, 0.75530010
    .float 28.55537796, 0.73239148
    .float 29.28776932, 0.71005738
    .float 29.99782562, 0.68831748
    .float 30.68614388, 0.66718566
    .float 31.35332870, 0.64667052
    .float 32.00000000, 0.62677616
    
.global lbl_8044E238
lbl_8044E238:
	.incbin "baserom.dol", 0x44A338, 0x68
.global lbl_8044E2A0
lbl_8044E2A0:
	.incbin "baserom.dol", 0x44A3A0, 0x10
.global lbl_8044E2B0
lbl_8044E2B0:
	.incbin "baserom.dol", 0x44A3B0, 0x38
.global lbl_8044E2E8
lbl_8044E2E8:
	.incbin "baserom.dol", 0x44A3E8, 0x68
.global lbl_8044E350
lbl_8044E350:
	.incbin "baserom.dol", 0x44A450, 0x78
.global lbl_8044E3C8
lbl_8044E3C8:
	.incbin "baserom.dol", 0x44A4C8, 0x3C
.global lbl_8044E404
lbl_8044E404:
	.incbin "baserom.dol", 0x44A504, 0x7C
.global lbl_8044E480
lbl_8044E480:
	.incbin "baserom.dol", 0x44A580, 0x68
.global lbl_8044E4E8
lbl_8044E4E8:
	.incbin "baserom.dol", 0x44A5E8, 0x20
.global lbl_8044E508
lbl_8044E508:
	.incbin "baserom.dol", 0x44A608, 0x20
.global lbl_8044E528
lbl_8044E528:
	.incbin "baserom.dol", 0x44A628, 0x28
.global lbl_8044E550
lbl_8044E550:
	.incbin "baserom.dol", 0x44A650, 0x10
.global lbl_8044E560
lbl_8044E560:
	.incbin "baserom.dol", 0x44A660, 0x20
.global lbl_8044E580
lbl_8044E580:
	.incbin "baserom.dol", 0x44A680, 0x18
.global lbl_8044E598
lbl_8044E598:
	.incbin "baserom.dol", 0x44A698, 0x18
.global lbl_8044E5B0
lbl_8044E5B0:
	.incbin "baserom.dol", 0x44A6B0, 0x30
.global lbl_8044E5E0
lbl_8044E5E0:
	.incbin "baserom.dol", 0x44A6E0, 0x248
.global lbl_8044E828
lbl_8044E828:
	.incbin "baserom.dol", 0x44A928, 0x190
.global lbl_8044E9B8
lbl_8044E9B8:
	.incbin "baserom.dol", 0x44AAB8, 0x78
.global lbl_8044EA30
lbl_8044EA30:
	.incbin "baserom.dol", 0x44AB30, 0x15D4
.global lbl_80450004
lbl_80450004:
	.incbin "baserom.dol", 0x44C104, 0x8D94
.global lbl_80458D98
lbl_80458D98:
	.incbin "baserom.dol", 0x454E98, 0x148
.global lbl_80458EE0
lbl_80458EE0:
	.incbin "baserom.dol", 0x454FE0, 0xA978
.global lbl_80463858
lbl_80463858:
	.incbin "baserom.dol", 0x45F958, 0x26C8
.global lbl_80465F20
lbl_80465F20:
	.incbin "baserom.dol", 0x462020, 0x26C8
.global lbl_804685E8
lbl_804685E8:
	.incbin "baserom.dol", 0x4646E8, 0x26C8
.global lbl_8046ACB0
lbl_8046ACB0:
	.incbin "baserom.dol", 0x466DB0, 0x26C8
.global lbl_8046D378
lbl_8046D378:
	.incbin "baserom.dol", 0x469478, 0x26C8
.global lbl_8046FA40
lbl_8046FA40:
	.incbin "baserom.dol", 0x46BB40, 0x24C0
.global lbl_80471F00
lbl_80471F00:
	.incbin "baserom.dol", 0x46E000, 0x400
.global lbl_80472300
lbl_80472300:
	.incbin "baserom.dol", 0x46E400, 0xC8
.global lbl_804723C8
lbl_804723C8:
	.incbin "baserom.dol", 0x46E4C8, 0x888
.global lbl_80472C50
lbl_80472C50:
	.incbin "baserom.dol", 0x46ED50, 0x4C
.global lbl_80472C9C
lbl_80472C9C:
	.incbin "baserom.dol", 0x46ED9C, 0x10C
.global lbl_80472DA8
lbl_80472DA8:
	.incbin "baserom.dol", 0x46EEA8, 0x40
.global lbl_80472DE8
lbl_80472DE8:
	.incbin "baserom.dol", 0x46EEE8, 0x50
.global lbl_80472E38
lbl_80472E38:
	.incbin "baserom.dol", 0x46EF38, 0x28
.global lbl_80472E60
lbl_80472E60:
	.incbin "baserom.dol", 0x46EF60, 0x28
.global lbl_80472E88
lbl_80472E88:
	.incbin "baserom.dol", 0x46EF88, 0x28
.global lbl_80472EB0
lbl_80472EB0:
	.incbin "baserom.dol", 0x46EFB0, 0x40
.global lbl_80472EF0
lbl_80472EF0:
	.incbin "baserom.dol", 0x46EFF0, 0x10
.global lbl_80472F00
lbl_80472F00:
	.incbin "baserom.dol", 0x46F000, 0x68
.global lbl_80472F68
lbl_80472F68:
	.incbin "baserom.dol", 0x46F068, 0x54
.global lbl_80472FBC
lbl_80472FBC:
	.incbin "baserom.dol", 0x46F0BC, 0x3C
.global lbl_80472FF8
lbl_80472FF8:
	.incbin "baserom.dol", 0x46F0F8, 0x60
.global lbl_80473058
lbl_80473058:
	.incbin "baserom.dol", 0x46F158, 0x10
.global lbl_80473068
lbl_80473068:
	.incbin "baserom.dol", 0x46F168, 0x28
.global lbl_80473090
lbl_80473090:
	.incbin "baserom.dol", 0x46F190, 0x18
.global lbl_804730A8
lbl_804730A8:
	.incbin "baserom.dol", 0x46F1A8, 0x40
.global lbl_804730E8
lbl_804730E8:
	.incbin "baserom.dol", 0x46F1E8, 0x18
.global lbl_80473100
lbl_80473100:
	.incbin "baserom.dol", 0x46F200, 0xF4
.global lbl_804731F4
lbl_804731F4:
	.incbin "baserom.dol", 0x46F2F4, 0xF4
.global lbl_804732E8
lbl_804732E8:
	.incbin "baserom.dol", 0x46F3E8, 0x48
.global lbl_80473330
lbl_80473330:
	.incbin "baserom.dol", 0x46F430, 0x12C
.global lbl_8047345C
lbl_8047345C:
	.incbin "baserom.dol", 0x46F55C, 0x1C
.global lbl_80473478
lbl_80473478:
	.incbin "baserom.dol", 0x46F578, 0x1C
.global lbl_80473494
lbl_80473494:
	.incbin "baserom.dol", 0x46F594, 0x14
.global lbl_804734A8
lbl_804734A8:
	.incbin "baserom.dol", 0x46F5A8, 0x20
.global lbl_804734C8
lbl_804734C8:
	.incbin "baserom.dol", 0x46F5C8, 0x22
.global lbl_804734EA
lbl_804734EA:
	.incbin "baserom.dol", 0x46F5EA, 0x19
.global lbl_80473503
lbl_80473503:
	.incbin "baserom.dol", 0x46F603, 0x2A
.global lbl_8047352D
lbl_8047352D:
	.incbin "baserom.dol", 0x46F62D, 0x1F
.global lbl_8047354C
lbl_8047354C:
	.incbin "baserom.dol", 0x46F64C, 0x40
.global lbl_8047358C
lbl_8047358C:
	.incbin "baserom.dol", 0x46F68C, 0x194
.global lbl_80473720
lbl_80473720:
	.incbin "baserom.dol", 0x46F820, 0x10
.global lbl_80473730
lbl_80473730:
	.incbin "baserom.dol", 0x46F830, 0x194
.global lbl_804738C4
lbl_804738C4:
	.incbin "baserom.dol", 0x46F9C4, 0x188
.global lbl_80473A4C
lbl_80473A4C:
	.incbin "baserom.dol", 0x46FB4C, 0x40
.global lbl_80473A8C
lbl_80473A8C:
	.incbin "baserom.dol", 0x46FB8C, 0x28
.global lbl_80473AB4
lbl_80473AB4:
	.incbin "baserom.dol", 0x46FBB4, 0x18
.global lbl_80473ACC
lbl_80473ACC:
	.incbin "baserom.dol", 0x46FBCC, 0x40
.global lbl_80473B0C
lbl_80473B0C:
	.incbin "baserom.dol", 0x46FC0C, 0xD8
.global lbl_80473BE4
lbl_80473BE4:
	.incbin "baserom.dol", 0x46FCE4, 0xD8
.global lbl_80473CBC
lbl_80473CBC:
	.incbin "baserom.dol", 0x46FDBC, 0x60
.global lbl_80473D1C
lbl_80473D1C:
	.incbin "baserom.dol", 0x46FE1C, 0x7C
.global lbl_80473D98
lbl_80473D98:
	.incbin "baserom.dol", 0x46FE98, 0x18
.global lbl_80473DB0
lbl_80473DB0:
	.incbin "baserom.dol", 0x46FEB0, 0x18
.global lbl_80473DC8
lbl_80473DC8:
	.incbin "baserom.dol", 0x46FEC8, 0x48
.global lbl_80473E10
lbl_80473E10:
	.incbin "baserom.dol", 0x46FF10, 0x30
.global lbl_80473E40
lbl_80473E40:
	.incbin "baserom.dol", 0x46FF40, 0x20
.global lbl_80473E60
lbl_80473E60:
	.incbin "baserom.dol", 0x46FF60, 0x1C
.global lbl_80473E7C
lbl_80473E7C:
	.incbin "baserom.dol", 0x46FF7C, 0x1C
.global lbl_80473E98
lbl_80473E98:
	.incbin "baserom.dol", 0x46FF98, 0x34
.global lbl_80473ECC
lbl_80473ECC:
	.incbin "baserom.dol", 0x46FFCC, 0x34
.global lbl_80473F00
lbl_80473F00:
	.incbin "baserom.dol", 0x470000, 0x10
.global lbl_80473F10
lbl_80473F10:
	.incbin "baserom.dol", 0x470010, 0x1C
.global lbl_80473F2C
lbl_80473F2C:
	.incbin "baserom.dol", 0x47002C, 0x1C
.global lbl_80473F48
lbl_80473F48:
	.incbin "baserom.dol", 0x470048, 0x18
.global lbl_80473F60
lbl_80473F60:
	.incbin "baserom.dol", 0x470060, 0x38
.global lbl_80473F98
lbl_80473F98:
	.incbin "baserom.dol", 0x470098, 0x38
.global lbl_80473FD0
lbl_80473FD0:
	.incbin "baserom.dol", 0x4700D0, 0x38
.global lbl_80474008
lbl_80474008:
	.incbin "baserom.dol", 0x470108, 0x38
.global lbl_80474040
lbl_80474040:
	.incbin "baserom.dol", 0x470140, 0x64
.global lbl_804740A4
lbl_804740A4:
	.incbin "baserom.dol", 0x4701A4, 0x1C
.global lbl_804740C0
lbl_804740C0:
	.incbin "baserom.dol", 0x4701C0, 0x1C
.global lbl_804740DC
lbl_804740DC:
	.incbin "baserom.dol", 0x4701DC, 0x1C
.global lbl_804740F8
lbl_804740F8:
	.incbin "baserom.dol", 0x4701F8, 0x1C
.global lbl_80474114
lbl_80474114:
	.incbin "baserom.dol", 0x470214, 0x114
.global lbl_80474228
lbl_80474228:
	.incbin "baserom.dol", 0x470328, 0x9C
.global lbl_804742C4
lbl_804742C4:
	.incbin "baserom.dol", 0x4703C4, 0xF4
.global lbl_804743B8
lbl_804743B8:
	.incbin "baserom.dol", 0x4704B8, 0xB0
.global lbl_80474468
lbl_80474468:
	.incbin "baserom.dol", 0x470568, 0x40
.global lbl_804744A8
lbl_804744A8:
	.incbin "baserom.dol", 0x4705A8, 0x21
.global lbl_804744C9
lbl_804744C9:
	.incbin "baserom.dol", 0x4705C9, 0x13
.global lbl_804744DC
lbl_804744DC:
	.incbin "baserom.dol", 0x4705DC, 0x30
.global lbl_8047450C
lbl_8047450C:
	.incbin "baserom.dol", 0x47060C, 0x2CC
.global lbl_804747D8
lbl_804747D8:
	.incbin "baserom.dol", 0x4708D8, 0x30
.global lbl_80474808
lbl_80474808:
	.incbin "baserom.dol", 0x470908, 0x1C
.global lbl_80474824
lbl_80474824:
	.incbin "baserom.dol", 0x470924, 0x2CC
.global lbl_80474AF0
lbl_80474AF0:
	.incbin "baserom.dol", 0x470BF0, 0x1B
.global lbl_80474B0B
lbl_80474B0B:
	.incbin "baserom.dol", 0x470C0B, 0xD
.global lbl_80474B18
lbl_80474B18:
	.incbin "baserom.dol", 0x470C18, 0x84
.global lbl_80474B9C
lbl_80474B9C:
	.incbin "baserom.dol", 0x470C9C, 0x20
.global lbl_80474BBC
lbl_80474BBC:
	.incbin "baserom.dol", 0x470CBC, 0x20
.global lbl_80474BDC
lbl_80474BDC:
	.incbin "baserom.dol", 0x470CDC, 0x1C
.global lbl_80474BF8
lbl_80474BF8:
	.incbin "baserom.dol", 0x470CF8, 0x40
.global lbl_80474C38
lbl_80474C38:
	.incbin "baserom.dol", 0x470D38, 0x1C
.global lbl_80474C54
lbl_80474C54:
	.incbin "baserom.dol", 0x470D54, 0x84
.global lbl_80474CD8
lbl_80474CD8:
	.incbin "baserom.dol", 0x470DD8, 0x30
.global lbl_80474D08
lbl_80474D08:
	.incbin "baserom.dol", 0x470E08, 0x29
.global lbl_80474D31
lbl_80474D31:
	.incbin "baserom.dol", 0x470E31, 0x25
.global lbl_80474D56
lbl_80474D56:
	.incbin "baserom.dol", 0x470E56, 0x1B
.global lbl_80474D71
lbl_80474D71:
	.incbin "baserom.dol", 0x470E71, 0x27
.global lbl_80474D98
lbl_80474D98:
	.incbin "baserom.dol", 0x470E98, 0x27
.global lbl_80474DBF
lbl_80474DBF:
	.incbin "baserom.dol", 0x470EBF, 0x39
.global lbl_80474DF8
lbl_80474DF8:
	.incbin "baserom.dol", 0x470EF8, 0x18
.global lbl_80474E10
lbl_80474E10:
	.incbin "baserom.dol", 0x470F10, 0x30
.global lbl_80474E40
lbl_80474E40:
	.incbin "baserom.dol", 0x470F40, 0x21
.global lbl_80474E61
lbl_80474E61:
	.incbin "baserom.dol", 0x470F61, 0x1F
.global lbl_80474E80
lbl_80474E80:
	.incbin "baserom.dol", 0x470F80, 0x80
