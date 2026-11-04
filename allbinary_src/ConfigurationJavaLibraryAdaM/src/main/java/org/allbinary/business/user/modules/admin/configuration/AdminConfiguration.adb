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
with org.allbinary.business.context.configuration.ContextConfiguration_Package; use org.allbinary.business.context.configuration.ContextConfiguration_Package;
with org.allbinary.business.context.configuration.ContextConfigurationData_Package; use org.allbinary.business.context.configuration.ContextConfigurationData_Package;
with org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package; use org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package;
with org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package; use org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.crypt.file.CryptFileWriter_Package; use org.allbinary.logic.control.crypt.file.CryptFileWriter_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package; use org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package;
with org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfiguration_Package;
with org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package;

package body org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package is

   package ContextConfiguration_Package renames Standard.org.allbinary.business.context.configuration.ContextConfiguration_Package;
   package ContextConfigurationData_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationData_Package;
   package ContextConfigurationDomDocumentMapping_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package;
   package ContextConfigurationInterfaceFactory_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package;
   package ContextConfigurationPathUtil_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package CryptFileWriter_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileWriter_Package;
   subtype ContextConfigurationInterface_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access;
   function "=" (Left, Right : ContextConfigurationInterface_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References."=";
   subtype ContextConfigurationInterface_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array;
   function "=" (Left, Right : ContextConfigurationInterface_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References."=";
   subtype ContextConfigurationInterface_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References."=";
   subtype ContextConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ContextConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References."=";
   subtype ContextConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out AdminConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdminConfiguration'Class) is
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, AdminConfiguration_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.contextConfigurationInterface := ContextConfigurationInterface_Access (ContextConfigurationInterfaceFactory_Package.getInstance.getInstance (AdminConfigurationData_Package.CONTEXTNAME));
   end Initialize;

   function Create return AdminConfiguration_Access is
      This : constant AdminConfiguration_Access := new AdminConfiguration;
   begin
      AdminConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out AdminConfiguration'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, AdminConfiguration_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        AdminConfiguration'Class (This).getFormData (RequestParams_Package.Create (request).toHashMap);
   end Initialize;

   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return AdminConfiguration_Access is
      This : constant AdminConfiguration_Access := new AdminConfiguration;
   begin
      AdminConfiguration_Package.Initialize (This.all, request_Param);
      return This;
   end Create;

   procedure Initialize (This : in out AdminConfiguration'Class; storeHashMap_Param : access HashMap_Package.HashMap'Class) is
      storeHashMap : constant HashMap_Access := HashMap_Access (storeHashMap_Param);
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, AdminConfiguration_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        AdminConfiguration'Class (This).getFormData (storeHashMap);
   end Initialize;

   function Create (storeHashMap_Param : access HashMap_Package.HashMap'Class) return AdminConfiguration_Access is
      This : constant AdminConfiguration_Access := new AdminConfiguration;
   begin
      AdminConfiguration_Package.Initialize (This.all, storeHashMap_Param);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out AdminConfiguration; storeHashMap_Param : access HashMap_Package.HashMap'Class) is
      storeHashMap : constant HashMap_Access := HashMap_Access (storeHashMap_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, AdminConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("getFormData"));
        AdminConfiguration'Class (This).setContextConfigurationInterface (ContextConfigurationInterface_Access (ContextConfiguration_Package.Create (storeHashMap)));
   end getFormData;

   --  throws Exception
   procedure write (This : in out AdminConfiguration) is
      contextConfigurationDomDocumentMapping : ContextConfigurationDomDocumentMapping_Access;
      cryptFileWriter : CryptFileWriter_Access;
   begin
        contextConfigurationDomDocumentMapping := ContextConfigurationDomDocumentMapping_Package.Create (AdminConfiguration'Class (This).getContextConfigurationInterface);
        cryptFileWriter := CryptFileWriter_Package.Create (ContextConfigurationData_Package.getInstance.UNCRYPTED_EXTENSION, ContextConfigurationData_Package.getInstance.ENCRYPTED_EXTENSION);
        cryptFileWriter.write (ContextConfigurationPathUtil_Package.getAbPath (AdminConfigurationData_Package.CONTEXTNAME), contextConfigurationDomDocumentMapping.toXmlDoc);
   end write;

   function getContextConfigurationInterface (This : in out AdminConfiguration) return ContextConfigurationInterface_Access is
   begin
        return This.contextConfigurationInterface;
   end getContextConfigurationInterface;

   procedure setContextConfigurationInterface (This : in out AdminConfiguration; contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class) is
      contextConfigurationInterface : constant ContextConfigurationInterface_Access := ContextConfigurationInterface_Access (contextConfigurationInterface_Param);
   begin
        This.contextConfigurationInterface := contextConfigurationInterface;
   end setContextConfigurationInterface;

end org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package;


