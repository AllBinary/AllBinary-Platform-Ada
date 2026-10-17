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


package body org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package is

   procedure Initialize_Fields (This : in out TransformInfoEntityBuilder'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TransformInfoEntityBuilder'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TransformInfoEntityBuilder_Access is
      This : constant TransformInfoEntityBuilder_Access := new TransformInfoEntityBuilder;
   begin
      TransformInfoEntityBuilder_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TransformInfoEntity_Access is
   begin
        return TransformInfoEntityFactory_Package.getInstance (TransformInfoObjectConfigGeneratorFactory_Package.getInstance, TransformInfoObjectConfigAndManipulatorFactory_Package.getInstance, TransformInfoHttpStoreFactory_Package.getInstance);
   end getInstance;

end org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;


