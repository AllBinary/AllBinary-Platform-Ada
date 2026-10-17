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


package body org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package is

   procedure Initialize_Fields (This : in out TransformInfoHttpStoreNoManipulation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoHttpStoreNoManipulation'Class; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) is
      propertiesHashMap : HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        TransformInfoHttpStore_Package.Initialize (This, propertiesHashMap, pageContext);
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return TransformInfoHttpStoreNoManipulation_Access is
      This : constant TransformInfoHttpStoreNoManipulation_Access := new TransformInfoHttpStoreNoManipulation;
   begin
      TransformInfoHttpStoreNoManipulation_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setObjectConfigFile (This : in out TransformInfoHttpStoreNoManipulation; value : Unbounded_String) is
   begin
        This.setObjectConfigFileName (value);
        This.setObjectConfigInterface (TransformInfoObjectConfigNoManipulationFactory_Package.getInstance.getInstance (TransformInfoHttpStoreNoManipulation_Access'(This'Unchecked_Access), This.getObjectConfigFilePath));
   end setObjectConfigFile;

   --  throws Exception
   procedure setObjectConfig (This : in out TransformInfoHttpStoreNoManipulation; value : Unbounded_String) is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Should not set from config")));
   end setObjectConfig;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package;


