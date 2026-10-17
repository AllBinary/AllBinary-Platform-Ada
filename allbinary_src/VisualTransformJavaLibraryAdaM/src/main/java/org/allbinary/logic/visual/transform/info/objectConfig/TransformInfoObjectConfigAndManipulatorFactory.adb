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


package body org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package is

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
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactory; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; objectConfigFileAbPath : AbPath_Access) return TransformInfoObjectConfigInterface_Access is
      data : Unbounded_String;
   begin
        begin
            data := CryptFileReader_Package.Create (TransformInfoObjectConfigData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData_Package.getInstance.ENCRYPTED_EXTENSION).get (objectConfigFileAbPath);
            return This.getInstance (abeClientInformation, transformInfoInterface, DomDocumentHelper_Package.create (data));
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
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactory; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return TransformInfoObjectConfigInterface_Access is
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
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactory; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) return TransformInfoObjectConfigInterface_Access is
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

   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactory; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; objectConfigFileAbPath : AbPath_Access) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigAndManipulatorFactory'Class (This).getInstance (abeClientInformation, transformInfoInterface, objectConfigFileAbPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactory; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigAndManipulatorFactory'Class (This).getInstance (abeClientInformation, transformInfoInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactory; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigAndManipulatorFactory'Class (This).getInstance (abeClientInformation, transformInfoInterface, document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformInfoObjectConfigAndManipulatorFactory_Package.Create;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;


