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
limited with org.allbinary.game.displayable.RepaintRunnable_Package;
package org.allbinary.game.displayable.RepaintRunnable_Package_References is
   type RepaintRunnable_Access is access all org.allbinary.game.displayable.RepaintRunnable_Package.RepaintRunnable'Class;
   type RepaintRunnable_Access_Array is array (Natural range <>) of RepaintRunnable_Access;
   type RepaintRunnable_Access_Array_Access is access all RepaintRunnable_Access_Array;
   type RepaintRunnable_Access_Array_Access_Array is array (Natural range <>) of RepaintRunnable_Access_Array_Access;
   type RepaintRunnable_Access_Array_Access_Array_Access is access all RepaintRunnable_Access_Array_Access_Array;
   type RepaintRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RepaintRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : RepaintRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RepaintRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RepaintRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RepaintRunnable_Access_Array_Access is (if Value /= null and then Value.all in RepaintRunnable_Access_Array_Object'Class then RepaintRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type RepaintRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RepaintRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RepaintRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RepaintRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RepaintRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RepaintRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RepaintRunnable_Access_Array_Access_Array_Object'Class then RepaintRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.RepaintRunnable_Package_References;

with org.allbinary.game.displayable.RepaintRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;

package org.allbinary.game.displayable.RepaintRunnable_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package Reference_Types is
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RepaintRunnable_Access is org.allbinary.game.displayable.RepaintRunnable_Package_References.RepaintRunnable_Access;
   function "=" (Left, Right : RepaintRunnable_Access) return Boolean renames org.allbinary.game.displayable.RepaintRunnable_Package_References."=";
   subtype RepaintRunnable_Access_Array is org.allbinary.game.displayable.RepaintRunnable_Package_References.RepaintRunnable_Access_Array;
   function "=" (Left, Right : RepaintRunnable_Access_Array) return Boolean renames org.allbinary.game.displayable.RepaintRunnable_Package_References."=";
   subtype RepaintRunnable_Access_Array_Access is org.allbinary.game.displayable.RepaintRunnable_Package_References.RepaintRunnable_Access_Array_Access;
   function "=" (Left, Right : RepaintRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.RepaintRunnable_Package_References."=";
   function Java_Box (Value : RepaintRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.RepaintRunnable_Package_References.Java_Box;
   function Java_Unbox_RepaintRunnable_Access_Array (Value : access Java_Object'Class) return RepaintRunnable_Access_Array_Access renames org.allbinary.game.displayable.RepaintRunnable_Package_References.Java_Unbox_RepaintRunnable_Access_Array;
   subtype RepaintRunnable_Access_Array_Access_Array is org.allbinary.game.displayable.RepaintRunnable_Package_References.RepaintRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : RepaintRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.RepaintRunnable_Package_References."=";
   subtype RepaintRunnable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.RepaintRunnable_Package_References.RepaintRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RepaintRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.RepaintRunnable_Package_References."=";
   function Java_Box (Value : RepaintRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.RepaintRunnable_Package_References.Java_Box;
   function Java_Unbox_RepaintRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return RepaintRunnable_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.RepaintRunnable_Package_References.Java_Unbox_RepaintRunnable_Access_Array_Access_Array;

   type RepaintRunnable is new ARunnable with record
      canvas : Canvas_Access;
   end record;

   procedure Initialize (This : in out RepaintRunnable'Class; canvas_Param : access Canvas_Package.Canvas'Class);
   function Create (canvas_Param : access Canvas_Package.Canvas'Class) return RepaintRunnable_Access;
   procedure run (This : in out RepaintRunnable);

end org.allbinary.game.displayable.RepaintRunnable_Package;


