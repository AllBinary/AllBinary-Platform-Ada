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


with org.osgi.framework.Bundle_Package; use org.osgi.framework.Bundle_Package;
with org.osgi.framework.Bundle_Package_References;
with org.osgi.framework.ServiceFactory_Package; use org.osgi.framework.ServiceFactory_Package;
with org.osgi.framework.ServiceRegistration_Package; use org.osgi.framework.ServiceRegistration_Package;
with org.osgi.framework.ServiceRegistration_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.bundle.logic.system.loader.CryptService_Package; use org.allbinary.bundle.logic.system.loader.CryptService_Package;
with org.allbinary.bundle.logic.system.loader.CryptService_Package_References;
with org.allbinary.bundle.logic.system.loader.CryptService_Package;

package body org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package is

   subtype Bundle_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access;
   function "=" (Left, Right : Bundle_Access) return Boolean renames org.osgi.framework.Bundle_Package_References."=";
   subtype Bundle_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array;
   function "=" (Left, Right : Bundle_Access_Array) return Boolean renames org.osgi.framework.Bundle_Package_References."=";
   subtype Bundle_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access;
   function "=" (Left, Right : Bundle_Access_Array_Access) return Boolean renames org.osgi.framework.Bundle_Package_References."=";
   subtype Bundle_Access_Array_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array;
   function "=" (Left, Right : Bundle_Access_Array_Access_Array) return Boolean renames org.osgi.framework.Bundle_Package_References."=";
   subtype Bundle_Access_Array_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Bundle_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.Bundle_Package_References."=";
   subtype ServiceRegistration_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access;
   function "=" (Left, Right : ServiceRegistration_Access) return Boolean renames org.osgi.framework.ServiceRegistration_Package_References."=";
   subtype ServiceRegistration_Access_Array is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array;
   function "=" (Left, Right : ServiceRegistration_Access_Array) return Boolean renames org.osgi.framework.ServiceRegistration_Package_References."=";
   subtype ServiceRegistration_Access_Array_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access;
   function "=" (Left, Right : ServiceRegistration_Access_Array_Access) return Boolean renames org.osgi.framework.ServiceRegistration_Package_References."=";
   subtype ServiceRegistration_Access_Array_Access_Array is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access_Array;
   function "=" (Left, Right : ServiceRegistration_Access_Array_Access_Array) return Boolean renames org.osgi.framework.ServiceRegistration_Package_References."=";
   subtype ServiceRegistration_Access_Array_Access_Array_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ServiceRegistration_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.ServiceRegistration_Package_References."=";
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
   subtype CryptService_Access is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access;
   function "=" (Left, Right : CryptService_Access) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptService_Package_References."=";
   subtype CryptService_Access_Array is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access_Array;
   function "=" (Left, Right : CryptService_Access_Array) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptService_Package_References."=";
   subtype CryptService_Access_Array_Access is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access_Array_Access;
   function "=" (Left, Right : CryptService_Access_Array_Access) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptService_Package_References."=";
   subtype CryptService_Access_Array_Access_Array is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access_Array_Access_Array;
   function "=" (Left, Right : CryptService_Access_Array_Access_Array) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptService_Package_References."=";
   subtype CryptService_Access_Array_Access_Array_Access is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CryptService_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptService_Package_References."=";
   procedure Initialize_Fields (This : in out CryptServiceFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.cryptService := CryptService_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out CryptServiceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CryptServiceFactory_Access is
      This : constant CryptServiceFactory_Access := new CryptServiceFactory;
   begin
      CryptServiceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getService (This : in out CryptServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class) return Java_Object_Access is
      bundle : constant Bundle_Access := Bundle_Access (bundle_Param);
      registration : constant ServiceRegistration_Access := ServiceRegistration_Access (registration_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, CryptServiceFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getService"));
        return Java_Object_Access (This.cryptService);
   end getService;

   procedure ungetService (This : in out CryptServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class; service_Param : access Java_Object'Class) is
      bundle : constant Bundle_Access := Bundle_Access (bundle_Param);
      registration : constant ServiceRegistration_Access := ServiceRegistration_Access (registration_Param);
      service : constant Java_Object_Access := Java_Object_Access (service_Param);
   begin
        null;
   end ungetService;

   procedure getService (This : in out CryptServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class) is
      Java_Result : constant Java_Object_Access := CryptServiceFactory'Class (This).getService (bundle_Param => bundle_Param, registration_Param => registration_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getService;

end org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package;


