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
limited with org.allbinary.game.layer.pickup.IconLayer_Package;
package org.allbinary.game.layer.pickup.IconLayer_Package_References is
   type IconLayer_Access is access all org.allbinary.game.layer.pickup.IconLayer_Package.IconLayer'Class;
   type IconLayer_Access_Array is array (Natural range <>) of IconLayer_Access;
   type IconLayer_Access_Array_Access is access all IconLayer_Access_Array;
   type IconLayer_Access_Array_Access_Array is array (Natural range <>) of IconLayer_Access_Array_Access;
   type IconLayer_Access_Array_Access_Array_Access is access all IconLayer_Access_Array_Access_Array;
   type IconLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IconLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : IconLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IconLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IconLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IconLayer_Access_Array_Access is (if Value /= null and then Value.all in IconLayer_Access_Array_Object'Class then IconLayer_Access_Array_Object'Class (Value.all).Value else null);
   type IconLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IconLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : IconLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IconLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IconLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IconLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in IconLayer_Access_Array_Access_Array_Object'Class then IconLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.pickup.IconLayer_Package_References;

with org.allbinary.game.layer.pickup.IconLayer_Package_References;
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
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.layer.pickup.IconLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
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
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype IconLayer_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access;
   function "=" (Left, Right : IconLayer_Access) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   subtype IconLayer_Access_Array is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array;
   function "=" (Left, Right : IconLayer_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   subtype IconLayer_Access_Array_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access;
   function "=" (Left, Right : IconLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   function Java_Box (Value : IconLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.IconLayer_Package_References.Java_Box;
   function Java_Unbox_IconLayer_Access_Array (Value : access Java_Object'Class) return IconLayer_Access_Array_Access renames org.allbinary.game.layer.pickup.IconLayer_Package_References.Java_Unbox_IconLayer_Access_Array;
   subtype IconLayer_Access_Array_Access_Array is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access_Array;
   function "=" (Left, Right : IconLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   subtype IconLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IconLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   function Java_Box (Value : IconLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.IconLayer_Package_References.Java_Box;
   function Java_Unbox_IconLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return IconLayer_Access_Array_Access_Array_Access renames org.allbinary.game.layer.pickup.IconLayer_Package_References.Java_Unbox_IconLayer_Access_Array_Access_Array;

   type IconLayer is new AllBinaryLayer with record
      animationInterface : Animation_Access;
   end record;
   NULL_ICON_LAYER : IconLayer_Access;

   procedure Initialize (This : in out IconLayer'Class; animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer) return IconLayer_Access;
   procedure paint (This : in out IconLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out IconLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   function getAnimationInterface (This : in out IconLayer) return Animation_Access;

end org.allbinary.game.layer.pickup.IconLayer_Package;


