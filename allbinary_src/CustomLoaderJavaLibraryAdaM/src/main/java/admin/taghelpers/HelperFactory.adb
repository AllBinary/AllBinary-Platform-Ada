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


with org.allbinary.logic.system.loader.AbeFactory_Package; use org.allbinary.logic.system.loader.AbeFactory_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body admin.taghelpers.HelperFactory_Package is

   package AbeFactory_Package renames Standard.org.allbinary.logic.system.loader.AbeFactory_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out HelperFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out HelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HelperFactory_Access is
      This : constant HelperFactory_Access := new HelperFactory;
   begin
      HelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return Java_Object_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      httpServletRequest : constant HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
      logUtil : LogUtil_Access;
      params : Java_Object_Access_Array_Access;
      classes : Ada_Tags_Tag_Array_Access;
      abeFactory : AbeFactory_Access;
      anyType : Java_Object_Access;
      error : Unbounded_String;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            params := new Java_Object_Access_Array'(0 .. (2) - 1 => null);
            classes := new Ada_Tags_Tag_Array'(0 .. (2) - 1 => Ada.Tags.No_Tag);
            abeFactory := AbeFactory_Package.getInstance;
            classes (0) := hashMap.all'Tag;
            classes (1) := abeFactory.getClass (abeClientInformation, To_Unbounded_String ("javax.servlet.http.HttpServletRequest"));
            params (0) := Java_Object_Access (hashMap);
            params (1) := Java_Object_Access (httpServletRequest);
            anyType := abeFactory.getInstance (abeClientInformation, className, classes, params);
            return anyType;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed To Get Instance Args: HashMap=") & hashMap.toString & To_Unbounded_String (" HttpServletRequest=") & Java_Image (httpServletRequest);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                logUtil.put (error, factoryName & To_Unbounded_String ("->HelperFactory"), To_Unbounded_String ("getInstance(String, String, HashMap, PageContext)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws LicensingException
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      logUtil : LogUtil_Access;
      params : Java_Object_Access_Array_Access;
      classes : Ada_Tags_Tag_Array_Access;
      abeFactory : AbeFactory_Access;
      anyType : Java_Object_Access;
      error : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            params := new Java_Object_Access_Array'(0 .. (2) - 1 => null);
            classes := new Ada_Tags_Tag_Array'(0 .. (2) - 1 => Ada.Tags.No_Tag);
            abeFactory := AbeFactory_Package.getInstance;
            classes (0) := hashMap.all'Tag;
            classes (1) := abeFactory.getClass (abeClientInformation, To_Unbounded_String ("javax.servlet.jsp.PageContext"));
            params (0) := Java_Object_Access (hashMap);
            params (1) := Java_Object_Access (pageContext);
            anyType := abeFactory.getInstance (abeClientInformation, className, classes, params);
            return anyType;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                error := To_Unbounded_String ("Failed To Get Instance Args: HashMap=") & hashMap.toString & To_Unbounded_String (" PageContext=") & Java_Image (pageContext);
                logUtil.put (error, factoryName & To_Unbounded_String ("->HelperFactory"), To_Unbounded_String ("getInstance(String, String, HashMap, PageContext)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws LicensingException
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class; specialhashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      specialhashMap : constant HashMap_Access := HashMap_Access (specialhashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      logUtil : LogUtil_Access;
      params : Java_Object_Access_Array_Access;
      classes : Ada_Tags_Tag_Array_Access;
      abeFactory : AbeFactory_Access;
      anyType : Java_Object_Access;
      error : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            params := new Java_Object_Access_Array'(0 .. (3) - 1 => null);
            classes := new Ada_Tags_Tag_Array'(0 .. (3) - 1 => Ada.Tags.No_Tag);
            abeFactory := AbeFactory_Package.getInstance;
            classes (0) := hashMap.all'Tag;
            classes (1) := specialhashMap.all'Tag;
            classes (2) := abeFactory.getClass (abeClientInformation, To_Unbounded_String ("javax.servlet.jsp.PageContext"));
            params (0) := Java_Object_Access (hashMap);
            params (1) := Java_Object_Access (specialhashMap);
            params (2) := Java_Object_Access (pageContext);
            anyType := abeFactory.getInstance (abeClientInformation, className, classes, params);
            return anyType;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                error := To_Unbounded_String ("Failed To Get Instance Args: HashMap=") & hashMap.toString & To_Unbounded_String (" PageContext=") & Java_Image (pageContext);
                logUtil.put (error, factoryName & To_Unbounded_String ("->HelperFactory"), To_Unbounded_String ("getInstance(String, String, HashMap, PageContext)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws LicensingException
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String) return Java_Object_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      logUtil : LogUtil_Access;
      anyType : Java_Object_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            anyType := AbeFactory_Package.getInstance.getInstance (abeClientInformation, className);
            return anyType;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, factoryName & To_Unbounded_String ("->HelperFactory"), To_Unbounded_String ("getInstance(String, String, HashMap, PageContext)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      Java_Result : constant Java_Object_Access := getInstance (abeClientInformation_Param => abeClientInformation_Param, factoryName => factoryName, className => className, hashMap_Param => hashMap_Param, httpServletRequest_Param => httpServletRequest_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant Java_Object_Access := getInstance (abeClientInformation_Param => abeClientInformation_Param, factoryName => factoryName, className => className, hashMap_Param => hashMap_Param, pageContext_Param => pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class; specialhashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant Java_Object_Access := getInstance (abeClientInformation_Param => abeClientInformation_Param, factoryName => factoryName, className => className, hashMap_Param => hashMap_Param, specialhashMap_Param => specialhashMap_Param, pageContext_Param => pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String) is
      Java_Result : constant Java_Object_Access := getInstance (abeClientInformation_Param => abeClientInformation_Param, factoryName => factoryName, className => className);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end admin.taghelpers.HelperFactory_Package;


