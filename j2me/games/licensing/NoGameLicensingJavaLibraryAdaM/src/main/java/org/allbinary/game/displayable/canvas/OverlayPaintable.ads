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
limited with org.allbinary.game.displayable.canvas.OverlayPaintable_Package;
package org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References is
   type OverlayPaintable_Access is access all org.allbinary.game.displayable.canvas.OverlayPaintable_Package.OverlayPaintable'Class;
   type OverlayPaintable_Access_Array is array (Natural range <>) of OverlayPaintable_Access;
   type OverlayPaintable_Access_Array_Access is access all OverlayPaintable_Access_Array;
   type OverlayPaintable_Access_Array_Access_Array is array (Natural range <>) of OverlayPaintable_Access_Array_Access;
   type OverlayPaintable_Access_Array_Access_Array_Access is access all OverlayPaintable_Access_Array_Access_Array;
   type OverlayPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OverlayPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : OverlayPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OverlayPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OverlayPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OverlayPaintable_Access_Array_Access is (if Value /= null and then Value.all in OverlayPaintable_Access_Array_Object'Class then OverlayPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type OverlayPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OverlayPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OverlayPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OverlayPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OverlayPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OverlayPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OverlayPaintable_Access_Array_Access_Array_Object'Class then OverlayPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References;

with org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References;
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
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.displayable.canvas.OverlayPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package InitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.InitUpdatePaintable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OverlayPaintable_Access is org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References.OverlayPaintable_Access;
   function "=" (Left, Right : OverlayPaintable_Access) return Boolean renames org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References."=";
   subtype OverlayPaintable_Access_Array is org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References.OverlayPaintable_Access_Array;
   function "=" (Left, Right : OverlayPaintable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References."=";
   subtype OverlayPaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References.OverlayPaintable_Access_Array_Access;
   function "=" (Left, Right : OverlayPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References."=";
   function Java_Box (Value : OverlayPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References.Java_Box;
   function Java_Unbox_OverlayPaintable_Access_Array (Value : access Java_Object'Class) return OverlayPaintable_Access_Array_Access renames org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References.Java_Unbox_OverlayPaintable_Access_Array;
   subtype OverlayPaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References.OverlayPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : OverlayPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References."=";
   subtype OverlayPaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References.OverlayPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OverlayPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References."=";
   function Java_Box (Value : OverlayPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References.Java_Box;
   function Java_Unbox_OverlayPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return OverlayPaintable_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.OverlayPaintable_Package_References.Java_Unbox_OverlayPaintable_Access_Array_Access_Array;

   type OverlayPaintable is new InitUpdatePaintable with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out OverlayPaintable'Class);
   function Create return OverlayPaintable_Access;
   procedure update (This : in out OverlayPaintable);
   procedure paint (This : in out OverlayPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.OverlayPaintable_Package;


