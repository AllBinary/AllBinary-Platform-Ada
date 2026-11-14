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
limited with org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package;
package org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References is
   type TileLayerPositionIntoViewPositionUtil_Access is access all org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package.TileLayerPositionIntoViewPositionUtil'Class;
   type TileLayerPositionIntoViewPositionUtil_Access_Array is array (Natural range <>) of TileLayerPositionIntoViewPositionUtil_Access;
   type TileLayerPositionIntoViewPositionUtil_Access_Array_Access is access all TileLayerPositionIntoViewPositionUtil_Access_Array;
   type TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array is array (Natural range <>) of TileLayerPositionIntoViewPositionUtil_Access_Array_Access;
   type TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Access is access all TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array;
   type TileLayerPositionIntoViewPositionUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TileLayerPositionIntoViewPositionUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : TileLayerPositionIntoViewPositionUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TileLayerPositionIntoViewPositionUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TileLayerPositionIntoViewPositionUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TileLayerPositionIntoViewPositionUtil_Access_Array_Access is (if Value /= null and then Value.all in TileLayerPositionIntoViewPositionUtil_Access_Array_Object'Class then TileLayerPositionIntoViewPositionUtil_Access_Array_Object'Class (Value.all).Value else null);
   type TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Object'Class then TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References;

with org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package is

   package TileLayerPositionIntoViewPosition_Package renames Standard.org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package Reference_Types is
   subtype TileLayerPositionIntoViewPosition_Access is org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References.TileLayerPositionIntoViewPosition_Access;
   use type TileLayerPositionIntoViewPosition_Access;
   subtype TileLayerPositionIntoViewPosition_Access_Array is org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References.TileLayerPositionIntoViewPosition_Access_Array;
   use type TileLayerPositionIntoViewPosition_Access_Array;
   subtype TileLayerPositionIntoViewPosition_Access_Array_Access is org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References.TileLayerPositionIntoViewPosition_Access_Array_Access;
   use type TileLayerPositionIntoViewPosition_Access_Array_Access;
   subtype TileLayerPositionIntoViewPosition_Access_Array_Access_Array is org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References.TileLayerPositionIntoViewPosition_Access_Array_Access_Array;
   use type TileLayerPositionIntoViewPosition_Access_Array_Access_Array;
   subtype TileLayerPositionIntoViewPosition_Access_Array_Access_Array_Access is org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package_References.TileLayerPositionIntoViewPosition_Access_Array_Access_Array_Access;
   use type TileLayerPositionIntoViewPosition_Access_Array_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TileLayerPositionIntoViewPositionUtil_Access is org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References.TileLayerPositionIntoViewPositionUtil_Access;
   function "=" (Left, Right : TileLayerPositionIntoViewPositionUtil_Access) return Boolean renames org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References."=";
   subtype TileLayerPositionIntoViewPositionUtil_Access_Array is org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References.TileLayerPositionIntoViewPositionUtil_Access_Array;
   function "=" (Left, Right : TileLayerPositionIntoViewPositionUtil_Access_Array) return Boolean renames org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References."=";
   subtype TileLayerPositionIntoViewPositionUtil_Access_Array_Access is org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References.TileLayerPositionIntoViewPositionUtil_Access_Array_Access;
   function "=" (Left, Right : TileLayerPositionIntoViewPositionUtil_Access_Array_Access) return Boolean renames org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References."=";
   function Java_Box (Value : TileLayerPositionIntoViewPositionUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References.Java_Box;
   function Java_Unbox_TileLayerPositionIntoViewPositionUtil_Access_Array (Value : access Java_Object'Class) return TileLayerPositionIntoViewPositionUtil_Access_Array_Access renames org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References.Java_Unbox_TileLayerPositionIntoViewPositionUtil_Access_Array;
   subtype TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array is org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References.TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References."=";
   subtype TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Access is org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References.TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References."=";
   function Java_Box (Value : TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References.Java_Box;
   function Java_Unbox_TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Access renames org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package_References.Java_Unbox_TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array;

   type TileLayerPositionIntoViewPositionUtil is new Java_Object with null record;

   procedure Initialize (This : in out TileLayerPositionIntoViewPositionUtil'Class);
   function Create return TileLayerPositionIntoViewPositionUtil_Access;
   procedure init (gameCanvasInterface_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; viewPosition_Param : access TileLayerPositionIntoViewPosition_Package.TileLayerPositionIntoViewPosition'Class);

end org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package;


