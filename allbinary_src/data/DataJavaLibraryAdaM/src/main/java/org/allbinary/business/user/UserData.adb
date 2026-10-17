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


package body org.allbinary.business.user.UserData_Package is

   procedure Initialize_Fields (This : in out UserData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UserData_Access is
      This : constant UserData_Access := new UserData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   MAXLEN := 250;
   NAME := To_Unbounded_String ("USER_NAME");
   USERNAME := To_Unbounded_String ("CUSTOMER_USER_NAME");
   PASSWORD := To_Unbounded_String ("CUSTOMER_PASSWORD");
   PREFIXNAME := To_Unbounded_String ("CUSTOMER_PREFIX_NAME");
   FIRSTNAME := To_Unbounded_String ("CUSTOMER_FIRST_NAME");
   LASTNAME := To_Unbounded_String ("CUSTOMER_LAST_NAME");
   MIDDLENAME := To_Unbounded_String ("CUSTOMER_MIDDLE_NAME");
   SUFFIXNAME := To_Unbounded_String ("CUSTOMER_SUFFIX_NAME");
   COMPANY := To_Unbounded_String ("CUSTOMER_COMPANY");
   POSITIONATCOMPANY := To_Unbounded_String ("CUSTOMER_POSITION_AT_COMPANY");
   MAINEMAIL := To_Unbounded_String ("CUSTOMER_MAIN_EMAIL");
   SECONDARYEMAIL := To_Unbounded_String ("CUSTOMER_SECONDARY_EMAIL");
   HOMEPHONE := To_Unbounded_String ("CUSTOMER_HOME_PHONE");
   CELLPHONE := To_Unbounded_String ("CUSTOMER_CELL_PHONE");
   WORKPHONE := To_Unbounded_String ("CUSTOMER_WORK_PHONE");
   OTHERCONTACT := To_Unbounded_String ("CUSTOMER_OTHER_CONTACT");
   ELECTRONICDEVICE := To_Unbounded_String ("CUSTOMER_ELECTRONIC_DEVICE");
   FAX := To_Unbounded_String ("CUSTOMER_FAX");
   SECRET := To_Unbounded_String ("CUSTOMER_SECRET");
   PERMISSIONS := To_Unbounded_String ("CUSTOMER_PERMISSIONS");
   CONFIGURATION := To_Unbounded_String ("CUSTOMER_CONFIGURATION");

end org.allbinary.business.user.UserData_Package;


