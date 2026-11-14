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
limited with org.allbinary.osgi.OSGIActivatorUtil_Package;
package org.allbinary.osgi.OSGIActivatorUtil_Package_References is
   type OSGIActivatorUtil_Access is access all org.allbinary.osgi.OSGIActivatorUtil_Package.OSGIActivatorUtil'Class;
   type OSGIActivatorUtil_Access_Array is array (Natural range <>) of OSGIActivatorUtil_Access;
   type OSGIActivatorUtil_Access_Array_Access is access all OSGIActivatorUtil_Access_Array;
   type OSGIActivatorUtil_Access_Array_Access_Array is array (Natural range <>) of OSGIActivatorUtil_Access_Array_Access;
   type OSGIActivatorUtil_Access_Array_Access_Array_Access is access all OSGIActivatorUtil_Access_Array_Access_Array;
   type OSGIActivatorUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OSGIActivatorUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : OSGIActivatorUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OSGIActivatorUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OSGIActivatorUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OSGIActivatorUtil_Access_Array_Access is (if Value /= null and then Value.all in OSGIActivatorUtil_Access_Array_Object'Class then OSGIActivatorUtil_Access_Array_Object'Class (Value.all).Value else null);
   type OSGIActivatorUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OSGIActivatorUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OSGIActivatorUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OSGIActivatorUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OSGIActivatorUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OSGIActivatorUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OSGIActivatorUtil_Access_Array_Access_Array_Object'Class then OSGIActivatorUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.osgi.OSGIActivatorUtil_Package_References;

with org.allbinary.osgi.OSGIActivatorUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.osgi.framework.BundleContext_Package;
with org.osgi.framework.BundleContext_Package_References;

package org.allbinary.osgi.OSGIActivatorUtil_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package Reference_Types is
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype OSGIActivatorUtil_Access is org.allbinary.osgi.OSGIActivatorUtil_Package_References.OSGIActivatorUtil_Access;
   function "=" (Left, Right : OSGIActivatorUtil_Access) return Boolean renames org.allbinary.osgi.OSGIActivatorUtil_Package_References."=";
   subtype OSGIActivatorUtil_Access_Array is org.allbinary.osgi.OSGIActivatorUtil_Package_References.OSGIActivatorUtil_Access_Array;
   function "=" (Left, Right : OSGIActivatorUtil_Access_Array) return Boolean renames org.allbinary.osgi.OSGIActivatorUtil_Package_References."=";
   subtype OSGIActivatorUtil_Access_Array_Access is org.allbinary.osgi.OSGIActivatorUtil_Package_References.OSGIActivatorUtil_Access_Array_Access;
   function "=" (Left, Right : OSGIActivatorUtil_Access_Array_Access) return Boolean renames org.allbinary.osgi.OSGIActivatorUtil_Package_References."=";
   function Java_Box (Value : OSGIActivatorUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.osgi.OSGIActivatorUtil_Package_References.Java_Box;
   function Java_Unbox_OSGIActivatorUtil_Access_Array (Value : access Java_Object'Class) return OSGIActivatorUtil_Access_Array_Access renames org.allbinary.osgi.OSGIActivatorUtil_Package_References.Java_Unbox_OSGIActivatorUtil_Access_Array;
   subtype OSGIActivatorUtil_Access_Array_Access_Array is org.allbinary.osgi.OSGIActivatorUtil_Package_References.OSGIActivatorUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OSGIActivatorUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.osgi.OSGIActivatorUtil_Package_References."=";
   subtype OSGIActivatorUtil_Access_Array_Access_Array_Access is org.allbinary.osgi.OSGIActivatorUtil_Package_References.OSGIActivatorUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OSGIActivatorUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.osgi.OSGIActivatorUtil_Package_References."=";
   function Java_Box (Value : OSGIActivatorUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.osgi.OSGIActivatorUtil_Package_References.Java_Box;
   function Java_Unbox_OSGIActivatorUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return OSGIActivatorUtil_Access_Array_Access_Array_Access renames org.allbinary.osgi.OSGIActivatorUtil_Package_References.Java_Unbox_OSGIActivatorUtil_Access_Array_Access_Array;

   type OSGIActivatorUtil is new Java_Object with null record;

   procedure Initialize (This : in out OSGIActivatorUtil'Class);
   function Create return OSGIActivatorUtil_Access;
   procedure registerAsService (bundleContext_Param : access BundleContext_Package.BundleContext'Class; anyType_Param : access Java_Object'Class; serviceName : Unbounded_String);
   procedure registerAsService (bundleContext_Param : access BundleContext_Package.BundleContext'Class; anyType_Param : access Java_Object'Class; serviceName : Unbounded_String; properties_Param : access ABHashtable_Package.ABHashtable'Class);

end org.allbinary.osgi.OSGIActivatorUtil_Package;


