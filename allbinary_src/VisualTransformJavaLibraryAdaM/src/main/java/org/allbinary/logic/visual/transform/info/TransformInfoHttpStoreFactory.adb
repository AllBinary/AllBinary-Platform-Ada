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


with org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package;

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
      TransformInfoHttpStoreFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out TransformInfoHttpStoreFactory; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoInterface_Access is
      databaseHashMap : constant HashMap_Access := HashMap_Access (databaseHashMap_Param);
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        return TransformInfoInterface_Access (TransformInfoHttpStore_Package.Create (databaseHashMap, propertiesHashMap, pageContext));
   end getInstance;

   procedure getInstance (This : in out TransformInfoHttpStoreFactory; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant TransformInfoInterface_Access := TransformInfoHttpStoreFactory'Class (This).getInstance (databaseHashMap_Param, propertiesHashMap_Param, pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformInfoHttpStoreFactory_Package.Create;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package;


