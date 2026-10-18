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



package body org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package is

   procedure Initialize_Fields (This : in out AuthorizeNetAimData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AuthorizeNetAimData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AuthorizeNetAimData_Access is
      This : constant AuthorizeNetAimData_Access := new AuthorizeNetAimData;
   begin
      AuthorizeNetAimData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   X_DELIM_DATA := To_Unbounded_String ("x_delim_data");
   X_DELIM_CHAR := To_Unbounded_String ("x_delim_char");
   X_ENCAP_CHAR := To_Unbounded_String ("x_encap_char");
   X_AUTHENTICATION_INDICATOR := To_Unbounded_String ("x_authentication_indicator");
   X_CARDHOLDER_AUTHENTICATION_VALUE := To_Unbounded_String ("x_cardholder_authentication_value");
   X_DRIVERS_LICENSE_NUM := To_Unbounded_String ("x_drivers_license_num");
   X_DRIVERS_LICENSE_STATE := To_Unbounded_String ("x_drivers_license_state");
   X_DRIVERS_LICENSE_DOB := To_Unbounded_String ("x_drivers_license_dob");

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package;


