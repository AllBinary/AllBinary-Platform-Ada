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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.data.tables.transform.info.TransformInfoEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out TransformInfoEntityFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoEntityFactory_Access is
      This : constant TransformInfoEntityFactory_Access := new TransformInfoEntityFactory;
   begin
      TransformInfoEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (transformInfoObjectConfigGeneratorFactoryInterface_Param : access TransformInfoObjectConfigGeneratorFactoryInterface_Package.TransformInfoObjectConfigGeneratorFactoryInterface'Class; transformInfoObjectConfigAndManipulatorFactoryInterface_Param : access TransformInfoObjectConfigAndManipulatorFactoryBase_Package.TransformInfoObjectConfigAndManipulatorFactoryBase'Class; transformInfoFactoryInterface_Param : access TransformInfoFactoryInterface_Package.TransformInfoFactoryInterface'Class) return TransformInfoEntity_Access is
      transformInfoObjectConfigGeneratorFactoryInterface : constant TransformInfoObjectConfigGeneratorFactoryInterface_Access := TransformInfoObjectConfigGeneratorFactoryInterface_Access (transformInfoObjectConfigGeneratorFactoryInterface_Param);
      transformInfoObjectConfigAndManipulatorFactoryInterface : constant TransformInfoObjectConfigAndManipulatorFactoryBase_Access := TransformInfoObjectConfigAndManipulatorFactoryBase_Access (transformInfoObjectConfigAndManipulatorFactoryInterface_Param);
      transformInfoFactoryInterface : constant TransformInfoFactoryInterface_Access := TransformInfoFactoryInterface_Access (transformInfoFactoryInterface_Param);
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return TransformInfoEntity_Package.Create (transformInfoObjectConfigGeneratorFactoryInterface, transformInfoObjectConfigAndManipulatorFactoryInterface, transformInfoFactoryInterface);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                logUtil.put (commonStrings.EXCEPTION_Id, Java_Box (To_Unbounded_String ("TransformInfoEntityFactory")), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (transformInfoObjectConfigGeneratorFactoryInterface_Param : access TransformInfoObjectConfigGeneratorFactoryInterface_Package.TransformInfoObjectConfigGeneratorFactoryInterface'Class; transformInfoObjectConfigAndManipulatorFactoryInterface_Param : access TransformInfoObjectConfigAndManipulatorFactoryBase_Package.TransformInfoObjectConfigAndManipulatorFactoryBase'Class; transformInfoFactoryInterface_Param : access TransformInfoFactoryInterface_Package.TransformInfoFactoryInterface'Class) is
      Java_Result : constant TransformInfoEntity_Access := getInstance (transformInfoObjectConfigGeneratorFactoryInterface_Param => transformInfoObjectConfigGeneratorFactoryInterface_Param, transformInfoObjectConfigAndManipulatorFactoryInterface_Param => transformInfoObjectConfigAndManipulatorFactoryInterface_Param, transformInfoFactoryInterface_Param => transformInfoFactoryInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.data.tables.transform.info.TransformInfoEntityFactory_Package;


