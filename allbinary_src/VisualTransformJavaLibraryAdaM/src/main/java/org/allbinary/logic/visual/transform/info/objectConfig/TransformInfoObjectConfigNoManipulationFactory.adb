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


package body org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package is

   procedure Initialize_Fields (This : in out TransformInfoObjectConfigNoManipulationFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TransformInfoObjectConfigNoManipulationFactory_Access is
   begin
        return TransformInfoObjectConfigNoManipulationFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformInfoObjectConfigNoManipulationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoObjectConfigNoManipulationFactory_Access is
      This : constant TransformInfoObjectConfigNoManipulationFactory_Access := new TransformInfoObjectConfigNoManipulationFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out TransformInfoObjectConfigNoManipulationFactory; transformInfoInterface : TransformInfoInterface_Access; objectConfigFileAbPath : AbPath_Access) return TransformInfoObjectConfigInterface_Access is
      transformInfoObjectConfigData : TransformInfoObjectConfigData_Access;
      data : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        begin
            transformInfoObjectConfigData := TransformInfoObjectConfigData_Package.getInstance;
            data := CryptFileReader_Package.Create (transformInfoObjectConfigData.UNCRYPTED_EXTENSION, transformInfoObjectConfigData.getInstance.ENCRYPTED_EXTENSION).get (objectConfigFileAbPath);
            return TransformInfoObjectConfig_Package.Create (transformInfoInterface, DomDocumentHelper_Package.create (data));
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Could Not Load Object Config"), This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
        end;
   end getInstance;

   procedure getInstance is
      Java_Result : constant TransformInfoObjectConfigNoManipulationFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigNoManipulationFactory; transformInfoInterface : TransformInfoInterface_Access; objectConfigFileAbPath : AbPath_Access) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigNoManipulationFactory'Class (This).getInstance (transformInfoInterface, objectConfigFileAbPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformInfoObjectConfigNoManipulationFactory_Package.Create;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package;


