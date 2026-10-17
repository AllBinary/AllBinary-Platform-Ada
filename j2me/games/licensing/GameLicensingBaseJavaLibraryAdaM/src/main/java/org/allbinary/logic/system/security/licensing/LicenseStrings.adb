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


package body org.allbinary.logic.system.security.licensing.LicenseStrings_Package is

   procedure Initialize_Fields (This : in out LicenseStrings'Class) is
   begin
      null;
      This.LOCKED := To_Unbounded_String ("Demo Locked Feature");
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseStrings_Access is
      This : constant LicenseStrings_Access := new LicenseStrings;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return LicenseStrings_Access is
   begin
        return LicenseStrings_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant LicenseStrings_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := LicenseStrings_Package.Create;

end org.allbinary.logic.system.security.licensing.LicenseStrings_Package;


