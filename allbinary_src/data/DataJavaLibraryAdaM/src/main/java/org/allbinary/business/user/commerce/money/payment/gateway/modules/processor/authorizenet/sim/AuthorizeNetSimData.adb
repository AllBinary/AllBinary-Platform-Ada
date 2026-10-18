--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify



package body org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package is

   procedure Initialize_Fields (This : in out AuthorizeNetSimData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AuthorizeNetSimData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AuthorizeNetSimData_Access is
      This : constant AuthorizeNetSimData_Access := new AuthorizeNetSimData;
   begin
      AuthorizeNetSimData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   X_FP_HASH := To_Unbounded_String ("x_fp_hash");
   X_FP_SEQUENCE := To_Unbounded_String ("x_fp_sequence");
   X_FP_TIMESTAMP := To_Unbounded_String ("x_fp_timestamp");
   X_SHOW_FORM := To_Unbounded_String ("x_show_form");
   X_HEADER_HTML_PAYMENT_FORM := To_Unbounded_String ("x_header_html_payment_form");
   X_FOOTER_HTML_PAYMENT_FORM := To_Unbounded_String ("x_footer_html_payment_form");
   X_HEADER_HTML_RECEIPT := To_Unbounded_String ("x_header_html_receipt");
   X_FOOTER_HTML_RECEIPT := To_Unbounded_String ("x_footer_html_receipt");
   X_RECEIPT_LINK_TEXT := To_Unbounded_String ("x_receipt_link_text");
   X_RECEIPT_LINK_URL := To_Unbounded_String ("x_receipt_link_url");
   X_LOGO_URL := To_Unbounded_String ("x_logo_url");
   X_BACKGROUND_URL := To_Unbounded_String ("x_background_url");
   X_COLOR_BACKGROUND := To_Unbounded_String ("x_color_background");
   X_COLOR_LINK := To_Unbounded_String ("x_color_link");
   X_COLOR_TEXT := To_Unbounded_String ("x_color_text");
   X_RELAY_URL := To_Unbounded_String ("x_relay_url");

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package;


