-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.osgi.framework.NullServiceReference_Package;
package org.osgi.framework.NullServiceReference_Package_References is
   type NullServiceReference_Access is access all org.osgi.framework.NullServiceReference_Package.NullServiceReference'Class;
   type NullServiceReference_Access_Array is array (Natural range <>) of NullServiceReference_Access;
   type NullServiceReference_Access_Array_Access is access all NullServiceReference_Access_Array;
   type NullServiceReference_Access_Array_Access_Array is array (Natural range <>) of NullServiceReference_Access_Array_Access;
   type NullServiceReference_Access_Array_Access_Array_Access is access all NullServiceReference_Access_Array_Access_Array;
   type NullServiceReference_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullServiceReference_Access_Array_Access;
   end record;
   function Java_Box (Value : NullServiceReference_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullServiceReference_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullServiceReference_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullServiceReference_Access_Array_Access is (if Value /= null and then Value.all in NullServiceReference_Access_Array_Object'Class then NullServiceReference_Access_Array_Object'Class (Value.all).Value else null);
   type NullServiceReference_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullServiceReference_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullServiceReference_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullServiceReference_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullServiceReference_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullServiceReference_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullServiceReference_Access_Array_Access_Array_Object'Class then NullServiceReference_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.osgi.framework.NullServiceReference_Package_References;

with org.osgi.framework.NullServiceReference_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.osgi.framework.NullServiceReference_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullServiceReference_Access is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access;
   function "=" (Left, Right : NullServiceReference_Access) return Boolean renames org.osgi.framework.NullServiceReference_Package_References."=";
   subtype NullServiceReference_Access_Array is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access_Array;
   function "=" (Left, Right : NullServiceReference_Access_Array) return Boolean renames org.osgi.framework.NullServiceReference_Package_References."=";
   subtype NullServiceReference_Access_Array_Access is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access_Array_Access;
   function "=" (Left, Right : NullServiceReference_Access_Array_Access) return Boolean renames org.osgi.framework.NullServiceReference_Package_References."=";
   function Java_Box (Value : NullServiceReference_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.NullServiceReference_Package_References.Java_Box;
   function Java_Unbox_NullServiceReference_Access_Array (Value : access Java_Object'Class) return NullServiceReference_Access_Array_Access renames org.osgi.framework.NullServiceReference_Package_References.Java_Unbox_NullServiceReference_Access_Array;
   subtype NullServiceReference_Access_Array_Access_Array is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access_Array_Access_Array;
   function "=" (Left, Right : NullServiceReference_Access_Array_Access_Array) return Boolean renames org.osgi.framework.NullServiceReference_Package_References."=";
   subtype NullServiceReference_Access_Array_Access_Array_Access is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullServiceReference_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.NullServiceReference_Package_References."=";
   function Java_Box (Value : NullServiceReference_Access_Array_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.NullServiceReference_Package_References.Java_Box;
   function Java_Unbox_NullServiceReference_Access_Array_Access_Array (Value : access Java_Object'Class) return NullServiceReference_Access_Array_Access_Array_Access renames org.osgi.framework.NullServiceReference_Package_References.Java_Unbox_NullServiceReference_Access_Array_Access_Array;

   type NullServiceReference is new Java_Object with null record;

   procedure Initialize (This : in out NullServiceReference'Class);
   function Create return NullServiceReference_Access;
   function getProperty (This : in out NullServiceReference; key : Unbounded_String) return Java_Object_Access;
   procedure getProperty (This : in out NullServiceReference; key : Unbounded_String);
   function getPropertyKeys (This : in out NullServiceReference) return Unbounded_String_Array_Access;
   function compareTo (This : in out NullServiceReference; o_Param : access Java_Object'Class) return Integer;
   procedure compareTo (This : in out NullServiceReference; o_Param : access Java_Object'Class);
   function compareTo (This : in out NullServiceReference; Value : Unbounded_String) return Integer;
   procedure compareTo (This : in out NullServiceReference; Value : Unbounded_String);

end org.osgi.framework.NullServiceReference_Package;


