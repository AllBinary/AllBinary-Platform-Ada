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
limited with org.allbinary.graphics.CellPosition_Package;
package org.allbinary.graphics.CellPosition_Package_References is
   type CellPosition_Access is access all org.allbinary.graphics.CellPosition_Package.CellPosition'Class;
   type CellPosition_Access_Array is array (Natural range <>) of CellPosition_Access;
   type CellPosition_Access_Array_Access is access all CellPosition_Access_Array;
   type CellPosition_Access_Array_Access_Array is array (Natural range <>) of CellPosition_Access_Array_Access;
   type CellPosition_Access_Array_Access_Array_Access is access all CellPosition_Access_Array_Access_Array;
   type CellPosition_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CellPosition_Access_Array_Access;
   end record;
   function Java_Box (Value : CellPosition_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CellPosition_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CellPosition_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CellPosition_Access_Array_Access is (if Value /= null and then Value.all in CellPosition_Access_Array_Object'Class then CellPosition_Access_Array_Object'Class (Value.all).Value else null);
   type CellPosition_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CellPosition_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CellPosition_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CellPosition_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CellPosition_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CellPosition_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CellPosition_Access_Array_Access_Array_Object'Class then CellPosition_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.CellPosition_Package_References;

with org.allbinary.graphics.CellPosition_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graph.V_Package; use org.allbinary.graph.V_Package;

package org.allbinary.graphics.CellPosition_Package is

   package V_Package renames Standard.org.allbinary.graph.V_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CellPosition_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access;
   function "=" (Left, Right : CellPosition_Access) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array;
   function "=" (Left, Right : CellPosition_Access_Array) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access;
   function "=" (Left, Right : CellPosition_Access_Array_Access) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   function Java_Box (Value : CellPosition_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.CellPosition_Package_References.Java_Box;
   function Java_Unbox_CellPosition_Access_Array (Value : access Java_Object'Class) return CellPosition_Access_Array_Access renames org.allbinary.graphics.CellPosition_Package_References.Java_Unbox_CellPosition_Access_Array;
   subtype CellPosition_Access_Array_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : CellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   function Java_Box (Value : CellPosition_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.CellPosition_Package_References.Java_Box;
   function Java_Unbox_CellPosition_Access_Array_Access_Array (Value : access Java_Object'Class) return CellPosition_Access_Array_Access_Array_Access renames org.allbinary.graphics.CellPosition_Package_References.Java_Unbox_CellPosition_Access_Array_Access_Array;

   type CellPosition is new V with record
      id : Integer;
      column : Integer;
      row : Integer;
   end record;

   procedure Initialize (This : in out CellPosition'Class; column : Integer; row : Integer; columns : Integer; rows : Integer);
   function Create (column : Integer; row : Integer; columns : Integer; rows : Integer) return CellPosition_Access;
   function getColumn (This : in out CellPosition) return Integer;
   function getRow (This : in out CellPosition) return Integer;
   function toString (This : in out CellPosition) return Unbounded_String;
   function toStringCellPosition (basicGeographicMapCellPosition_Param : access CellPosition_Package.CellPosition'Class) return Unbounded_String;
   procedure toStringCellPosition (basicGeographicMapCellPosition_Param : access CellPosition_Package.CellPosition'Class);
   function toStringColRow (i_column : Integer; i_row : Integer) return Unbounded_String;
   procedure toStringColRow (i_column : Integer; i_row : Integer);
   function getId (This : in out CellPosition) return Integer;

end org.allbinary.graphics.CellPosition_Package;


