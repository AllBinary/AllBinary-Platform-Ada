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
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package;

package body org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package is

   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   procedure Initialize_Fields (This : in out TransformInfoObjectConfigAndManipulatorFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TransformInfoObjectConfigAndManipulatorFactory_Access is
   begin
        return TransformInfoObjectConfigAndManipulatorFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformInfoObjectConfigAndManipulatorFactory'Class) is
   begin
      TransformInfoObjectConfigAndManipulatorFactoryBase_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoObjectConfigAndManipulatorFactory_Access is
      This : constant TransformInfoObjectConfigAndManipulatorFactory_Access := new TransformInfoObjectConfigAndManipulatorFactory;
   begin
      TransformInfoObjectConfigAndManipulatorFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath_Package.AbPath'Class) return TransformInfoObjectConfigInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      objectConfigFileAbPath : constant AbPath_Access := AbPath_Access (objectConfigFileAbPath_Param);
      data : Unbounded_String;
   begin
        begin
            data := CryptFileReader_Package.Create (TransformInfoObjectConfigData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData_Package.getInstance.ENCRYPTED_EXTENSION).get (objectConfigFileAbPath);
            return TransformInfoObjectConfigInterface_Access (TransformInfoObjectConfigAndManipulatorFactory'Class (This).getInstance (abeClientInformation, transformInfoInterface, DomDocumentHelper_Package.create (data)));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Could Not Load Object Config"), getInstance, This.commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoObjectConfigInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      stringValidationUtil : StringValidationUtil_Access;
      error : Unbounded_String;
   begin
        begin
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            if ((transformInfoInterface) /= (null)) and then (not (stringValidationUtil.isEmpty (transformInfoInterface.getStoreName))) then
                return TransformInfoObjectConfigInterface_Access (GenericStoreTransformInfoObjectConfig_Package.Create (abeClientInformation, transformInfoInterface));
            else
                return TransformInfoObjectConfigInterface_Access (TransformInfoObjectConfig_Package.Create (transformInfoInterface));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed To Get Instance: ");
            if (transformInfoInterface) /= (null) then
                error := error & transformInfoInterface.getName;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, getInstance, This.commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) return TransformInfoObjectConfigInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      document : constant Document_Access := Document_Access (document_Param);
      stringValidationUtil : StringValidationUtil_Access;
      error : Unbounded_String;
   begin
        begin
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            if ((transformInfoInterface) /= (null)) and then (not (stringValidationUtil.isEmpty (transformInfoInterface.getStoreName))) then
                return TransformInfoObjectConfigInterface_Access (GenericStoreTransformInfoObjectConfig_Package.Create (abeClientInformation, transformInfoInterface, document));
            else
                return TransformInfoObjectConfigInterface_Access (TransformInfoObjectConfig_Package.Create (transformInfoInterface, document));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed To Get Instance: ");
            if (transformInfoInterface) /= (null) then
                error := error & transformInfoInterface.getName;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, getInstance, To_Unbounded_String ("getInstance(document)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigAndManipulatorFactory'Class (This).getInstance (abeClientInformation_Param => abeClientInformation_Param, transformInfoInterface_Param => transformInfoInterface_Param, objectConfigFileAbPath_Param => objectConfigFileAbPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigAndManipulatorFactory'Class (This).getInstance (abeClientInformation_Param => abeClientInformation_Param, transformInfoInterface_Param => transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigAndManipulatorFactory'Class (This).getInstance (abeClientInformation_Param => abeClientInformation_Param, transformInfoInterface_Param => transformInfoInterface_Param, document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformInfoObjectConfigAndManipulatorFactory_Package.Create;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;


