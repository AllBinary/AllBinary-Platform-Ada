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

with AllBinary_Java;
limited with org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package;
package org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References is
   type CryptServiceFactory_Access is access all org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package.CryptServiceFactory'Class;
   type CryptServiceFactory_Access_Array is array (Natural range <>) of CryptServiceFactory_Access;
   type CryptServiceFactory_Access_Array_Access is access all CryptServiceFactory_Access_Array;
   type CryptServiceFactory_Access_Array_Access_Array is array (Natural range <>) of CryptServiceFactory_Access_Array_Access;
   type CryptServiceFactory_Access_Array_Access_Array_Access is access all CryptServiceFactory_Access_Array_Access_Array;
   type CryptServiceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CryptServiceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CryptServiceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CryptServiceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CryptServiceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CryptServiceFactory_Access_Array_Access is (if Value /= null and then Value.all in CryptServiceFactory_Access_Array_Object'Class then CryptServiceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CryptServiceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CryptServiceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CryptServiceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CryptServiceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CryptServiceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CryptServiceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CryptServiceFactory_Access_Array_Access_Array_Object'Class then CryptServiceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References;

with org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.osgi.framework.Bundle_Package;
with org.osgi.framework.Bundle_Package_References;
with org.osgi.framework.ServiceFactory_Package; use org.osgi.framework.ServiceFactory_Package;
limited with org.osgi.framework.ServiceRegistration_Package;
with org.osgi.framework.ServiceRegistration_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.bundle.logic.system.loader.CryptService_Package;
with org.allbinary.bundle.logic.system.loader.CryptService_Package_References;

package org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package is

   package Bundle_Package renames Standard.org.osgi.framework.Bundle_Package;
   package ServiceFactory_Package renames Standard.org.osgi.framework.ServiceFactory_Package;
   package ServiceRegistration_Package renames Standard.org.osgi.framework.ServiceRegistration_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype Bundle_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access;
   use type Bundle_Access;
   subtype Bundle_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array;
   use type Bundle_Access_Array;
   subtype Bundle_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access;
   use type Bundle_Access_Array_Access;
   subtype Bundle_Access_Array_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array;
   use type Bundle_Access_Array_Access_Array;
   subtype Bundle_Access_Array_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array_Access;
   use type Bundle_Access_Array_Access_Array_Access;
   subtype ServiceRegistration_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access;
   use type ServiceRegistration_Access;
   subtype ServiceRegistration_Access_Array is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array;
   use type ServiceRegistration_Access_Array;
   subtype ServiceRegistration_Access_Array_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access;
   use type ServiceRegistration_Access_Array_Access;
   subtype ServiceRegistration_Access_Array_Access_Array is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access_Array;
   use type ServiceRegistration_Access_Array_Access_Array;
   subtype ServiceRegistration_Access_Array_Access_Array_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access_Array_Access;
   use type ServiceRegistration_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype CryptService_Access is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access;
   use type CryptService_Access;
   subtype CryptService_Access_Array is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access_Array;
   use type CryptService_Access_Array;
   subtype CryptService_Access_Array_Access is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access_Array_Access;
   use type CryptService_Access_Array_Access;
   subtype CryptService_Access_Array_Access_Array is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access_Array_Access_Array;
   use type CryptService_Access_Array_Access_Array;
   subtype CryptService_Access_Array_Access_Array_Access is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access_Array_Access_Array_Access;
   use type CryptService_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CryptServiceFactory_Access is org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References.CryptServiceFactory_Access;
   function "=" (Left, Right : CryptServiceFactory_Access) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References."=";
   subtype CryptServiceFactory_Access_Array is org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References.CryptServiceFactory_Access_Array;
   function "=" (Left, Right : CryptServiceFactory_Access_Array) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References."=";
   subtype CryptServiceFactory_Access_Array_Access is org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References.CryptServiceFactory_Access_Array_Access;
   function "=" (Left, Right : CryptServiceFactory_Access_Array_Access) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References."=";
   function Java_Box (Value : CryptServiceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References.Java_Box;
   function Java_Unbox_CryptServiceFactory_Access_Array (Value : access Java_Object'Class) return CryptServiceFactory_Access_Array_Access renames org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References.Java_Unbox_CryptServiceFactory_Access_Array;
   subtype CryptServiceFactory_Access_Array_Access_Array is org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References.CryptServiceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CryptServiceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References."=";
   subtype CryptServiceFactory_Access_Array_Access_Array_Access is org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References.CryptServiceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CryptServiceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References."=";
   function Java_Box (Value : CryptServiceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References.Java_Box;
   function Java_Unbox_CryptServiceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CryptServiceFactory_Access_Array_Access_Array_Access renames org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package_References.Java_Unbox_CryptServiceFactory_Access_Array_Access_Array;

   type CryptServiceFactory is new Java_Object and ServiceFactory with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      cryptService : CryptService_Access;
   end record;

   procedure Initialize (This : in out CryptServiceFactory'Class);
   function Create return CryptServiceFactory_Access;
   function getService (This : in out CryptServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class) return Java_Object_Access;
   procedure getService (This : in out CryptServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class);
   procedure ungetService (This : in out CryptServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class; service_Param : access Java_Object'Class);

end org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package;


