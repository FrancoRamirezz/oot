glabel func_809A35DC
/* 002AC 809A35DC 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 002B0 809A35E0 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 002B4 809A35E4 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 002B8 809A35E8 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 002BC 809A35EC AFA40098 */  sw      $a0, 0x0098($sp)           
/* 002C0 809A35F0 AFA5009C */  sw      $a1, 0x009C($sp)           
/* 002C4 809A35F4 84CF0058 */  lh      $t7, 0x0058($a2)           ## 00000058
/* 002C8 809A35F8 3C01809A */  lui     $at, %hi(D_809A3C10)       ## $at = 809A0000
/* 002CC 809A35FC C4283C10 */  lwc1    $f8, %lo(D_809A3C10)($at)  
/* 002D0 809A3600 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 002D4 809A3604 8C910000 */  lw      $s1, 0x0000($a0)           ## 00000000
/* 002D8 809A3608 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 002DC 809A360C 468021A0 */  cvt.s.w $f6, $f4                   
/* 002E0 809A3610 0304C021 */  addu    $t8, $t8, $a0              
/* 002E4 809A3614 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 002E8 809A3618 3C06809A */  lui     $a2, %hi(D_809A3BD4)       ## $a2 = 809A0000
/* 002EC 809A361C 24C63BD4 */  addiu   $a2, $a2, %lo(D_809A3BD4)  ## $a2 = 809A3BD4
/* 002F0 809A3620 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFCC
/* 002F4 809A3624 46083282 */  mul.s   $f10, $f6, $f8             
/* 002F8 809A3628 240700EB */  addiu   $a3, $zero, 0x00EB         ## $a3 = 000000EB
/* 002FC 809A362C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00300 809A3630 E7AA008C */  swc1    $f10, 0x008C($sp)          
/* 00304 809A3634 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00011DE4
/* 00308 809A3638 0C031AB1 */  jal     func_800C6AC4              
/* 0030C 809A363C AFB8007C */  sw      $t8, 0x007C($sp)           
/* 00310 809A3640 86190056 */  lh      $t9, 0x0056($s0)           ## 00000056
/* 00314 809A3644 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00318 809A3648 5320000B */  beql    $t9, $zero, .L809A3678     
/* 0031C 809A364C 86020040 */  lh      $v0, 0x0040($s0)           ## 00000040
/* 00320 809A3650 8609005C */  lh      $t1, 0x005C($s0)           ## 0000005C
/* 00324 809A3654 00095080 */  sll     $t2, $t1,  2               
/* 00328 809A3658 01495023 */  subu    $t2, $t2, $t1              
/* 0032C 809A365C 000A5080 */  sll     $t2, $t2,  2               
/* 00330 809A3660 448A8000 */  mtc1    $t2, $f16                  ## $f16 = 0.00
/* 00334 809A3664 00000000 */  nop
/* 00338 809A3668 468084A0 */  cvt.s.w $f18, $f16                 
/* 0033C 809A366C 10000018 */  beq     $zero, $zero, .L809A36D0   
/* 00340 809A3670 E7B20078 */  swc1    $f18, 0x0078($sp)          
/* 00344 809A3674 86020040 */  lh      $v0, 0x0040($s0)           ## 00000040
.L809A3678:
/* 00348 809A3678 58400012 */  blezl   $v0, .L809A36C4            
/* 0034C 809A367C 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00350 809A3680 8603005C */  lh      $v1, 0x005C($s0)           ## 0000005C
/* 00354 809A3684 00025843 */  sra     $t3, $v0,  1               
/* 00358 809A3688 006B082A */  slt     $at, $v1, $t3              
/* 0035C 809A368C 5020000D */  beql    $at, $zero, .L809A36C4     
/* 00360 809A3690 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00364 809A3694 44832000 */  mtc1    $v1, $f4                   ## $f4 = 0.00
/* 00368 809A3698 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 0036C 809A369C 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00370 809A36A0 46802020 */  cvt.s.w $f0, $f4                   
/* 00374 809A36A4 44818000 */  mtc1    $at, $f16                  ## $f16 = 255.00
/* 00378 809A36A8 468042A0 */  cvt.s.w $f10, $f8                  
/* 0037C 809A36AC 46000180 */  add.s   $f6, $f0, $f0              
/* 00380 809A36B0 460A3083 */  div.s   $f2, $f6, $f10             
/* 00384 809A36B4 46101082 */  mul.s   $f2, $f2, $f16             
/* 00388 809A36B8 10000005 */  beq     $zero, $zero, .L809A36D0   
/* 0038C 809A36BC E7A20078 */  swc1    $f2, 0x0078($sp)           
/* 00390 809A36C0 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
.L809A36C4:
/* 00394 809A36C4 44819000 */  mtc1    $at, $f18                  ## $f18 = 255.00
/* 00398 809A36C8 00000000 */  nop
/* 0039C 809A36CC E7B20078 */  swc1    $f18, 0x0078($sp)          
.L809A36D0:
/* 003A0 809A36D0 C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 00000000
/* 003A4 809A36D4 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 00000004
/* 003A8 809A36D8 0C034261 */  jal     Matrix_Translate              
/* 003AC 809A36DC 8E060008 */  lw      $a2, 0x0008($s0)           ## 00000008
/* 003B0 809A36E0 C7AC008C */  lwc1    $f12, 0x008C($sp)          
/* 003B4 809A36E4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 003B8 809A36E8 44066000 */  mfc1    $a2, $f12                  
/* 003BC 809A36EC 0C0342A3 */  jal     Matrix_Scale              
/* 003C0 809A36F0 46006386 */  mov.s   $f14, $f12                 
/* 003C4 809A36F4 860C0042 */  lh      $t4, 0x0042($s0)           ## 00000042
/* 003C8 809A36F8 3C01809A */  lui     $at, %hi(D_809A3C14)       ## $at = 809A0000
/* 003CC 809A36FC C4263C14 */  lwc1    $f6, %lo(D_809A3C14)($at)  
/* 003D0 809A3700 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 003D4 809A3704 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 003D8 809A3708 46802220 */  cvt.s.w $f8, $f4                   
/* 003DC 809A370C 46064302 */  mul.s   $f12, $f8, $f6             
/* 003E0 809A3710 0C034348 */  jal     Matrix_RotateY              
/* 003E4 809A3714 00000000 */  nop
/* 003E8 809A3718 860D0044 */  lh      $t5, 0x0044($s0)           ## 00000044
/* 003EC 809A371C 3C01809A */  lui     $at, %hi(D_809A3C18)       ## $at = 809A0000
/* 003F0 809A3720 C4323C18 */  lwc1    $f18, %lo(D_809A3C18)($at) 
/* 003F4 809A3724 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 003F8 809A3728 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 003FC 809A372C 46805420 */  cvt.s.w $f16, $f10                 
/* 00400 809A3730 46128302 */  mul.s   $f12, $f16, $f18           
/* 00404 809A3734 0C0342DC */  jal     Matrix_RotateX              
/* 00408 809A3738 00000000 */  nop
/* 0040C 809A373C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00410 809A3740 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 00414 809A3744 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 00418 809A3748 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0041C 809A374C AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 00420 809A3750 3C05809A */  lui     $a1, %hi(D_809A3BE8)       ## $a1 = 809A0000
/* 00424 809A3754 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00428 809A3758 24A53BE8 */  addiu   $a1, $a1, %lo(D_809A3BE8)  ## $a1 = 809A3BE8
/* 0042C 809A375C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00430 809A3760 24060105 */  addiu   $a2, $zero, 0x0105         ## $a2 = 00000105
/* 00434 809A3764 0C0346A2 */  jal     Matrix_NewMtx              
/* 00438 809A3768 AFA20060 */  sw      $v0, 0x0060($sp)           
/* 0043C 809A376C 8FA30060 */  lw      $v1, 0x0060($sp)           
/* 00440 809A3770 3C01809A */  lui     $at, %hi(D_809A3C1C)       ## $at = 809A0000
/* 00444 809A3774 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00448 809A3778 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0044C 809A377C C4203C1C */  lwc1    $f0, %lo(D_809A3C1C)($at)  
/* 00450 809A3780 8FB80098 */  lw      $t8, 0x0098($sp)           
/* 00454 809A3784 E7A40084 */  swc1    $f4, 0x0084($sp)           
/* 00458 809A3788 E7A00080 */  swc1    $f0, 0x0080($sp)           
/* 0045C 809A378C E7A00088 */  swc1    $f0, 0x0088($sp)           
/* 00460 809A3790 0C024F61 */  jal     func_80093D84              
/* 00464 809A3794 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 00468 809A3798 8FA20098 */  lw      $v0, 0x0098($sp)           
/* 0046C 809A379C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00470 809A37A0 27A60080 */  addiu   $a2, $sp, 0x0080           ## $a2 = FFFFFFE8
/* 00474 809A37A4 244500E0 */  addiu   $a1, $v0, 0x00E0           ## $a1 = 000000E0
/* 00478 809A37A8 0C00BAD1 */  jal     func_8002EB44              
/* 0047C 809A37AC 8C470000 */  lw      $a3, 0x0000($v0)           ## 00000000
/* 00480 809A37B0 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00484 809A37B4 8FA8007C */  lw      $t0, 0x007C($sp)           
/* 00488 809A37B8 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 0048C 809A37BC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00490 809A37C0 AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 00494 809A37C4 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 00498 809A37C8 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 0049C 809A37CC 8FAA0098 */  lw      $t2, 0x0098($sp)           
/* 004A0 809A37D0 00087840 */  sll     $t7, $t0,  1               
/* 004A4 809A37D4 31EE00FF */  andi    $t6, $t7, 0x00FF           ## $t6 = 00000000
/* 004A8 809A37D8 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 004AC 809A37DC 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 004B0 809A37E0 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 004B4 809A37E4 240C0010 */  addiu   $t4, $zero, 0x0010         ## $t4 = 00000010
/* 004B8 809A37E8 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 004BC 809A37EC 24180040 */  addiu   $t8, $zero, 0x0040         ## $t8 = 00000040
/* 004C0 809A37F0 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 004C4 809A37F4 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 004C8 809A37F8 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 004CC 809A37FC AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 004D0 809A3800 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 004D4 809A3804 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 004D8 809A3808 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 004DC 809A380C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 004E0 809A3810 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 004E4 809A3814 AFA2005C */  sw      $v0, 0x005C($sp)           
/* 004E8 809A3818 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 004EC 809A381C 310700FF */  andi    $a3, $t0, 0x00FF           ## $a3 = 00000000
/* 004F0 809A3820 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 004F4 809A3824 3C0AFA00 */  lui     $t2, 0xFA00                ## $t2 = FA000000
/* 004F8 809A3828 354A0080 */  ori     $t2, $t2, 0x0080           ## $t2 = FA000080
/* 004FC 809A382C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00500 809A3830 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00504 809A3834 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFCC
/* 00508 809A3838 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0050C 809A383C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00510 809A3840 AE2902D0 */  sw      $t1, 0x02D0($s1)           ## 000002D0
/* 00514 809A3844 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00518 809A3848 860F0048 */  lh      $t7, 0x0048($s0)           ## 00000048
/* 0051C 809A384C 860B004E */  lh      $t3, 0x004E($s0)           ## 0000004E
/* 00520 809A3850 8619004A */  lh      $t9, 0x004A($s0)           ## 0000004A
/* 00524 809A3854 860D004C */  lh      $t5, 0x004C($s0)           ## 0000004C
/* 00528 809A3858 000F7600 */  sll     $t6, $t7, 24               
/* 0052C 809A385C 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 00530 809A3860 018EC025 */  or      $t8, $t4, $t6              ## $t8 = 00000000
/* 00534 809A3864 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 00000000
/* 00538 809A3868 00095400 */  sll     $t2, $t1, 16               
/* 0053C 809A386C 31AF00FF */  andi    $t7, $t5, 0x00FF           ## $t7 = 00000000
/* 00540 809A3870 000F6200 */  sll     $t4, $t7,  8               
/* 00544 809A3874 030A5825 */  or      $t3, $t8, $t2              ## $t3 = FA000080
/* 00548 809A3878 016C7025 */  or      $t6, $t3, $t4              ## $t6 = FA000080
/* 0054C 809A387C AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00550 809A3880 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 00554 809A3884 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 00558 809A3888 444FF800 */  cfc1    $t7, $31
/* 0055C 809A388C 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 00560 809A3890 AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 00564 809A3894 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 00568 809A3898 860B0050 */  lh      $t3, 0x0050($s0)           ## 00000050
/* 0056C 809A389C C7A80078 */  lwc1    $f8, 0x0078($sp)           
/* 00570 809A38A0 86180054 */  lh      $t8, 0x0054($s0)           ## 00000054
/* 00574 809A38A4 000B6600 */  sll     $t4, $t3, 24               
/* 00578 809A38A8 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 0057C 809A38AC 44CBF800 */  ctc1    $t3, $31
/* 00580 809A38B0 86190052 */  lh      $t9, 0x0052($s0)           ## 00000052
/* 00584 809A38B4 330A00FF */  andi    $t2, $t8, 0x00FF           ## $t2 = 00000000
/* 00588 809A38B8 460041A4 */  cvt.w.s $f6, $f8                   
/* 0058C 809A38BC 000A6A00 */  sll     $t5, $t2,  8               
/* 00590 809A38C0 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 00000008
/* 00594 809A38C4 0009C400 */  sll     $t8, $t1, 16               
/* 00598 809A38C8 444BF800 */  cfc1    $t3, $31
/* 0059C 809A38CC 01AC7025 */  or      $t6, $t5, $t4              ## $t6 = 00000000
/* 005A0 809A38D0 01D85025 */  or      $t2, $t6, $t8              ## $t2 = 00000000
/* 005A4 809A38D4 316B0078 */  andi    $t3, $t3, 0x0078           ## $t3 = 00000000
/* 005A8 809A38D8 11600013 */  beq     $t3, $zero, .L809A3928     
/* 005AC 809A38DC 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 005B0 809A38E0 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 005B4 809A38E4 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 005B8 809A38E8 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 005BC 809A38EC 46064181 */  sub.s   $f6, $f8, $f6              
/* 005C0 809A38F0 44CBF800 */  ctc1    $t3, $31
/* 005C4 809A38F4 00000000 */  nop
/* 005C8 809A38F8 460031A4 */  cvt.w.s $f6, $f6                   
/* 005CC 809A38FC 444BF800 */  cfc1    $t3, $31
/* 005D0 809A3900 00000000 */  nop
/* 005D4 809A3904 316B0078 */  andi    $t3, $t3, 0x0078           ## $t3 = 00000000
/* 005D8 809A3908 15600005 */  bne     $t3, $zero, .L809A3920     
/* 005DC 809A390C 00000000 */  nop
/* 005E0 809A3910 440B3000 */  mfc1    $t3, $f6                   
/* 005E4 809A3914 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 005E8 809A3918 10000007 */  beq     $zero, $zero, .L809A3938   
/* 005EC 809A391C 01615825 */  or      $t3, $t3, $at              ## $t3 = 80000000
.L809A3920:
/* 005F0 809A3920 10000005 */  beq     $zero, $zero, .L809A3938   
/* 005F4 809A3924 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
.L809A3928:
/* 005F8 809A3928 440B3000 */  mfc1    $t3, $f6                   
/* 005FC 809A392C 00000000 */  nop
/* 00600 809A3930 0560FFFB */  bltz    $t3, .L809A3920            
/* 00604 809A3934 00000000 */  nop
.L809A3938:
/* 00608 809A3938 316D00FF */  andi    $t5, $t3, 0x00FF           ## $t5 = 000000FF
/* 0060C 809A393C 014D6025 */  or      $t4, $t2, $t5              ## $t4 = 000000FF
/* 00610 809A3940 AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
/* 00614 809A3944 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00618 809A3948 3C0E0403 */  lui     $t6, 0x0403                ## $t6 = 04030000
/* 0061C 809A394C 44CFF800 */  ctc1    $t7, $31
/* 00620 809A3950 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00624 809A3954 AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 00628 809A3958 25CE3818 */  addiu   $t6, $t6, 0x3818           ## $t6 = 04033818
/* 0062C 809A395C 3C06809A */  lui     $a2, %hi(D_809A3BFC)       ## $a2 = 809A0000
/* 00630 809A3960 24C63BFC */  addiu   $a2, $a2, %lo(D_809A3BFC)  ## $a2 = 809A3BFC
/* 00634 809A3964 24070126 */  addiu   $a3, $zero, 0x0126         ## $a3 = 00000126
/* 00638 809A3968 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 0063C 809A396C 0C031AD5 */  jal     func_800C6B54              
/* 00640 809A3970 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00644 809A3974 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00648 809A3978 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 0064C 809A397C 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00650 809A3980 03E00008 */  jr      $ra                        
/* 00654 809A3984 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000


