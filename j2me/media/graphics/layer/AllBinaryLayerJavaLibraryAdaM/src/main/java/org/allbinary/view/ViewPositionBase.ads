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
limited with org.allbinary.view.ViewPositionBase_Package;
package org.allbinary.view.ViewPositionBase_Package_References is
   type ViewPositionBase_Access is access all org.allbinary.view.ViewPositionBase_Package.ViewPositionBase'Class;
   type ViewPositionBase_Access_Array is array (Natural range <>) of ViewPositionBase_Access;
   type ViewPositionBase_Access_Array_Access is access all ViewPositionBase_Access_Array;
   type ViewPositionBase_Access_Array_Access_Array is array (Natural range <>) of ViewPositionBase_Access_Array_Access;
   type ViewPositionBase_Access_Array_Access_Array_Access is access all ViewPositionBase_Access_Array_Access_Array;
   type ViewPositionBase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ViewPositionBase_Access_Array_Access;
   end record;
   function Java_Box (Value : ViewPositionBase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ViewPositionBase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ViewPositionBase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ViewPositionBase_Access_Array_Access is (if Value /= null and then Value.all in ViewPositionBase_Access_Array_Object'Class then ViewPositionBase_Access_Array_Object'Class (Value.all).Value else null);
   type ViewPositionBase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ViewPositionBase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ViewPositionBase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ViewPositionBase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ViewPositionBase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ViewPositionBase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ViewPositionBase_Access_Array_Access_Array_Object'Class then ViewPositionBase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.view.ViewPositionBase_Package_References;

with org.allbinary.view.ViewPositionBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;

package org.allbinary.view.ViewPositionBase_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   function "=" (Left, Right : ViewPositionBase_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   function Java_Box (Value : ViewPositionBase_Access_Array_Access) return Java_Object_Access renames org.allbinary.view.ViewPositionBase_Package_References.Java_Box;
   function Java_Unbox_ViewPositionBase_Access_Array (Value : access Java_Object'Class) return ViewPositionBase_Access_Array_Access renames org.allbinary.view.ViewPositionBase_Package_References.Java_Unbox_ViewPositionBase_Access_Array;
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   function Java_Box (Value : ViewPositionBase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.view.ViewPositionBase_Package_References.Java_Box;
   function Java_Unbox_ViewPositionBase_Access_Array_Access_Array (Value : access Java_Object'Class) return ViewPositionBase_Access_Array_Access_Array_Access renames org.allbinary.view.ViewPositionBase_Package_References.Java_Unbox_ViewPositionBase_Access_Array_Access_Array;

   type ViewPositionBase is new GPoint with null record;
   NULL_VIEW_POSITION : ViewPositionBase_Access;

   procedure Initialize (This : in out ViewPositionBase'Class; x : Integer; y : Integer; z : Integer);
   function Create (x : Integer; y : Integer; z : Integer) return ViewPositionBase_Access;
   function getX2 (This : in out ViewPositionBase) return Integer;
   function getY2 (This : in out ViewPositionBase) return Integer;
   function getZ2 (This : in out ViewPositionBase) return Integer;
   procedure setAllbinaryLayer (This : in out ViewPositionBase; allbinaryLayer_Param : access Java_Object'Class);
   procedure setAllbinaryLayer (This : in out ViewPositionBase; Value : Unbounded_String);

end org.allbinary.view.ViewPositionBase_Package;


