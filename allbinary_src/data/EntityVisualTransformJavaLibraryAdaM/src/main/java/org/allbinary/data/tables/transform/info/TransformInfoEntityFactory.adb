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


package body org.allbinary.data.tables.transform.info.TransformInfoEntityFactory_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   function getInstance (transformInfoObjectConfigGeneratorFactoryInterface : TransformInfoObjectConfigGeneratorFactoryInterface_Access; transformInfoObjectConfigAndManipulatorFactoryInterface : TransformInfoObjectConfigAndManipulatorFactoryBase_Access; transformInfoFactoryInterface : TransformInfoFactoryInterface_Access) return TransformInfoEntity_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return TransformInfoEntity_Package.Create (transformInfoObjectConfigGeneratorFactoryInterface, transformInfoObjectConfigAndManipulatorFactoryInterface, transformInfoFactoryInterface);
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("TransformInfoEntityFactory"), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
        end;
   end getInstance;

   procedure getInstance (transformInfoObjectConfigGeneratorFactoryInterface : TransformInfoObjectConfigGeneratorFactoryInterface_Access; transformInfoObjectConfigAndManipulatorFactoryInterface : TransformInfoObjectConfigAndManipulatorFactoryBase_Access; transformInfoFactoryInterface : TransformInfoFactoryInterface_Access) is
      Java_Result : constant TransformInfoEntity_Access := getInstance (transformInfoObjectConfigGeneratorFactoryInterface, transformInfoObjectConfigAndManipulatorFactoryInterface, transformInfoFactoryInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.data.tables.transform.info.TransformInfoEntityFactory_Package;


