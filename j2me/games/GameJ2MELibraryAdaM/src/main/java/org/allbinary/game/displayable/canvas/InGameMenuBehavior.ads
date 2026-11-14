-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package;
package org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References is
   type InGameMenuBehavior_Access is access all org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package.InGameMenuBehavior'Class;
   type InGameMenuBehavior_Access_Array is array (Natural range <>) of InGameMenuBehavior_Access;
   type InGameMenuBehavior_Access_Array_Access is access all InGameMenuBehavior_Access_Array;
   type InGameMenuBehavior_Access_Array_Access_Array is array (Natural range <>) of InGameMenuBehavior_Access_Array_Access;
   type InGameMenuBehavior_Access_Array_Access_Array_Access is access all InGameMenuBehavior_Access_Array_Access_Array;
   type InGameMenuBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InGameMenuBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : InGameMenuBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InGameMenuBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InGameMenuBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InGameMenuBehavior_Access_Array_Access is (if Value /= null and then Value.all in InGameMenuBehavior_Access_Array_Object'Class then InGameMenuBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type InGameMenuBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InGameMenuBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InGameMenuBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InGameMenuBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InGameMenuBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InGameMenuBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InGameMenuBehavior_Access_Array_Access_Array_Object'Class then InGameMenuBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References;

with org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package; use org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package is

   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package Reference_Types is
   subtype DisplayChangeEvent_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access;
   use type DisplayChangeEvent_Access;
   subtype DisplayChangeEvent_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array;
   use type DisplayChangeEvent_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access;
   subtype DisplayChangeEvent_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array;
   use type DisplayChangeEvent_Access_Array_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access_Array_Access;
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


   subtype InGameMenuBehavior_Access is org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References.InGameMenuBehavior_Access;
   function "=" (Left, Right : InGameMenuBehavior_Access) return Boolean renames org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References."=";
   subtype InGameMenuBehavior_Access_Array is org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References.InGameMenuBehavior_Access_Array;
   function "=" (Left, Right : InGameMenuBehavior_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References."=";
   subtype InGameMenuBehavior_Access_Array_Access is org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References.InGameMenuBehavior_Access_Array_Access;
   function "=" (Left, Right : InGameMenuBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References."=";
   function Java_Box (Value : InGameMenuBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References.Java_Box;
   function Java_Unbox_InGameMenuBehavior_Access_Array (Value : access Java_Object'Class) return InGameMenuBehavior_Access_Array_Access renames org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References.Java_Unbox_InGameMenuBehavior_Access_Array;
   subtype InGameMenuBehavior_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References.InGameMenuBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : InGameMenuBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References."=";
   subtype InGameMenuBehavior_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References.InGameMenuBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InGameMenuBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References."=";
   function Java_Box (Value : InGameMenuBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References.Java_Box;
   function Java_Unbox_InGameMenuBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return InGameMenuBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package_References.Java_Unbox_InGameMenuBehavior_Access_Array_Access_Array;

   type InGameMenuBehavior is new BaseMenuBehavior with null record;
   instanceC : InGameMenuBehavior_Access;

   procedure Initialize (This : in out InGameMenuBehavior'Class);
   function Create return InGameMenuBehavior_Access;
   function getInstance return InGameMenuBehavior_Access;
   procedure onDisplayChangeEvent (This : in out InGameMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class);
   procedure initSpecialPaint (This : in out InGameMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure initMenu (This : in out InGameMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure updateMenu (This : in out InGameMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure popupMenu (This : in out InGameMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure closeMenu (This : in out InGameMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);

end org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package;


