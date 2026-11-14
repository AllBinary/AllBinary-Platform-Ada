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
limited with org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package;
package org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References is
   type PointsLayer_Access is access all org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package.PointsLayer'Class;
   type PointsLayer_Access_Array is array (Natural range <>) of PointsLayer_Access;
   type PointsLayer_Access_Array_Access is access all PointsLayer_Access_Array;
   type PointsLayer_Access_Array_Access_Array is array (Natural range <>) of PointsLayer_Access_Array_Access;
   type PointsLayer_Access_Array_Access_Array_Access is access all PointsLayer_Access_Array_Access_Array;
   type PointsLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PointsLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : PointsLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PointsLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PointsLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PointsLayer_Access_Array_Access is (if Value /= null and then Value.all in PointsLayer_Access_Array_Object'Class then PointsLayer_Access_Array_Object'Class (Value.all).Value else null);
   type PointsLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PointsLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PointsLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PointsLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PointsLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PointsLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PointsLayer_Access_Array_Access_Array_Object'Class then PointsLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References;

with org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.score.ScoreableInterface_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype ScoreableInterface_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access;
   use type ScoreableInterface_Access;
   subtype ScoreableInterface_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array;
   use type ScoreableInterface_Access_Array;
   subtype ScoreableInterface_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access;
   use type ScoreableInterface_Access_Array_Access;
   subtype ScoreableInterface_Access_Array_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array;
   use type ScoreableInterface_Access_Array_Access_Array;
   subtype ScoreableInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array_Access;
   use type ScoreableInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PointsLayer_Access is org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References.PointsLayer_Access;
   function "=" (Left, Right : PointsLayer_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References."=";
   subtype PointsLayer_Access_Array is org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References.PointsLayer_Access_Array;
   function "=" (Left, Right : PointsLayer_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References."=";
   subtype PointsLayer_Access_Array_Access is org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References.PointsLayer_Access_Array_Access;
   function "=" (Left, Right : PointsLayer_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References."=";
   function Java_Box (Value : PointsLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References.Java_Box;
   function Java_Unbox_PointsLayer_Access_Array (Value : access Java_Object'Class) return PointsLayer_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References.Java_Unbox_PointsLayer_Access_Array;
   subtype PointsLayer_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References.PointsLayer_Access_Array_Access_Array;
   function "=" (Left, Right : PointsLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References."=";
   subtype PointsLayer_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References.PointsLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PointsLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References."=";
   function Java_Box (Value : PointsLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References.Java_Box;
   function Java_Unbox_PointsLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return PointsLayer_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package_References.Java_Unbox_PointsLayer_Access_Array_Access_Array;

   type PointsLayer is new AllBinaryLayer with record
      points : Integer;
   end record;

   procedure Initialize (This : in out PointsLayer'Class; points : Integer);
   function Create (points : Integer) return PointsLayer_Access;
   procedure paint (This : in out PointsLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure visit (This : in out PointsLayer; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class);

end org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package;


