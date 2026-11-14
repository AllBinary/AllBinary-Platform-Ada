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
limited with org.allbinary.osgi.service.InputAutomationServiceConsumer_Package;
package org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References is
   type InputAutomationServiceConsumer_Access is access all org.allbinary.osgi.service.InputAutomationServiceConsumer_Package.InputAutomationServiceConsumer'Class;
   type InputAutomationServiceConsumer_Access_Array is array (Natural range <>) of InputAutomationServiceConsumer_Access;
   type InputAutomationServiceConsumer_Access_Array_Access is access all InputAutomationServiceConsumer_Access_Array;
   type InputAutomationServiceConsumer_Access_Array_Access_Array is array (Natural range <>) of InputAutomationServiceConsumer_Access_Array_Access;
   type InputAutomationServiceConsumer_Access_Array_Access_Array_Access is access all InputAutomationServiceConsumer_Access_Array_Access_Array;
   type InputAutomationServiceConsumer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationServiceConsumer_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationServiceConsumer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationServiceConsumer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationServiceConsumer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationServiceConsumer_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationServiceConsumer_Access_Array_Object'Class then InputAutomationServiceConsumer_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationServiceConsumer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationServiceConsumer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationServiceConsumer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationServiceConsumer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationServiceConsumer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationServiceConsumer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationServiceConsumer_Access_Array_Access_Array_Object'Class then InputAutomationServiceConsumer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References;

with org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.osgi.framework.BundleContext_Package;
with org.osgi.framework.BundleContext_Package_References;
limited with org.osgi.framework.ServiceReference_Package;
with org.osgi.framework.ServiceReference_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
with org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.osgi.service.OSGIServiceUtil_Package;
with org.allbinary.osgi.service.OSGIServiceUtil_Package_References;

