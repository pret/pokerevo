.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global gsXmlWriterGetData
gsXmlWriterGetData:
/* 8033CDDC 00338A3C  80 63 00 00 */	lwz r3, 0(r3)
/* 8033CDE0 00338A40  4E 80 00 20 */	blr

.global gsXmlWriterGetDataLength
gsXmlWriterGetDataLength:
/* 8033CDE4 00338A44  80 63 00 04 */	lwz r3, 4(r3)
/* 8033CDE8 00338A48  4E 80 00 20 */	blr
