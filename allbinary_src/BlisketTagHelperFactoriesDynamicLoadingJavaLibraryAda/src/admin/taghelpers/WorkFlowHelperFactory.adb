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


with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with admin.taghelpers.HelperFactory_Package; use admin.taghelpers.HelperFactory_Package;

package body admin.taghelpers.WorkFlowHelperFactory_Package is

   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out WorkFlowHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WorkFlowHelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WorkFlowHelperFactory_Access is
      This : constant WorkFlowHelperFactory_Access := new WorkFlowHelperFactory;
   begin
      WorkFlowHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getInstance (This : in out WorkFlowHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        return HelperFactory_Package.getInstance (FACTORYNAME, CLASSNAME, hashMap, pageContext);
   end getInstance;

   procedure getInstance (This : in out WorkFlowHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant Java_Object_Access := WorkFlowHelperFactory'Class (This).getInstance (hashMap_Param => hashMap_Param, pageContext_Param => pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("admin.taghelpers.WorkFlowHelper");
   FACTORYNAME := To_Unbounded_String ("WorkFlowHelperFactory");

end admin.taghelpers.WorkFlowHelperFactory_Package;


