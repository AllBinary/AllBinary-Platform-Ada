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
limited with org.allbinary.game.paint.BasicGameDemoPaintable_Package;
package org.allbinary.game.paint.BasicGameDemoPaintable_Package_References is
   type BasicGameDemoPaintable_Access is access all org.allbinary.game.paint.BasicGameDemoPaintable_Package.BasicGameDemoPaintable'Class;
   type BasicGameDemoPaintable_Access_Array is array (Natural range <>) of BasicGameDemoPaintable_Access;
   type BasicGameDemoPaintable_Access_Array_Access is access all BasicGameDemoPaintable_Access_Array;
   type BasicGameDemoPaintable_Access_Array_Access_Array is array (Natural range <>) of BasicGameDemoPaintable_Access_Array_Access;
   type BasicGameDemoPaintable_Access_Array_Access_Array_Access is access all BasicGameDemoPaintable_Access_Array_Access_Array;
   type BasicGameDemoPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGameDemoPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGameDemoPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGameDemoPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGameDemoPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGameDemoPaintable_Access_Array_Access is (if Value /= null and then Value.all in BasicGameDemoPaintable_Access_Array_Object'Class then BasicGameDemoPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type BasicGameDemoPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGameDemoPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGameDemoPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGameDemoPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGameDemoPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGameDemoPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicGameDemoPaintable_Access_Array_Access_Array_Object'Class then BasicGameDemoPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.paint.BasicGameDemoPaintable_Package_References;

with org.allbinary.game.paint.BasicGameDemoPaintable_Package_References;
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
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.StatePaintable_Package; use org.allbinary.graphics.paint.StatePaintable_Package;

package org.allbinary.game.paint.BasicGameDemoPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package StatePaintable_Package renames Standard.org.allbinary.graphics.paint.StatePaintable_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicGameDemoPaintable_Access is org.allbinary.game.paint.BasicGameDemoPaintable_Package_References.BasicGameDemoPaintable_Access;
   function "=" (Left, Right : BasicGameDemoPaintable_Access) return Boolean renames org.allbinary.game.paint.BasicGameDemoPaintable_Package_References."=";
   subtype BasicGameDemoPaintable_Access_Array is org.allbinary.game.paint.BasicGameDemoPaintable_Package_References.BasicGameDemoPaintable_Access_Array;
   function "=" (Left, Right : BasicGameDemoPaintable_Access_Array) return Boolean renames org.allbinary.game.paint.BasicGameDemoPaintable_Package_References."=";
   subtype BasicGameDemoPaintable_Access_Array_Access is org.allbinary.game.paint.BasicGameDemoPaintable_Package_References.BasicGameDemoPaintable_Access_Array_Access;
   function "=" (Left, Right : BasicGameDemoPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.BasicGameDemoPaintable_Package_References."=";
   function Java_Box (Value : BasicGameDemoPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.paint.BasicGameDemoPaintable_Package_References.Java_Box;
   function Java_Unbox_BasicGameDemoPaintable_Access_Array (Value : access Java_Object'Class) return BasicGameDemoPaintable_Access_Array_Access renames org.allbinary.game.paint.BasicGameDemoPaintable_Package_References.Java_Unbox_BasicGameDemoPaintable_Access_Array;
   subtype BasicGameDemoPaintable_Access_Array_Access_Array is org.allbinary.game.paint.BasicGameDemoPaintable_Package_References.BasicGameDemoPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGameDemoPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.BasicGameDemoPaintable_Package_References."=";
   subtype BasicGameDemoPaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.BasicGameDemoPaintable_Package_References.BasicGameDemoPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGameDemoPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.BasicGameDemoPaintable_Package_References."=";
   function Java_Box (Value : BasicGameDemoPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.paint.BasicGameDemoPaintable_Package_References.Java_Box;
   function Java_Unbox_BasicGameDemoPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicGameDemoPaintable_Access_Array_Access_Array_Access renames org.allbinary.game.paint.BasicGameDemoPaintable_Package_References.Java_Unbox_BasicGameDemoPaintable_Access_Array_Access_Array;

   type BasicGameDemoPaintable is new StatePaintable with record
      mainDemoStatePaintable : Paintable_Access;
      ownershipPaintable : Paintable_Access;
      helpPaintableInterface : Paintable_Access;
      currentStatePaintable : Paintable_Access;
   end record;

   procedure Initialize (This : in out BasicGameDemoPaintable'Class; mainDemoStatePaintable_Param : access Paintable_Package.Paintable'Class; ownershipPaintable_Param : access Paintable_Package.Paintable'Class; helpPaintableInterface_Param : access Paintable_Package.Paintable'Class);
   function Create (mainDemoStatePaintable_Param : access Paintable_Package.Paintable'Class; ownershipPaintable_Param : access Paintable_Package.Paintable'Class; helpPaintableInterface_Param : access Paintable_Package.Paintable'Class) return BasicGameDemoPaintable_Access;
   procedure setState (This : in out BasicGameDemoPaintable; state : Integer);
   procedure paint (This : in out BasicGameDemoPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   function getHelpPaintableInterface (This : in out BasicGameDemoPaintable) return Paintable_Access;
   procedure setCurrentStatePaintable (This : in out BasicGameDemoPaintable; currentStatePaintable_Param : access Paintable_Package.Paintable'Class);
   function getCurrentStatePaintable (This : in out BasicGameDemoPaintable) return Paintable_Access;
   function getMainDemoStatePaintable (This : in out BasicGameDemoPaintable) return Paintable_Access;

end org.allbinary.game.paint.BasicGameDemoPaintable_Package;


