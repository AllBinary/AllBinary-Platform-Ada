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


with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;

package body org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package is

   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
      TransformInfoObjectConfigNoManipulationFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out TransformInfoObjectConfigNoManipulationFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath_Package.AbPath'Class) return TransformInfoObjectConfigInterface_Access is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      objectConfigFileAbPath : constant AbPath_Access := AbPath_Access (objectConfigFileAbPath_Param);
      transformInfoObjectConfigData : TransformInfoObjectConfigData_Access;
      data : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        begin
            transformInfoObjectConfigData := TransformInfoObjectConfigData_Package.getInstance;
            data := CryptFileReader_Package.Create (transformInfoObjectConfigData.UNCRYPTED_EXTENSION, transformInfoObjectConfigData.getInstance.ENCRYPTED_EXTENSION).get (objectConfigFileAbPath);
            return TransformInfoObjectConfigInterface_Access (TransformInfoObjectConfig_Package.Create (transformInfoInterface, DomDocumentHelper_Package.create (data)));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Could Not Load Object Config"), TransformInfoObjectConfigNoManipulationFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigNoManipulationFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigNoManipulationFactory'Class (This).getInstance (transformInfoInterface_Param, objectConfigFileAbPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformInfoObjectConfigNoManipulationFactory_Package.Create;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package;


