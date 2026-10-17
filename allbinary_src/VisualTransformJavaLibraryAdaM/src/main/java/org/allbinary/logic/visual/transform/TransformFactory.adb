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


package body org.allbinary.logic.visual.transform.TransformFactory_Package is

   procedure Initialize_Fields (This : in out TransformFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TransformFactory_Access is
   begin
        return TransformFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformFactory_Access is
      This : constant TransformFactory_Access := new TransformFactory;
   begin
      TransformFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; viewName : Unbounded_String; ownerTransformInfoInterface_Param : access TransformInfoInterface'Class) return TransformInterface_Access is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      ownerTransformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (ownerTransformInfoInterface_Param);
      ownerTransformInfoHttpInterface : TransformInfoHttpInterface_Access;
      transformInfoEntity : TransformInfoEntity_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      anyType : Java_Object_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Creating Transform: ") & viewName, TransformFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            end if;
            ownerTransformInfoHttpInterface := TransformInfoHttpInterface_Access (ownerTransformInfoInterface);
            transformInfoEntity := TransformInfoEntityBuilder_Package.getInstance;
            transformInfoInterface := transformInfoEntity.get (viewName, ownerTransformInfoHttpInterface.getPropertiesHashMap, ownerTransformInfoHttpInterface.getPageContext);
            if (transformInfoInterface) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View In DB: ") & viewName));
            end if;
            transformInfoInterface.setChild;
            anyType := TransformInfoObjectFactory_Package.getInstance.getInstance (abeClientInformation, transformInfoInterface);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Created Transform: ") & viewName, TransformFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            end if;
            return TransformInterface_Access (anyType);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TransformFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return TransformInterface_Access is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      propertiesHashMap : HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : PageContext_Access := PageContext_Access (pageContext_Param);
      transformInfoData : TransformInfoData_Access;
      transformInfoEntity : TransformInfoEntity_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      anyType : Java_Object_Access;
      stringBuffer : StringMaker_Access;
   begin
        begin
            transformInfoData := TransformInfoData_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Creating Transform: ") & Java_Image (propertiesHashMap.get (transformInfoData.NAME)), TransformFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            end if;
            transformInfoEntity := TransformInfoEntityBuilder_Package.getInstance;
            transformInfoInterface := transformInfoEntity.get (Unbounded_String (propertiesHashMap.get (transformInfoData.NAME)), propertiesHashMap, pageContext);
            if (transformInfoInterface) /= (null) then
                transformInfoInterface.override (propertiesHashMap);
            else
                transformInfoInterface := TransformInfoInterface_Access (TransformInfoHttpFactory_Package.getInstance (propertiesHashMap, pageContext));
            end if;
            anyType := TransformInfoObjectFactory_Package.getInstance.getInstance (abeClientInformation, transformInfoInterface);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Created Transform: ") & Java_Image (propertiesHashMap.get (transformInfoData.NAME)), TransformFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            end if;
            return TransformInterface_Access (anyType);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Failed To Get Instance: "));
                stringBuffer.append (Unbounded_String (propertiesHashMap.get (TransformInfoData_Package.getInstance.NAME)));
                stringBuffer.append (To_Unbounded_String ("->TransformFactory"));
                This.logUtil.put (stringBuffer.toString, TransformFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) return TransformInterface_Access is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      anyType : Java_Object_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Creating Transform: ") & transformInfoInterface.getName, TransformFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(TransformInfoInterface)"));
            end if;
            anyType := TransformInfoObjectFactory_Package.getInstance.getInstance (abeClientInformation, transformInfoInterface);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Created Transform: ") & transformInfoInterface.getName, TransformFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(TransformInfoInterface)"));
            end if;
            return TransformInterface_Access (anyType);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TransformFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(TransformInfoInterface)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; viewName : Unbounded_String; ownerTransformInfoInterface_Param : access TransformInfoInterface'Class) is
      Java_Result : constant TransformInterface_Access := TransformFactory'Class (This).getInstance (abeClientInformation_Param, viewName, ownerTransformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) is
      Java_Result : constant TransformInterface_Access := TransformFactory'Class (This).getInstance (abeClientInformation_Param, propertiesHashMap_Param, pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      Java_Result : constant TransformInterface_Access := TransformFactory'Class (This).getInstance (abeClientInformation_Param, transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformFactory_Package.Create;

end org.allbinary.logic.visual.transform.TransformFactory_Package;


