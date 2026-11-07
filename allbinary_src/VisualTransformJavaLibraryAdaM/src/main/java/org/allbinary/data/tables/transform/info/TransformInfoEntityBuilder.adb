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


with org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntityFactory_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityFactory_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntity_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package is

   package TransformInfoHttpStoreFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package;
   package TransformInfoObjectConfigAndManipulatorFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
   package TransformInfoObjectConfigGeneratorFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package;
   subtype TransformInfoEntity_Access is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access;
   function "=" (Left, Right : TransformInfoEntity_Access) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References."=";
   subtype TransformInfoEntity_Access_Array is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access_Array;
   function "=" (Left, Right : TransformInfoEntity_Access_Array) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References."=";
   subtype TransformInfoEntity_Access_Array_Access is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access_Array_Access;
   function "=" (Left, Right : TransformInfoEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References."=";
   subtype TransformInfoEntity_Access_Array_Access_Array is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References."=";
   subtype TransformInfoEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References."=";
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


