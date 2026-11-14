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
limited with org.allbinary.view.ViewPosition_Package;
package org.allbinary.view.ViewPosition_Package_References is
   type ViewPosition_Access is access all org.allbinary.view.ViewPosition_Package.ViewPosition'Class;
   type ViewPosition_Access_Array is array (Natural range <>) of ViewPosition_Access;
   type ViewPosition_Access_Array_Access is access all ViewPosition_Access_Array;
   type ViewPosition_Access_Array_Access_Array is array (Natural range <>) of ViewPosition_Access_Array_Access;
   type ViewPosition_Access_Array_Access_Array_Access is access all ViewPosition_Access_Array_Access_Array;
   type ViewPosition_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ViewPosition_Access_Array_Access;
   end record;
   function Java_Box (Value : ViewPosition_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ViewPosition_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ViewPosition_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ViewPosition_Access_Array_Access is (if Value /= null and then Value.all in ViewPosition_Access_Array_Object'Class then ViewPosition_Access_Array_Object'Class (Value.all).Value else null);
   type ViewPosition_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ViewPosition_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ViewPosition_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ViewPosition_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ViewPosition_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ViewPosition_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ViewPosition_Access_Array_Access_Array_Object'Class then ViewPosition_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.view.ViewPosition_Package_References;

with org.allbinary.view.ViewPosition_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;

package org.allbinary.view.ViewPosition_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ViewPosition_Access is org.allbinary.view.ViewPosition_Package_References.ViewPosition_Access;
   function "=" (Left, Right : ViewPosition_Access) return Boolean renames org.allbinary.view.ViewPosition_Package_References."=";
   subtype ViewPosition_Access_Array is org.allbinary.view.ViewPosition_Package_References.ViewPosition_Access_Array;
   function "=" (Left, Right : ViewPosition_Access_Array) return Boolean renames org.allbinary.view.ViewPosition_Package_References."=";
   subtype ViewPosition_Access_Array_Access is org.allbinary.view.ViewPosition_Package_References.ViewPosition_Access_Array_Access;
   function "=" (Left, Right : ViewPosition_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPosition_Package_References."=";
   function Java_Box (Value : ViewPosition_Access_Array_Access) return Java_Object_Access renames org.allbinary.view.ViewPosition_Package_References.Java_Box;
   function Java_Unbox_ViewPosition_Access_Array (Value : access Java_Object'Class) return ViewPosition_Access_Array_Access renames org.allbinary.view.ViewPosition_Package_References.Java_Unbox_ViewPosition_Access_Array;
   subtype ViewPosition_Access_Array_Access_Array is org.allbinary.view.ViewPosition_Package_References.ViewPosition_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.view.ViewPosition_Package_References."=";
   subtype ViewPosition_Access_Array_Access_Array_Access is org.allbinary.view.ViewPosition_Package_References.ViewPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPosition_Package_References."=";
   function Java_Box (Value : ViewPosition_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.view.ViewPosition_Package_References.Java_Box;
   function Java_Unbox_ViewPosition_Access_Array_Access_Array (Value : access Java_Object'Class) return ViewPosition_Access_Array_Access_Array_Access renames org.allbinary.view.ViewPosition_Package_References.Java_Unbox_ViewPosition_Access_Array_Access_Array;

   type ViewPosition is new ViewPositionBase with record
      allbinaryLayer : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out ViewPosition'Class; x : Integer; y : Integer; z : Integer);
   function Create (x : Integer; y : Integer; z : Integer) return ViewPosition_Access;
   function getInstanceD return ViewPosition_Access;
   function getX (This : in out ViewPosition) return Integer;
   function getY (This : in out ViewPosition) return Integer;
   function getZ (This : in out ViewPosition) return Integer;
   function getX2 (This : in out ViewPosition) return Integer;
   function getY2 (This : in out ViewPosition) return Integer;
   function getZ2 (This : in out ViewPosition) return Integer;
   procedure setAllbinaryLayer (This : in out ViewPosition; allbinaryLayer_Param : access Java_Object'Class);
   procedure setAllbinaryLayer (This : in out ViewPosition; Value : Unbounded_String);

end org.allbinary.view.ViewPosition_Package;


