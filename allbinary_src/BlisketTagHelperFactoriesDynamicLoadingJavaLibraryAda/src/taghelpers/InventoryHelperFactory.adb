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


package body taghelpers.InventoryHelperFactory_Package is

   procedure Initialize_Fields (This : in out InventoryHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InventoryHelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InventoryHelperFactory_Access is
      This : constant InventoryHelperFactory_Access := new InventoryHelperFactory;
   begin
      InventoryHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getInstance (hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return Java_Object_Access is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        return HelperFactory_Package.getInstance (FACTORYNAME, CLASSNAME, hashMap, pageContext);
   end getInstance;

   procedure getInstance (hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) is
      Java_Result : constant Java_Object_Access := getInstance (hashMap_Param, pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("taghelpers.InventoryHelper");
   FACTORYNAME := To_Unbounded_String ("taghelpers.InventoryHelperFactory");

end taghelpers.InventoryHelperFactory_Package;


