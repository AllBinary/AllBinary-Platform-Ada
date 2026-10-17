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


package body org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package is

   procedure Initialize_Fields (This : in out TransformInfoHttpStoreFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return TransformInfoHttpStoreFactory_Access is
   begin
        return TransformInfoHttpStoreFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformInfoHttpStoreFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoHttpStoreFactory_Access is
      This : constant TransformInfoHttpStoreFactory_Access := new TransformInfoHttpStoreFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out TransformInfoHttpStoreFactory; databaseHashMap : HashMap_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoInterface_Access is
   begin
        return TransformInfoHttpStore_Package.Create (databaseHashMap, propertiesHashMap, pageContext);
   end getInstance;

   procedure getInstance is
      Java_Result : constant TransformInfoHttpStoreFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformInfoHttpStoreFactory; databaseHashMap : HashMap_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
      Java_Result : constant TransformInfoInterface_Access := TransformInfoHttpStoreFactory'Class (This).getInstance (databaseHashMap, propertiesHashMap, pageContext);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformInfoHttpStoreFactory_Package.Create;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package;


