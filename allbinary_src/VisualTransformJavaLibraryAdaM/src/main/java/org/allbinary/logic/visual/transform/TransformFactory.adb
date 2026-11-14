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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntity_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package; use org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.visual.transform.TransformFactory_Package is

   package TransformInfoEntity_Package renames Standard.org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
   package TransformInfoEntityBuilder_Package renames Standard.org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package TransformInfoHttpFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoObjectFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   function "=" (Left, Right : TransformInfoInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype TransformInterface_Access is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access;
   function "=" (Left, Right : TransformInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.TransformInterface_Package_References."=";
   subtype TransformInterface_Access_Array is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array;
   function "=" (Left, Right : TransformInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.TransformInterface_Package_References."=";
   subtype TransformInterface_Access_Array_Access is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.TransformInterface_Package_References."=";
   subtype TransformInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.TransformInterface_Package_References."=";
   subtype TransformInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.TransformInterface_Package_References."=";
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
   function getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; viewName : Unbounded_String; ownerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      ownerTransformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (ownerTransformInfoInterface_Param);
      ownerTransformInfoHttpInterface : TransformInfoHttpInterface_Access;
      transformInfoEntity : TransformInfoEntity_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      anyType : Java_Object_Access;
   begin
        begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Creating Transform: ") & viewName, TransformFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            end if;
            ownerTransformInfoHttpInterface := TransformInfoHttpInterface_Access (ownerTransformInfoInterface);
            transformInfoEntity := TransformInfoEntityBuilder_Package.getInstance;
            transformInfoInterface := TransformInfoInterface_Access (transformInfoEntity.get (viewName, ownerTransformInfoHttpInterface.getPropertiesHashMap, ownerTransformInfoHttpInterface.getPageContext));
            if (transformInfoInterface) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View In DB: ") & viewName));
            end if;
            transformInfoInterface.setChild;
            anyType := Java_Object_Access (TransformInfoObjectFactory_Package.getInstance.getInstance (abeClientInformation, transformInfoInterface));
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Created Transform: ") & viewName, TransformFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            end if;
            return TransformInterface_Access (anyType);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.TAGHELPERFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TransformFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      transformInfoData : TransformInfoData_Access;
      transformInfoEntity : TransformInfoEntity_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      anyType : Java_Object_Access;
      stringBuffer : StringMaker_Access;
   begin
        begin
            transformInfoData := TransformInfoData_Package.getInstance;
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Creating Transform: ") & Java_Image (propertiesHashMap.get (transformInfoData.NAME)), TransformFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            end if;
            transformInfoEntity := TransformInfoEntityBuilder_Package.getInstance;
            transformInfoInterface := TransformInfoInterface_Access (transformInfoEntity.get (Java_Unbox (propertiesHashMap.get (transformInfoData.NAME)), propertiesHashMap, pageContext));
            if (transformInfoInterface) /= (null) then
                transformInfoInterface.override (propertiesHashMap);
            else
                transformInfoInterface := TransformInfoInterface_Access (TransformInfoHttpFactory_Package.getInstance (propertiesHashMap, pageContext));
            end if;
            anyType := Java_Object_Access (TransformInfoObjectFactory_Package.getInstance.getInstance (abeClientInformation, transformInfoInterface));
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Created Transform: ") & Java_Image (propertiesHashMap.get (transformInfoData.NAME)), TransformFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
            end if;
            return TransformInterface_Access (anyType);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.TAGHELPERFACTORYERROR) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Failed To Get Instance: "));
                stringBuffer.append (Java_Unbox (propertiesHashMap.get (TransformInfoData_Package.getInstance.NAME)));
                stringBuffer.append (To_Unbounded_String ("->TransformFactory"));
                This.logUtil.put (stringBuffer.toString, TransformFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      anyType : Java_Object_Access;
   begin
        begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Creating Transform: ") & transformInfoInterface.getName, TransformFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(TransformInfoInterface)"));
            end if;
            anyType := Java_Object_Access (TransformInfoObjectFactory_Package.getInstance.getInstance (abeClientInformation, transformInfoInterface));
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.TAGHELPERFACTORY) then
                This.logUtil.putF (To_Unbounded_String ("Created Transform: ") & transformInfoInterface.getName, TransformFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(TransformInfoInterface)"));
            end if;
            return TransformInterface_Access (anyType);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.TAGHELPERFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TransformFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(TransformInfoInterface)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; viewName : Unbounded_String; ownerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant TransformInterface_Access := TransformFactory'Class (This).getInstance (abeClientInformation_Param => abeClientInformation_Param, viewName => viewName, ownerTransformInfoInterface_Param => ownerTransformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant TransformInterface_Access := TransformFactory'Class (This).getInstance (abeClientInformation_Param => abeClientInformation_Param, propertiesHashMap_Param => propertiesHashMap_Param, pageContext_Param => pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant TransformInterface_Access := TransformFactory'Class (This).getInstance (abeClientInformation_Param => abeClientInformation_Param, transformInfoInterface_Param => transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformFactory_Package.Create;

end org.allbinary.logic.visual.transform.TransformFactory_Package;