package org.allbinary.osgi.service.InputAutomationServiceConsumer_Package is

   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package ServiceReference_Package renames Standard.org.osgi.framework.ServiceReference_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package OSGIServiceVisitorInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype BundleContext_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access;
   use type BundleContext_Access;
   subtype BundleContext_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array;
   use type BundleContext_Access_Array;
   subtype BundleContext_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access;
   use type BundleContext_Access_Array_Access;
   subtype BundleContext_Access_Array_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array;
   use type BundleContext_Access_Array_Access_Array;
   subtype BundleContext_Access_Array_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array_Access;
   use type BundleContext_Access_Array_Access_Array_Access;
   subtype ServiceReference_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access;
   use type ServiceReference_Access;
   subtype ServiceReference_Access_Array is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array;
   use type ServiceReference_Access_Array;
   subtype ServiceReference_Access_Array_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access;
   use type ServiceReference_Access_Array_Access;
   subtype ServiceReference_Access_Array_Access_Array is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access_Array;
   use type ServiceReference_Access_Array_Access_Array;
   subtype ServiceReference_Access_Array_Access_Array_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access_Array_Access;
   use type ServiceReference_Access_Array_Access_Array_Access;
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
   subtype OSGIServiceVisitorInterface_Access is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access;
   use type OSGIServiceVisitorInterface_Access;
   subtype OSGIServiceVisitorInterface_Access_Array is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access_Array;
   use type OSGIServiceVisitorInterface_Access_Array;
   subtype OSGIServiceVisitorInterface_Access_Array_Access is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access_Array_Access;
   use type OSGIServiceVisitorInterface_Access_Array_Access;
   subtype OSGIServiceVisitorInterface_Access_Array_Access_Array is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access_Array_Access_Array;
   use type OSGIServiceVisitorInterface_Access_Array_Access_Array;
   subtype OSGIServiceVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access_Array_Access_Array_Access;
   use type OSGIServiceVisitorInterface_Access_Array_Access_Array_Access;
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
   subtype OSGIServiceUtil_Access is org.allbinary.osgi.service.OSGIServiceUtil_Package_References.OSGIServiceUtil_Access;
   use type OSGIServiceUtil_Access;
   subtype OSGIServiceUtil_Access_Array is org.allbinary.osgi.service.OSGIServiceUtil_Package_References.OSGIServiceUtil_Access_Array;
   use type OSGIServiceUtil_Access_Array;
   subtype OSGIServiceUtil_Access_Array_Access is org.allbinary.osgi.service.OSGIServiceUtil_Package_References.OSGIServiceUtil_Access_Array_Access;
   use type OSGIServiceUtil_Access_Array_Access;
   subtype OSGIServiceUtil_Access_Array_Access_Array is org.allbinary.osgi.service.OSGIServiceUtil_Package_References.OSGIServiceUtil_Access_Array_Access_Array;
   use type OSGIServiceUtil_Access_Array_Access_Array;
   subtype OSGIServiceUtil_Access_Array_Access_Array_Access is org.allbinary.osgi.service.OSGIServiceUtil_Package_References.OSGIServiceUtil_Access_Array_Access_Array_Access;
   use type OSGIServiceUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationServiceConsumer_Access is org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References.InputAutomationServiceConsumer_Access;
   function "=" (Left, Right : InputAutomationServiceConsumer_Access) return Boolean renames org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References."=";
   subtype InputAutomationServiceConsumer_Access_Array is org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References.InputAutomationServiceConsumer_Access_Array;
   function "=" (Left, Right : InputAutomationServiceConsumer_Access_Array) return Boolean renames org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References."=";
   subtype InputAutomationServiceConsumer_Access_Array_Access is org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References.InputAutomationServiceConsumer_Access_Array_Access;
   function "=" (Left, Right : InputAutomationServiceConsumer_Access_Array_Access) return Boolean renames org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References."=";
   function Java_Box (Value : InputAutomationServiceConsumer_Access_Array_Access) return Java_Object_Access renames org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References.Java_Box;
   function Java_Unbox_InputAutomationServiceConsumer_Access_Array (Value : access Java_Object'Class) return InputAutomationServiceConsumer_Access_Array_Access renames org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References.Java_Unbox_InputAutomationServiceConsumer_Access_Array;
   subtype InputAutomationServiceConsumer_Access_Array_Access_Array is org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References.InputAutomationServiceConsumer_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationServiceConsumer_Access_Array_Access_Array) return Boolean renames org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References."=";
   subtype InputAutomationServiceConsumer_Access_Array_Access_Array_Access is org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References.InputAutomationServiceConsumer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationServiceConsumer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References."=";
   function Java_Box (Value : InputAutomationServiceConsumer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References.Java_Box;
   function Java_Unbox_InputAutomationServiceConsumer_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationServiceConsumer_Access_Array_Access_Array_Access renames org.allbinary.osgi.service.InputAutomationServiceConsumer_Package_References.Java_Unbox_InputAutomationServiceConsumer_Access_Array_Access_Array;

   type InputAutomationServiceConsumer is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      osgiServiceUtil : OSGIServiceUtil_Access;
      registryName : Unbounded_String;
      bundleContext : BundleContext_Access;
      osgiServiceVisitorInterface : OSGIServiceVisitorInterface_Access;
   end record;

   procedure Initialize (This : in out InputAutomationServiceConsumer'Class; registryName : Unbounded_String; bundleContext_Param : access BundleContext_Package.BundleContext'Class; osgiServiceVisitorInterface_Param : access OSGIServiceVisitorInterface_Package.OSGIServiceVisitorInterface'Class);
   function Create (registryName : Unbounded_String; bundleContext_Param : access BundleContext_Package.BundleContext'Class; osgiServiceVisitorInterface_Param : access OSGIServiceVisitorInterface_Package.OSGIServiceVisitorInterface'Class) return InputAutomationServiceConsumer_Access;
   procedure process (This : in out InputAutomationServiceConsumer);
   function getServiceReferences (This : in out InputAutomationServiceConsumer) return ServiceReference_Access_Array_Access;
   function getBundleContext (This : in out InputAutomationServiceConsumer) return BundleContext_Access;
   procedure setBundleContext (This : in out InputAutomationServiceConsumer; aBundleContext_Param : access BundleContext_Package.BundleContext'Class);
   function getRegistryName (This : in out InputAutomationServiceConsumer) return Unbounded_String;
   procedure setRegistryName (This : in out InputAutomationServiceConsumer; registryName : Unbounded_String);
   function getOsgiServiceVisitorInterface (This : in out InputAutomationServiceConsumer) return OSGIServiceVisitorInterface_Access;
   procedure setOsgiServiceVisitorInterface (This : in out InputAutomationServiceConsumer; osgiServiceVisitorInterface_Param : access OSGIServiceVisitorInterface_Package.OSGIServiceVisitorInterface'Class);

end org.allbinary.osgi.service.InputAutomationServiceConsumer_Package;


