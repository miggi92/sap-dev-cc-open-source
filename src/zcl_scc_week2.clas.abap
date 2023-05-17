"! <p class="shorttext synchronized" lang="en">Week 2</p>
CLASS zcl_scc_week2 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES z2ui5_if_app .

    DATA:
      mv_user TYPE string,
      mv_date TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_scc_week2 IMPLEMENTATION.
  METHOD z2ui5_if_app~main.

    "event handling
    IF client->get( )-event = 'BUTTON_POST'.
      client->popup_message_toast( |App executed on  { mv_date } by { mv_user }| ).
    ENDIF.

    "view rendering
    client->set_next( VALUE #( xml_main = z2ui5_cl_xml_view=>factory(
        )->page( title = 'abap2UI5 - Week 2 SAP Open Source Challenge'
            )->simple_form( title = 'Form Title'
                            editable = abap_true
                )->content( 'form'
                    )->title( 'Input'
                    )->label( 'User'
                    )->input( client->_bind( mv_user )
                    )->label( 'Date'
                    )->date_picker( client->_bind( mv_date )
                    )->button( text  = 'post'
                               press = client->_event( 'BUTTON_POST' )
         )->get_root( )->xml_get( ) ) ).
  ENDMETHOD.

ENDCLASS.