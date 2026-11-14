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
limited with org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package;
package org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References is
   type AllBinaryPreloaderActivator_Access is access all org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package.AllBinaryPreloaderActivator'Class;
   type AllBinaryPreloaderActivator_Access_Array is array (Natural range <>) of AllBinaryPreloaderActivator_Access;
   type AllBinaryPreloaderActivator_Access_Array_Access is access all AllBinaryPreloaderActivator_Access_Array;
   type AllBinaryPreloaderActivator_Access_Array_Access_Array is array (Natural range <>) of AllBinaryPreloaderActivator_Access_Array_Access;
   type AllBinaryPreloaderActivator_Access_Array_Access_Array_Access is access all AllBinaryPreloaderActivator_Access_Array_Access_Array;
   type AllBinaryPreloaderActivator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryPreloaderActivator_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryPreloaderActivator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryPreloaderActivator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryPreloaderActivator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryPreloaderActivator_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryPreloaderActivator_Access_Array_Object'Class then AllBinaryPreloaderActivator_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryPreloaderActivator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryPreloaderActivator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryPreloaderActivator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryPreloaderActivator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryPreloaderActivator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryPreloaderActivator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryPreloaderActivator_Access_Array_Access_Array_Object'Class then AllBinaryPreloaderActivator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References;

with org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.osgi.framework.BundleActivator_Package; use org.osgi.framework.BundleActivator_Package;
limited with org.osgi.framework.BundleContext_Package;
with org.osgi.framework.BundleContext_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package is

   package BundleActivator_Package renames Standard.org.osgi.framework.BundleActivator_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryPreloaderActivator_Access is org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References.AllBinaryPreloaderActivator_Access;
   function "=" (Left, Right : AllBinaryPreloaderActivator_Access) return Boolean renames org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References."=";
   subtype AllBinaryPreloaderActivator_Access_Array is org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References.AllBinaryPreloaderActivator_Access_Array;
   function "=" (Left, Right : AllBinaryPreloaderActivator_Access_Array) return Boolean renames org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References."=";
   subtype AllBinaryPreloaderActivator_Access_Array_Access is org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References.AllBinaryPreloaderActivator_Access_Array_Access;
   function "=" (Left, Right : AllBinaryPreloaderActivator_Access_Array_Access) return Boolean renames org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References."=";
   function Java_Box (Value : AllBinaryPreloaderActivator_Access_Array_Access) return Java_Object_Access renames org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References.Java_Box;
   function Java_Unbox_AllBinaryPreloaderActivator_Access_Array (Value : access Java_Object'Class) return AllBinaryPreloaderActivator_Access_Array_Access renames org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References.Java_Unbox_AllBinaryPreloaderActivator_Access_Array;
   subtype AllBinaryPreloaderActivator_Access_Array_Access_Array is org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References.AllBinaryPreloaderActivator_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryPreloaderActivator_Access_Array_Access_Array) return Boolean renames org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References."=";
   subtype AllBinaryPreloaderActivator_Access_Array_Access_Array_Access is org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References.AllBinaryPreloaderActivator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryPreloaderActivator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References."=";
   function Java_Box (Value : AllBinaryPreloaderActivator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References.Java_Box;
   function Java_Unbox_AllBinaryPreloaderActivator_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryPreloaderActivator_Access_Array_Access_Array_Access renames org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package_References.Java_Unbox_AllBinaryPreloaderActivator_Access_Array_Access_Array;

   type AllBinaryPreloaderActivator is new Java_Object and BundleActivator with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   context : BundleContext_Access;
   CRYPT_REGISTRY_NAME : Unbounded_String;

   procedure Initialize (This : in out AllBinaryPreloaderActivator'Class);
   function Create return AllBinaryPreloaderActivator_Access;
   function getBundleContext return BundleContext_Access;
   procedure start (This : in out AllBinaryPreloaderActivator; context_Param : access BundleContext_Package.BundleContext'Class);
   procedure registerAsService (This : in out AllBinaryPreloaderActivator);
   procedure stop (This : in out AllBinaryPreloaderActivator; context_Param : access BundleContext_Package.BundleContext'Class);

end org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package;


