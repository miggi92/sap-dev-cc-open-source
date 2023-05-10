"! <p class="shorttext synchronized" lang="en">Hello world class</p>
CLASS zcl_scc_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  "!  <p class="shorttext synchronized" lang="en">Write hello world</p>
    METHODS write_hello_world.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_scc_hello_world IMPLEMENTATION.
  METHOD write_hello_world.
    WRITE 'Hello world'.
  ENDMETHOD.

ENDCLASS.