"! <p class="shorttext synchronized" lang="en">Hello world class</p>
CLASS zcl_scc_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    "!  <p class="shorttext synchronized" lang="en">Get hello world</p>
    "! @parameter result | <p class="shorttext synchronized" lang="en">Hello world</p>
    METHODS get_hello_world
      RETURNING
        VALUE(result) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_scc_hello_world IMPLEMENTATION.


  METHOD get_hello_world.
    result = 'Hello world!'.
  ENDMETHOD.
ENDCLASS.
