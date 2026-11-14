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
limited with org.allbinary.game.paint.MainGameDemoStatePaintable_Package;
package org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References is
   type MainGameDemoStatePaintable_Access is access all org.allbinary.game.paint.MainGameDemoStatePaintable_Package.MainGameDemoStatePaintable'Class;
   type MainGameDemoStatePaintable_Access_Array is array (Natural range <>) of MainGameDemoStatePaintable_Access;
   type MainGameDemoStatePaintable_Access_Array_Access is access all MainGameDemoStatePaintable_Access_Array;
   type MainGameDemoStatePaintable_Access_Array_Access_Array is array (Natural range <>) of MainGameDemoStatePaintable_Access_Array_Access;
   type MainGameDemoStatePaintable_Access_Array_Access_Array_Access is access all MainGameDemoStatePaintable_Access_Array_Access_Array;
   type MainGameDemoStatePaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MainGameDemoStatePaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : MainGameDemoStatePaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MainGameDemoStatePaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MainGameDemoStatePaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MainGameDemoStatePaintable_Access_Array_Access is (if Value /= null and then Value.all in MainGameDemoStatePaintable_Access_Array_Object'Class then MainGameDemoStatePaintable_Access_Array_Object'Class (Value.all).Value else null);
   type MainGameDemoStatePaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MainGameDemoStatePaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MainGameDemoStatePaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MainGameDemoStatePaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MainGameDemoStatePaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MainGameDemoStatePaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MainGameDemoStatePaintable_Access_Array_Access_Array_Object'Class then MainGameDemoStatePaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References;

with org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References;
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

package org.allbinary.game.paint.MainGameDemoStatePaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
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


   subtype MainGameDemoStatePaintable_Access is org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References.MainGameDemoStatePaintable_Access;
   function "=" (Left, Right : MainGameDemoStatePaintable_Access) return Boolean renames org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References."=";
   subtype MainGameDemoStatePaintable_Access_Array is org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References.MainGameDemoStatePaintable_Access_Array;
   function "=" (Left, Right : MainGameDemoStatePaintable_Access_Array) return Boolean renames org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References."=";
   subtype MainGameDemoStatePaintable_Access_Array_Access is org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References.MainGameDemoStatePaintable_Access_Array_Access;
   function "=" (Left, Right : MainGameDemoStatePaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References."=";
   function Java_Box (Value : MainGameDemoStatePaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References.Java_Box;
   function Java_Unbox_MainGameDemoStatePaintable_Access_Array (Value : access Java_Object'Class) return MainGameDemoStatePaintable_Access_Array_Access renames org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References.Java_Unbox_MainGameDemoStatePaintable_Access_Array;
   subtype MainGameDemoStatePaintable_Access_Array_Access_Array is org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References.MainGameDemoStatePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : MainGameDemoStatePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References."=";
   subtype MainGameDemoStatePaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References.MainGameDemoStatePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MainGameDemoStatePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References."=";
   function Java_Box (Value : MainGameDemoStatePaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References.Java_Box;
   function Java_Unbox_MainGameDemoStatePaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return MainGameDemoStatePaintable_Access_Array_Access_Array_Access renames org.allbinary.game.paint.MainGameDemoStatePaintable_Package_References.Java_Unbox_MainGameDemoStatePaintable_Access_Array_Access_Array;

   type MainGameDemoStatePaintable is new Paintable with record
      ownershipPaintableInterface : Paintable_Access;
      menuPaintableInterface : Paintable_Access;
   end record;

   procedure Initialize (This : in out MainGameDemoStatePaintable'Class; ownershipPaintableInterface_Param : access Paintable_Package.Paintable'Class; menuPaintableInterface_Param : access Paintable_Package.Paintable'Class);
   function Create (ownershipPaintableInterface_Param : access Paintable_Package.Paintable'Class; menuPaintableInterface_Param : access Paintable_Package.Paintable'Class) return MainGameDemoStatePaintable_Access;
   procedure paint (This : in out MainGameDemoStatePaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   function getOwnershipPaintableInterface (This : in out MainGameDemoStatePaintable) return Paintable_Access;
   function getMenuPaintableInterface (This : in out MainGameDemoStatePaintable) return Paintable_Access;

end org.allbinary.game.paint.MainGameDemoStatePaintable_Package;


