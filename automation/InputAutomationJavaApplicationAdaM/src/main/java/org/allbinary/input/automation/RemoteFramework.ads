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
limited with org.allbinary.input.automation.RemoteFramework_Package;
package org.allbinary.input.automation.RemoteFramework_Package_References is
   type RemoteFramework_Access is access all org.allbinary.input.automation.RemoteFramework_Package.RemoteFramework'Class;
   type RemoteFramework_Access_Array is array (Natural range <>) of RemoteFramework_Access;
   type RemoteFramework_Access_Array_Access is access all RemoteFramework_Access_Array;
   type RemoteFramework_Access_Array_Access_Array is array (Natural range <>) of RemoteFramework_Access_Array_Access;
   type RemoteFramework_Access_Array_Access_Array_Access is access all RemoteFramework_Access_Array_Access_Array;
   type RemoteFramework_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RemoteFramework_Access_Array_Access;
   end record;
   function Java_Box (Value : RemoteFramework_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RemoteFramework_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RemoteFramework_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RemoteFramework_Access_Array_Access is (if Value /= null and then Value.all in RemoteFramework_Access_Array_Object'Class then RemoteFramework_Access_Array_Object'Class (Value.all).Value else null);
   type RemoteFramework_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RemoteFramework_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RemoteFramework_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RemoteFramework_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RemoteFramework_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RemoteFramework_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RemoteFramework_Access_Array_Access_Array_Object'Class then RemoteFramework_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.RemoteFramework_Package_References;

with org.allbinary.input.automation.RemoteFramework_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.Map_Package; use java.util.Map_Package;
limited with org.osgi.framework.BundleContext_Package;
with org.osgi.framework.BundleContext_Package_References;

package org.allbinary.input.automation.RemoteFramework_Package is

   package Map_Package renames Standard.java.util.Map_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
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
   end Reference_Types;
   use Reference_Types;


   type RemoteFramework is interface;
   subtype RemoteFramework_Access is org.allbinary.input.automation.RemoteFramework_Package_References.RemoteFramework_Access;
   function "=" (Left, Right : RemoteFramework_Access) return Boolean renames org.allbinary.input.automation.RemoteFramework_Package_References."=";
   subtype RemoteFramework_Access_Array is org.allbinary.input.automation.RemoteFramework_Package_References.RemoteFramework_Access_Array;
   function "=" (Left, Right : RemoteFramework_Access_Array) return Boolean renames org.allbinary.input.automation.RemoteFramework_Package_References."=";
   subtype RemoteFramework_Access_Array_Access is org.allbinary.input.automation.RemoteFramework_Package_References.RemoteFramework_Access_Array_Access;
   function "=" (Left, Right : RemoteFramework_Access_Array_Access) return Boolean renames org.allbinary.input.automation.RemoteFramework_Package_References."=";
   function Java_Box (Value : RemoteFramework_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.RemoteFramework_Package_References.Java_Box;
   function Java_Unbox_RemoteFramework_Access_Array (Value : access Java_Object'Class) return RemoteFramework_Access_Array_Access renames org.allbinary.input.automation.RemoteFramework_Package_References.Java_Unbox_RemoteFramework_Access_Array;
   subtype RemoteFramework_Access_Array_Access_Array is org.allbinary.input.automation.RemoteFramework_Package_References.RemoteFramework_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteFramework_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.RemoteFramework_Package_References."=";
   subtype RemoteFramework_Access_Array_Access_Array_Access is org.allbinary.input.automation.RemoteFramework_Package_References.RemoteFramework_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteFramework_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.RemoteFramework_Package_References."=";
   function Java_Box (Value : RemoteFramework_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.RemoteFramework_Package_References.Java_Box;
   function Java_Unbox_RemoteFramework_Access_Array_Access_Array (Value : access Java_Object'Class) return RemoteFramework_Access_Array_Access_Array_Access renames org.allbinary.input.automation.RemoteFramework_Package_References.Java_Unbox_RemoteFramework_Access_Array_Access_Array;
   function Java_Object_Access_From_RemoteFramework (Value : RemoteFramework_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function connect (This : in out RemoteFramework; host : Unbounded_String) return BundleContext_Access is abstract;
   procedure connect (This : in out RemoteFramework; host : Unbounded_String) is abstract;
   procedure disconnect (This : in out RemoteFramework; bc_Param : access BundleContext_Package.BundleContext'Class) is abstract;
   function getSystemProperties (This : in out RemoteFramework; bc_Param : access BundleContext_Package.BundleContext'Class) return Map_Access is abstract;
   procedure getSystemProperties (This : in out RemoteFramework; bc_Param : access BundleContext_Package.BundleContext'Class) is abstract;

end org.allbinary.input.automation.RemoteFramework_Package;


