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


package body org.allbinary.logic.system.security.licensing.LicenseType_Package is

   procedure Initialize_Fields (This : in out LicenseType'Class) is
   begin
      null;
      This.name := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out LicenseType'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.setName (name);
   end Initialize;

   function Create (name : Unbounded_String) return LicenseType_Access is
      This : constant LicenseType_Access := new LicenseType;
   begin
      Initialize (This.all, name);
      return This;
   end Create;

   procedure setName (This : in out LicenseType; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function getName (This : in out LicenseType) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure getName (This : in out LicenseType) is
      Java_Result : constant Unbounded_String := LicenseType'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

end org.allbinary.logic.system.security.licensing.LicenseType_Package;


