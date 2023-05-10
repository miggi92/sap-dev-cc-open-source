*"* use this source file for your ABAP unit test classes
CLASS ltcl_hello_world DEFINITION DEFERRED.

CLASS ltcl_hello_world DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.

    DATA mo_instance TYPE REF TO zcl_scc_hello_world.
    METHODS:
      setup,
      teardown,
      test_get_hello_world FOR TESTING RAISING cx_static_check.
ENDCLASS.


CLASS ltcl_hello_world IMPLEMENTATION.

  METHOD setup.
    " init instance here
    CREATE OBJECT mo_instance.
  ENDMETHOD.

  METHOD teardown.
    " destroy instance here
    CLEAR: mo_instance.
  ENDMETHOD.

  METHOD test_get_hello_world.
    cl_abap_unit_assert=>assert_equals(
      act                  = mo_instance->get_hello_world( )
      exp                  = 'Hello world!' ).
  ENDMETHOD.

ENDCLASS.
