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
limited with org.allbinary.game.displayable.RepaintBehavior_Package;
package org.allbinary.game.displayable.RepaintBehavior_Package_References is
   type RepaintBehavior_Access is access all org.allbinary.game.displayable.RepaintBehavior_Package.RepaintBehavior'Class;
   type RepaintBehavior_Access_Array is array (Natural range <>) of RepaintBehavior_Access;
   type RepaintBehavior_Access_Array_Access is access all RepaintBehavior_Access_Array;
   type RepaintBehavior_Access_Array_Access_Array is array (Natural range <>) of RepaintBehavior_Access_Array_Access;
   type RepaintBehavior_Access_Array_Access_Array_Access is access all RepaintBehavior_Access_Array_Access_Array;
   type RepaintBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RepaintBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : RepaintBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RepaintBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RepaintBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RepaintBehavior_Access_Array_Access is (if Value /= null and then Value.all in RepaintBehavior_Access_Array_Object'Class then RepaintBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type RepaintBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RepaintBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RepaintBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RepaintBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RepaintBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RepaintBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RepaintBehavior_Access_Array_Access_Array_Object'Class then RepaintBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.RepaintBehavior_Package_References;

with org.allbinary.game.displayable.RepaintBehavior_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.displayable.RepaintBehavior_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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


   subtype RepaintBehavior_Access is org.allbinary.game.displayable.RepaintBehavior_Package_References.RepaintBehavior_Access;
   function "=" (Left, Right : RepaintBehavior_Access) return Boolean renames org.allbinary.game.displayable.RepaintBehavior_Package_References."=";
   subtype RepaintBehavior_Access_Array is org.allbinary.game.displayable.RepaintBehavior_Package_References.RepaintBehavior_Access_Array;
   function "=" (Left, Right : RepaintBehavior_Access_Array) return Boolean renames org.allbinary.game.displayable.RepaintBehavior_Package_References."=";
   subtype RepaintBehavior_Access_Array_Access is org.allbinary.game.displayable.RepaintBehavior_Package_References.RepaintBehavior_Access_Array_Access;
   function "=" (Left, Right : RepaintBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.RepaintBehavior_Package_References."=";
   function Java_Box (Value : RepaintBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.RepaintBehavior_Package_References.Java_Box;
   function Java_Unbox_RepaintBehavior_Access_Array (Value : access Java_Object'Class) return RepaintBehavior_Access_Array_Access renames org.allbinary.game.displayable.RepaintBehavior_Package_References.Java_Unbox_RepaintBehavior_Access_Array;
   subtype RepaintBehavior_Access_Array_Access_Array is org.allbinary.game.displayable.RepaintBehavior_Package_References.RepaintBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : RepaintBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.RepaintBehavior_Package_References."=";
   subtype RepaintBehavior_Access_Array_Access_Array_Access is org.allbinary.game.displayable.RepaintBehavior_Package_References.RepaintBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RepaintBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.RepaintBehavior_Package_References."=";
   function Java_Box (Value : RepaintBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.RepaintBehavior_Package_References.Java_Box;
   function Java_Unbox_RepaintBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return RepaintBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.RepaintBehavior_Package_References.Java_Unbox_RepaintBehavior_Access_Array_Access_Array;

   type RepaintBehavior is new Java_Object with record
      logUtil : LogUtil_Access;
      NAME : Unbounded_String;
   end record;
   instance : RepaintBehavior_Access;

   procedure Initialize (This : in out RepaintBehavior'Class);
   function Create return RepaintBehavior_Access;
   function getInstance return RepaintBehavior_Access;
   procedure repaint (This : in out RepaintBehavior; canvas_Param : access Canvas_Package.Canvas'Class);
   procedure onChangeRepaint (This : in out RepaintBehavior; canvas_Param : access Canvas_Package.Canvas'Class);

end org.allbinary.game.displayable.RepaintBehavior_Package;


