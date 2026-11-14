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
limited with org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package;
package org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References is
   type NullDropCellPositionGenerator_Access is access all org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package.NullDropCellPositionGenerator'Class;
   type NullDropCellPositionGenerator_Access_Array is array (Natural range <>) of NullDropCellPositionGenerator_Access;
   type NullDropCellPositionGenerator_Access_Array_Access is access all NullDropCellPositionGenerator_Access_Array;
   type NullDropCellPositionGenerator_Access_Array_Access_Array is array (Natural range <>) of NullDropCellPositionGenerator_Access_Array_Access;
   type NullDropCellPositionGenerator_Access_Array_Access_Array_Access is access all NullDropCellPositionGenerator_Access_Array_Access_Array;
   type NullDropCellPositionGenerator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullDropCellPositionGenerator_Access_Array_Access;
   end record;
   function Java_Box (Value : NullDropCellPositionGenerator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullDropCellPositionGenerator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullDropCellPositionGenerator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullDropCellPositionGenerator_Access_Array_Access is (if Value /= null and then Value.all in NullDropCellPositionGenerator_Access_Array_Object'Class then NullDropCellPositionGenerator_Access_Array_Object'Class (Value.all).Value else null);
   type NullDropCellPositionGenerator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullDropCellPositionGenerator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullDropCellPositionGenerator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullDropCellPositionGenerator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullDropCellPositionGenerator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullDropCellPositionGenerator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullDropCellPositionGenerator_Access_Array_Access_Array_Object'Class then NullDropCellPositionGenerator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References;

with org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package; use org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package;

package org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullDropCellPositionGenerator_Access is org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References.NullDropCellPositionGenerator_Access;
   function "=" (Left, Right : NullDropCellPositionGenerator_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References."=";
   subtype NullDropCellPositionGenerator_Access_Array is org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References.NullDropCellPositionGenerator_Access_Array;
   function "=" (Left, Right : NullDropCellPositionGenerator_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References."=";
   subtype NullDropCellPositionGenerator_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References.NullDropCellPositionGenerator_Access_Array_Access;
   function "=" (Left, Right : NullDropCellPositionGenerator_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References."=";
   function Java_Box (Value : NullDropCellPositionGenerator_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References.Java_Box;
   function Java_Unbox_NullDropCellPositionGenerator_Access_Array (Value : access Java_Object'Class) return NullDropCellPositionGenerator_Access_Array_Access renames org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References.Java_Unbox_NullDropCellPositionGenerator_Access_Array;
   subtype NullDropCellPositionGenerator_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References.NullDropCellPositionGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : NullDropCellPositionGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References."=";
   subtype NullDropCellPositionGenerator_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References.NullDropCellPositionGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullDropCellPositionGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References."=";
   function Java_Box (Value : NullDropCellPositionGenerator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References.Java_Box;
   function Java_Unbox_NullDropCellPositionGenerator_Access_Array_Access_Array (Value : access Java_Object'Class) return NullDropCellPositionGenerator_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package_References.Java_Unbox_NullDropCellPositionGenerator_Access_Array_Access_Array;

   type NullDropCellPositionGenerator is new BaseDropCellPositionGenerator with null record;
   instance : NullDropCellPositionGenerator_Access;

   procedure Initialize (This : in out NullDropCellPositionGenerator'Class);
   function Create return NullDropCellPositionGenerator_Access;
   function getInstance return NullDropCellPositionGenerator_Access;

end org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package;


