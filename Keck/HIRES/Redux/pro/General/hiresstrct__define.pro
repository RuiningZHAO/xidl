;+ 
; NAME:
; hiresstrct__define
;     Version 1.1
;
; PURPOSE:
;  Defines the structure which organizes the HIRES pipeline
;
; CALLING SEQUENCE:
;   
; INPUTS:
;
; RETURNS:
;
; OUTPUTS:
;
; OPTIONAL KEYWORDS:
;
; OPTIONAL OUTPUTS:
;
; COMMENTS:
;
; EXAMPLES:
;
; PROCEDURES/FUNCTIONS CALLED:
;
; REVISION HISTORY:
;   24-Jan-2005 Written by JXP
;-
;------------------------------------------------------------------------------
pro hiresstrct__define

;  This routine defines the structure for HIRES data (new CCD mosaic)
;  [v1.1]

  tmp = {hiresstrct, $
         frame: 0,   $          ; FRAME Number
         flg_anly: 0,$          ; Analysis flag 0=Don't Analyse, 2=bias sub, 4=scatt light
         chip: 0L, $            ; 1=blue; 2=green; 3=red
         exten: 0, $            ; Extension in original image
         obj_id: 0L, $          ; Obj ID
         Obj: ' ', $            ; Object Name
         type: ' ',   $         ; ObjTyp: OBJ,STD,DRK,ZRO,ARC,MSK,TWI,IFLT,TRC
         block: ' ', $          ; Blocking Filter
         decker: ' ', $         ; Decker
         cross: ' ', $          ; Cross-disperser (Blue/Red)
         XDANGL: 0.d, $         ; XDANGL
         ECHANGL: 0.d, $        ; ECHANGL
         setup: 0, $            ; Setup index
         exp: 0.d,   $          ; Exposure time
         colbin: 0L, $          ; Binning in column
         rowbin: 0L, $          ; Binning in row
         AM:   0.,   $          ; Airmass
         CCD: ' ',    $         ; CCD
         AMPMODE: ' ',    $     ; Mode of Readout: SINGLE:A, SINGLE:B, DUAL:A+B
         AMP: 0,    $           ; 1=A, 2=B
         TEL: ' ',    $         ; Telescope
         arc_xyoff: fltarr(2),$ ; Offsets for Arc IMG due to thermal expansion
         lamp: ' ', $           ; Lamp: none, ThAr1, ThAr2, quartz
         lampfil: ' ', $        ; Lamp: none, ThAr1, ThAr2, quartz
         gain: 0.,   $          ; Gain
         readno: 0., $          ; Read Noise
         date: 0.0d,  $         ; Date of Obs (MJD)
         RA: ' ',     $         ; RA
         DEC: ' ',    $         ; DEC
         Equinox: 0.,$          ; EQUINOX
         rootpth: ' ',$         ; Path of the Root
         img_root: ' ',$        ; Root name (usually in Raw directory)
         frm_nam: ' ',$         ; Frame name
         flg_ov:  0, $          ; OV FILE?  0=No, 1=Yes  
         img_ov:  ' ', $        ; Name of OV file (with directory)
         flg_final: 0, $        ; Final File? 0=No
         img_final: ' ',$       ; Name of Final img
         ystrt: 0L, $           ; Column for initiating the trace
         arc_fil: ' ', $        ; Name of the Arc image file (fits)
         arc_img: ' ', $        ; Name of the Final Arc image file (fits)
         flat_fil: ' ', $       ; Name of the Flat image file (fits)
         obj_fil: ' ' $         ; Object structure
         }

end
  
         
