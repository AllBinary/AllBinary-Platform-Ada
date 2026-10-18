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


with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package;

package body org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package is

   package TransformInfoObjectConfigNoManipulationFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package;
   procedure Initialize_Fields (This : in out TransformInfoHttpStoreNoManipulation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoHttpStoreNoManipulation'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        TransformInfoHttpStore_Package.Initialize (This, propertiesHashMap, pageContext);
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttpStoreNoManipulation_Access is
      This : constant TransformInfoHttpStoreNoManipulation_Access := new TransformInfoHttpStoreNoManipulation;
   begin
      TransformInfoHttpStoreNoManipulation_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setObjectConfigFile (This : in out TransformInfoHttpStoreNoManipulation; value : Unbounded_String) is
   begin
        TransformInfoHttpStoreNoManipulation'Class (This).setObjectConfigFileName (value);
        TransformInfoHttpStoreNoManipulation'Class (This).setObjectConfigInterface (TransformInfoObjectConfigNoManipulationFactory_Package.getInstance.getInstance (TransformInfoHttpStoreNoManipulation_Access'(This'Unchecked_Access), TransformInfoHttpStoreNoManipulation'Class (This).getObjectConfigFilePath));
   end setObjectConfigFile;

   --  throws Exception
   procedure setObjectConfig (This : in out TransformInfoHttpStoreNoManipulation; value : Unbounded_String) is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Should not set from config")));
   end setObjectConfig;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package;


