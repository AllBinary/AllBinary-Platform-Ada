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
limited with org.allbinary.game.input.TextNotificationUtil_Package;
package org.allbinary.game.input.TextNotificationUtil_Package_References is
   type TextNotificationUtil_Access is access all org.allbinary.game.input.TextNotificationUtil_Package.TextNotificationUtil'Class;
   type TextNotificationUtil_Access_Array is array (Natural range <>) of TextNotificationUtil_Access;
   type TextNotificationUtil_Access_Array_Access is access all TextNotificationUtil_Access_Array;
   type TextNotificationUtil_Access_Array_Access_Array is array (Natural range <>) of TextNotificationUtil_Access_Array_Access;
   type TextNotificationUtil_Access_Array_Access_Array_Access is access all TextNotificationUtil_Access_Array_Access_Array;
   type TextNotificationUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TextNotificationUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : TextNotificationUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TextNotificationUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TextNotificationUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TextNotificationUtil_Access_Array_Access is (if Value /= null and then Value.all in TextNotificationUtil_Access_Array_Object'Class then TextNotificationUtil_Access_Array_Object'Class (Value.all).Value else null);
   type TextNotificationUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TextNotificationUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TextNotificationUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TextNotificationUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TextNotificationUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TextNotificationUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TextNotificationUtil_Access_Array_Access_Array_Object'Class then TextNotificationUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.TextNotificationUtil_Package_References;

with org.allbinary.game.input.TextNotificationUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References;

package org.allbinary.game.input.TextNotificationUtil_Package is

   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package Reference_Types is
   subtype GameNotificationEventHandler_Access is org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References.GameNotificationEventHandler_Access;
   use type GameNotificationEventHandler_Access;
   subtype GameNotificationEventHandler_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References.GameNotificationEventHandler_Access_Array;
   use type GameNotificationEventHandler_Access_Array;
   subtype GameNotificationEventHandler_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References.GameNotificationEventHandler_Access_Array_Access;
   use type GameNotificationEventHandler_Access_Array_Access;
   subtype GameNotificationEventHandler_Access_Array_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References.GameNotificationEventHandler_Access_Array_Access_Array;
   use type GameNotificationEventHandler_Access_Array_Access_Array;
   subtype GameNotificationEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References.GameNotificationEventHandler_Access_Array_Access_Array_Access;
   use type GameNotificationEventHandler_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TextNotificationUtil_Access is org.allbinary.game.input.TextNotificationUtil_Package_References.TextNotificationUtil_Access;
   function "=" (Left, Right : TextNotificationUtil_Access) return Boolean renames org.allbinary.game.input.TextNotificationUtil_Package_References."=";
   subtype TextNotificationUtil_Access_Array is org.allbinary.game.input.TextNotificationUtil_Package_References.TextNotificationUtil_Access_Array;
   function "=" (Left, Right : TextNotificationUtil_Access_Array) return Boolean renames org.allbinary.game.input.TextNotificationUtil_Package_References."=";
   subtype TextNotificationUtil_Access_Array_Access is org.allbinary.game.input.TextNotificationUtil_Package_References.TextNotificationUtil_Access_Array_Access;
   function "=" (Left, Right : TextNotificationUtil_Access_Array_Access) return Boolean renames org.allbinary.game.input.TextNotificationUtil_Package_References."=";
   function Java_Box (Value : TextNotificationUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.TextNotificationUtil_Package_References.Java_Box;
   function Java_Unbox_TextNotificationUtil_Access_Array (Value : access Java_Object'Class) return TextNotificationUtil_Access_Array_Access renames org.allbinary.game.input.TextNotificationUtil_Package_References.Java_Unbox_TextNotificationUtil_Access_Array;
   subtype TextNotificationUtil_Access_Array_Access_Array is org.allbinary.game.input.TextNotificationUtil_Package_References.TextNotificationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TextNotificationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.TextNotificationUtil_Package_References."=";
   subtype TextNotificationUtil_Access_Array_Access_Array_Access is org.allbinary.game.input.TextNotificationUtil_Package_References.TextNotificationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TextNotificationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.TextNotificationUtil_Package_References."=";
   function Java_Box (Value : TextNotificationUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.TextNotificationUtil_Package_References.Java_Box;
   function Java_Unbox_TextNotificationUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return TextNotificationUtil_Access_Array_Access_Array_Access renames org.allbinary.game.input.TextNotificationUtil_Package_References.Java_Unbox_TextNotificationUtil_Access_Array_Access_Array;

   type TextNotificationUtil is new Java_Object with record
      TWO : Integer;
      FALSE : Boolean;
      gameNotificationEventHandler : GameNotificationEventHandler_Access;
   end record;
   instance : TextNotificationUtil_Access;

   procedure Initialize (This : in out TextNotificationUtil'Class);
   function Create return TextNotificationUtil_Access;
   function getInstance return TextNotificationUtil_Access;
   procedure fireError (This : in out TextNotificationUtil; message : Unbounded_String);
   procedure fireNew (This : in out TextNotificationUtil; message : Unbounded_String);
   procedure fireSuccess (This : in out TextNotificationUtil; message : Unbounded_String);
   procedure fire (This : in out TextNotificationUtil; message : Unbounded_String);

end org.allbinary.game.input.TextNotificationUtil_Package;


