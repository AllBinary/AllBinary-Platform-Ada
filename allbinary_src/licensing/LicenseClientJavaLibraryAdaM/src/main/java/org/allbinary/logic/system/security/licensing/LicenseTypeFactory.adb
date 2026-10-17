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


package body org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package is

   procedure Initialize_Fields (This : in out LicenseTypeFactory'Class) is
   begin
      null;
      This.UNKNOWN := LicenseType_Package.Create (CommonStrings_Package.getInstance.UNKNOWN);
      This.DEMO := LicenseType_Package.Create (To_Unbounded_String ("Demo"));
      This.NORMAL := LicenseType_Package.Create (To_Unbounded_String ("Normal"));
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseTypeFactory_Access is
      This : constant LicenseTypeFactory_Access := new LicenseTypeFactory;
   begin
      LicenseTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LicenseTypeFactory_Access is
   begin
        return LicenseTypeFactory_Package.instance;
   end getInstance;

   function getInstance (This : in out LicenseTypeFactory; name : Unbounded_String) return LicenseType_Access is
   begin
        if (This.DEMO.getName.compareTo (name)) = (0) then
            return This.DEMO;
        elsif (This.NORMAL.getName.compareTo (name)) = (0) then
            return This.NORMAL;
        end if;
        return This.UNKNOWN;
   end getInstance;

   procedure getInstance (This : in out LicenseTypeFactory; name : Unbounded_String) is
      Java_Result : constant LicenseType_Access := LicenseTypeFactory'Class (This).getInstance (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := LicenseTypeFactory_Package.Create;

end org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package;


