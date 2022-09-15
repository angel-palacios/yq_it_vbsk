CLASS yvom_cl_vbsk_pop DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS YVOM_CL_VBSK_POP IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: it_vbsk TYPE STANDARD TABLE OF yvbsk,
          st_vbsk TYPE yvbsk.
    DO 15 TIMES.
      st_vbsk-sammg = cl_abap_context_info=>get_system_date(  ) && cl_abap_context_info=>get_system_time(  ).
      st_vbsk-smart = COND #( WHEN st_vbsk-sammg+13(1) EQ '1' THEN 'L'
                              WHEN st_vbsk-sammg+13(1) EQ '2' THEN 'M'
                              WHEN st_vbsk-sammg+13(1) EQ '3' THEN 'P'
                              WHEN st_vbsk-sammg+13(1) EQ '4' THEN 'S'
                              WHEN st_vbsk-sammg+13(1) EQ '5' THEN 'V'
                              WHEN st_vbsk-sammg+13(1) EQ '6' THEN 'L'
                              WHEN st_vbsk-sammg+13(1) EQ '7' THEN 'M'
                              WHEN st_vbsk-sammg+13(1) EQ '8' THEN 'P'
                              WHEN st_vbsk-sammg+13(1) EQ '9' THEN 'S'
                              WHEN st_vbsk-sammg+13(1) EQ '0' THEN 'V' ).
      st_vbsk-yerdat = cl_abap_context_info=>get_system_date(  ).
      st_vbsk-yernam = COND #( WHEN st_vbsk-sammg+13(1) EQ '1' THEN 'ANGELP'
                              WHEN st_vbsk-sammg+13(1) EQ '2' THEN 'SARAM'
                              WHEN st_vbsk-sammg+13(1) EQ '3' THEN 'SERGIOR'
                              WHEN st_vbsk-sammg+13(1) EQ '4' THEN 'FCASARR'
                              WHEN st_vbsk-sammg+13(1) EQ '5' THEN 'IANGELES'
                              WHEN st_vbsk-sammg+13(1) EQ '6' THEN 'ANGELP'
                              WHEN st_vbsk-sammg+13(1) EQ '7' THEN 'SARAM'
                              WHEN st_vbsk-sammg+13(1) EQ '8' THEN 'SERGIOR'
                              WHEN st_vbsk-sammg+13(1) EQ '9' THEN 'FCASARR'
                              WHEN st_vbsk-sammg+13(1) EQ '0' THEN 'IANGELES' ).
      WAIT UP TO 1 SECONDS.
      APPEND st_vbsk TO it_vbsk.
    ENDDO.
    INSERT yvbsk FROM TABLE @it_vbsk.
    IF sy-subrc EQ 0.
      out->write( it_vbsk ).
    ELSE.
      out->write( 'Table could not be updated' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
