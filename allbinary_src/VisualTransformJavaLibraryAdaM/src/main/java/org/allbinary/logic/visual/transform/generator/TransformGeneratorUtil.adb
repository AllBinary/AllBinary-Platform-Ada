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


with org.allbinary.logic.io.InputOutputTypeData_Package; use org.allbinary.logic.io.InputOutputTypeData_Package;
with org.allbinary.logic.visual.transform.TransformFactory_Package; use org.allbinary.logic.visual.transform.TransformFactory_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package;

package body org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package is

   package InputOutputTypeData_Package renames Standard.org.allbinary.logic.io.InputOutputTypeData_Package;
   package TransformFactory_Package renames Standard.org.allbinary.logic.visual.transform.TransformFactory_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package StoreFileGenerator_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package;
   procedure Initialize_Fields (This : in out TransformGeneratorUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TransformGeneratorUtil_Access is
   begin
        return TransformGeneratorUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformGeneratorUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformGeneratorUtil_Access is
      This : constant TransformGeneratorUtil_Access := new TransformGeneratorUtil;
   begin
      TransformGeneratorUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure generate (This : in out TransformGeneratorUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; ownerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      ownerTransformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (ownerTransformInfoInterface_Param);
      componentInterface : TransformInterface_Access;
      result : Unbounded_String;
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      inputOutputTypeData : InputOutputTypeData_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Generating View: ") & transformInfoInterface.getName, TransformGeneratorUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("generate()"));
            end if;
            componentInterface := TransformFactory_Package.getInstance.getInstance (abeClientInformation, transformInfoInterface.getName, ownerTransformInfoInterface);
            result := componentInterface.view;
            httpTransformInfoInterface := TransformInfoHttpInterface_Access (componentInterface.getTransformInfoInterface);
            inputOutputTypeData := InputOutputTypeData_Package.getInstance;
            if (Java_Index_Of (result, Java_Image (To_Unbounded_String ("<HTML>")))) >= (0) then
                httpTransformInfoInterface.getPropertiesHashMap.put (inputOutputTypeData.NAME, inputOutputTypeData.DEFAULT);
            else
                httpTransformInfoInterface.getPropertiesHashMap.put (inputOutputTypeData.NAME, inputOutputTypeData.DEFAULT_FRAGMENT);
            end if;
            StoreFileGenerator_Package.Create (componentInterface.getTransformInfoInterface).process (result);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate a view"), TransformGeneratorUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("generate()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end generate;

   --  throws Exception
   procedure generate (This : in out TransformGeneratorUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoDomNode_Param : access TransformInfoDomNode_Package.TransformInfoDomNode'Class; ownerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoDomNode : constant TransformInfoDomNode_Access := TransformInfoDomNode_Access (transformInfoDomNode_Param);
      ownerTransformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (ownerTransformInfoInterface_Param);
   begin
        TransformGeneratorUtil'Class (This).generate (abeClientInformation, transformInfoDomNode.getTransformInfoInterface, ownerTransformInfoInterface);
   end generate;

begin
   null;
   instance := TransformGeneratorUtil_Package.Create;

end org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package;


