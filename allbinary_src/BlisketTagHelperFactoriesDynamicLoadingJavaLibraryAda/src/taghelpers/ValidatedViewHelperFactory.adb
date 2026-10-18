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


with admin.taghelpers.HelperFactory_Package; use admin.taghelpers.HelperFactory_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body taghelpers.ValidatedViewHelperFactory_Package is

   package HelperFactory_Package renames Standard.admin.taghelpers.HelperFactory_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out ValidatedViewHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ValidatedViewHelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ValidatedViewHelperFactory_Access is
      This : constant ValidatedViewHelperFactory_Access := new ValidatedViewHelperFactory;
   begin
      ValidatedViewHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception, LicensingException
   function getInstance (This : in out ValidatedViewHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        return HelperFactory_Package.getInstance (FACTORYNAME, CLASSNAME, hashMap, pageContext);
   end getInstance;

   procedure getInstance (This : in out ValidatedViewHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant Java_Object_Access := ValidatedViewHelperFactory'Class (This).getInstance (hashMap_Param => hashMap_Param, pageContext_Param => pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("taghelpers.ValidationViewHelper");
   FACTORYNAME := To_Unbounded_String ("taghelpers.ValidationViewHelperFactory");

end taghelpers.ValidatedViewHelperFactory_Package;


