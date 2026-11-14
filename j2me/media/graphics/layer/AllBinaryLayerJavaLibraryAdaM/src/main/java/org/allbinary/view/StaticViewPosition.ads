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
limited with org.allbinary.view.StaticViewPosition_Package;
package org.allbinary.view.StaticViewPosition_Package_References is
   type StaticViewPosition_Access is access all org.allbinary.view.StaticViewPosition_Package.StaticViewPosition'Class;
   type StaticViewPosition_Access_Array is array (Natural range <>) of StaticViewPosition_Access;
   type StaticViewPosition_Access_Array_Access is access all StaticViewPosition_Access_Array;
   type StaticViewPosition_Access_Array_Access_Array is array (Natural range <>) of StaticViewPosition_Access_Array_Access;
   type StaticViewPosition_Access_Array_Access_Array_Access is access all StaticViewPosition_Access_Array_Access_Array;
   type StaticViewPosition_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StaticViewPosition_Access_Array_Access;
   end record;
   function Java_Box (Value : StaticViewPosition_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StaticViewPosition_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StaticViewPosition_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StaticViewPosition_Access_Array_Access is (if Value /= null and then Value.all in StaticViewPosition_Access_Array_Object'Class then StaticViewPosition_Access_Array_Object'Class (Value.all).Value else null);
   type StaticViewPosition_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StaticViewPosition_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StaticViewPosition_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StaticViewPosition_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StaticViewPosition_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StaticViewPosition_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StaticViewPosition_Access_Array_Access_Array_Object'Class then StaticViewPosition_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.view.StaticViewPosition_Package_References;

with org.allbinary.view.StaticViewPosition_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;

package org.allbinary.view.StaticViewPosition_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StaticViewPosition_Access is org.allbinary.view.StaticViewPosition_Package_References.StaticViewPosition_Access;
   function "=" (Left, Right : StaticViewPosition_Access) return Boolean renames org.allbinary.view.StaticViewPosition_Package_References."=";
   subtype StaticViewPosition_Access_Array is org.allbinary.view.StaticViewPosition_Package_References.StaticViewPosition_Access_Array;
   function "=" (Left, Right : StaticViewPosition_Access_Array) return Boolean renames org.allbinary.view.StaticViewPosition_Package_References."=";
   subtype StaticViewPosition_Access_Array_Access is org.allbinary.view.StaticViewPosition_Package_References.StaticViewPosition_Access_Array_Access;
   function "=" (Left, Right : StaticViewPosition_Access_Array_Access) return Boolean renames org.allbinary.view.StaticViewPosition_Package_References."=";
   function Java_Box (Value : StaticViewPosition_Access_Array_Access) return Java_Object_Access renames org.allbinary.view.StaticViewPosition_Package_References.Java_Box;
   function Java_Unbox_StaticViewPosition_Access_Array (Value : access Java_Object'Class) return StaticViewPosition_Access_Array_Access renames org.allbinary.view.StaticViewPosition_Package_References.Java_Unbox_StaticViewPosition_Access_Array;
   subtype StaticViewPosition_Access_Array_Access_Array is org.allbinary.view.StaticViewPosition_Package_References.StaticViewPosition_Access_Array_Access_Array;
   function "=" (Left, Right : StaticViewPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.view.StaticViewPosition_Package_References."=";
   subtype StaticViewPosition_Access_Array_Access_Array_Access is org.allbinary.view.StaticViewPosition_Package_References.StaticViewPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StaticViewPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.StaticViewPosition_Package_References."=";
   function Java_Box (Value : StaticViewPosition_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.view.StaticViewPosition_Package_References.Java_Box;
   function Java_Unbox_StaticViewPosition_Access_Array_Access_Array (Value : access Java_Object'Class) return StaticViewPosition_Access_Array_Access_Array_Access renames org.allbinary.view.StaticViewPosition_Package_References.Java_Unbox_StaticViewPosition_Access_Array_Access_Array;

   type StaticViewPosition is new ViewPosition with null record;

   procedure Initialize (This : in out StaticViewPosition'Class; x : Integer; y : Integer; z : Integer);
   function Create (x : Integer; y : Integer; z : Integer) return StaticViewPosition_Access;
   function getX (This : in out StaticViewPosition) return Integer;
   function getY (This : in out StaticViewPosition) return Integer;
   function getZ (This : in out StaticViewPosition) return Integer;

end org.allbinary.view.StaticViewPosition_Package;


