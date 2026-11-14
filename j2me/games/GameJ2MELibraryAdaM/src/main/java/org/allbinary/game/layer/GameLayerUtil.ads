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
limited with org.allbinary.game.layer.GameLayerUtil_Package;
package org.allbinary.game.layer.GameLayerUtil_Package_References is
   type GameLayerUtil_Access is access all org.allbinary.game.layer.GameLayerUtil_Package.GameLayerUtil'Class;
   type GameLayerUtil_Access_Array is array (Natural range <>) of GameLayerUtil_Access;
   type GameLayerUtil_Access_Array_Access is access all GameLayerUtil_Access_Array;
   type GameLayerUtil_Access_Array_Access_Array is array (Natural range <>) of GameLayerUtil_Access_Array_Access;
   type GameLayerUtil_Access_Array_Access_Array_Access is access all GameLayerUtil_Access_Array_Access_Array;
   type GameLayerUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameLayerUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : GameLayerUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameLayerUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameLayerUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameLayerUtil_Access_Array_Access is (if Value /= null and then Value.all in GameLayerUtil_Access_Array_Object'Class then GameLayerUtil_Access_Array_Object'Class (Value.all).Value else null);
   type GameLayerUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameLayerUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameLayerUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameLayerUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameLayerUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameLayerUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameLayerUtil_Access_Array_Access_Array_Object'Class then GameLayerUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.GameLayerUtil_Package_References;

with org.allbinary.game.layer.GameLayerUtil_Package_References;
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

package org.allbinary.game.layer.GameLayerUtil_Package is

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


   subtype GameLayerUtil_Access is org.allbinary.game.layer.GameLayerUtil_Package_References.GameLayerUtil_Access;
   function "=" (Left, Right : GameLayerUtil_Access) return Boolean renames org.allbinary.game.layer.GameLayerUtil_Package_References."=";
   subtype GameLayerUtil_Access_Array is org.allbinary.game.layer.GameLayerUtil_Package_References.GameLayerUtil_Access_Array;
   function "=" (Left, Right : GameLayerUtil_Access_Array) return Boolean renames org.allbinary.game.layer.GameLayerUtil_Package_References."=";
   subtype GameLayerUtil_Access_Array_Access is org.allbinary.game.layer.GameLayerUtil_Package_References.GameLayerUtil_Access_Array_Access;
   function "=" (Left, Right : GameLayerUtil_Access_Array_Access) return Boolean renames org.allbinary.game.layer.GameLayerUtil_Package_References."=";
   function Java_Box (Value : GameLayerUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.GameLayerUtil_Package_References.Java_Box;
   function Java_Unbox_GameLayerUtil_Access_Array (Value : access Java_Object'Class) return GameLayerUtil_Access_Array_Access renames org.allbinary.game.layer.GameLayerUtil_Package_References.Java_Unbox_GameLayerUtil_Access_Array;
   subtype GameLayerUtil_Access_Array_Access_Array is org.allbinary.game.layer.GameLayerUtil_Package_References.GameLayerUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GameLayerUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.GameLayerUtil_Package_References."=";
   subtype GameLayerUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.GameLayerUtil_Package_References.GameLayerUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameLayerUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.GameLayerUtil_Package_References."=";
   function Java_Box (Value : GameLayerUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.GameLayerUtil_Package_References.Java_Box;
   function Java_Unbox_GameLayerUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return GameLayerUtil_Access_Array_Access_Array_Access renames org.allbinary.game.layer.GameLayerUtil_Package_References.Java_Unbox_GameLayerUtil_Access_Array_Access_Array;

   type GameLayerUtil is new Java_Object with null record;

   procedure Initialize (This : in out GameLayerUtil'Class);
   function Create return GameLayerUtil_Access;
   function isOnScreen (layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isOnScreen (layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function isInside (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer) return Boolean;
   procedure isInside (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer);

end org.allbinary.game.layer.GameLayerUtil_Package;


