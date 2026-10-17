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


package body org.allbinary.business.user.address.StreetAddressData_Package is

   procedure Initialize_Fields (This : in out StreetAddressData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StreetAddressData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StreetAddressData_Access is
      This : constant StreetAddressData_Access := new StreetAddressData;
   begin
      StreetAddressData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   MAX := 255;
   MIN := 0;
   FORM := To_Unbounded_String ("FORM");
   STATES := To_Unbounded_String ("STATES");
   NUMBEROFADDRESSES := To_Unbounded_String ("STREETADDRESS_NUMBEROFADDRESSES");
   ID := To_Unbounded_String ("STREETADDRESS_ID");
   DEFAULT := To_Unbounded_String ("STREETADDRESS_DEFAULT_ADDRESS");
   ADDRESS := To_Unbounded_String ("STREETADDRESS_ADDRESS");
   NAME := To_Unbounded_String ("STREETADDRESS_NAME");
   STREET := To_Unbounded_String ("STREETADDRESS_STREET");
   CITY := To_Unbounded_String ("STREETADDRESS_CITY");
   STATE := To_Unbounded_String ("STREETADDRESS_STATE");
   CODE := To_Unbounded_String ("STREETADDRESS_CODE");
   COUNTRY := To_Unbounded_String ("STREETADDRESS_COUNTRY");

end org.allbinary.business.user.address.StreetAddressData_Package;


