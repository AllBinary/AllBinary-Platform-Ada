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
limited with org.allbinary.game.score.HighScoreCommands_Package;
package org.allbinary.game.score.HighScoreCommands_Package_References is
   type HighScoreCommands_Access is access all org.allbinary.game.score.HighScoreCommands_Package.HighScoreCommands'Class;
   type HighScoreCommands_Access_Array is array (Natural range <>) of HighScoreCommands_Access;
   type HighScoreCommands_Access_Array_Access is access all HighScoreCommands_Access_Array;
   type HighScoreCommands_Access_Array_Access_Array is array (Natural range <>) of HighScoreCommands_Access_Array_Access;
   type HighScoreCommands_Access_Array_Access_Array_Access is access all HighScoreCommands_Access_Array_Access_Array;
   type HighScoreCommands_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoreCommands_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoreCommands_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoreCommands_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoreCommands_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoreCommands_Access_Array_Access is (if Value /= null and then Value.all in HighScoreCommands_Access_Array_Object'Class then HighScoreCommands_Access_Array_Object'Class (Value.all).Value else null);
   type HighScoreCommands_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoreCommands_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoreCommands_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoreCommands_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoreCommands_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoreCommands_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HighScoreCommands_Access_Array_Access_Array_Object'Class then HighScoreCommands_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.HighScoreCommands_Package_References;

with org.allbinary.game.score.HighScoreCommands_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;

package org.allbinary.game.score.HighScoreCommands_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package Reference_Types is
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   use type Command_Access;
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   use type Command_Access_Array;
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   use type Command_Access_Array_Access;
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   use type Command_Access_Array_Access_Array;
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   use type Command_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HighScoreCommands_Access is org.allbinary.game.score.HighScoreCommands_Package_References.HighScoreCommands_Access;
   function "=" (Left, Right : HighScoreCommands_Access) return Boolean renames org.allbinary.game.score.HighScoreCommands_Package_References."=";
   subtype HighScoreCommands_Access_Array is org.allbinary.game.score.HighScoreCommands_Package_References.HighScoreCommands_Access_Array;
   function "=" (Left, Right : HighScoreCommands_Access_Array) return Boolean renames org.allbinary.game.score.HighScoreCommands_Package_References."=";
   subtype HighScoreCommands_Access_Array_Access is org.allbinary.game.score.HighScoreCommands_Package_References.HighScoreCommands_Access_Array_Access;
   function "=" (Left, Right : HighScoreCommands_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoreCommands_Package_References."=";
   function Java_Box (Value : HighScoreCommands_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoreCommands_Package_References.Java_Box;
   function Java_Unbox_HighScoreCommands_Access_Array (Value : access Java_Object'Class) return HighScoreCommands_Access_Array_Access renames org.allbinary.game.score.HighScoreCommands_Package_References.Java_Unbox_HighScoreCommands_Access_Array;
   subtype HighScoreCommands_Access_Array_Access_Array is org.allbinary.game.score.HighScoreCommands_Package_References.HighScoreCommands_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoreCommands_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoreCommands_Package_References."=";
   subtype HighScoreCommands_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoreCommands_Package_References.HighScoreCommands_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoreCommands_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoreCommands_Package_References."=";
   function Java_Box (Value : HighScoreCommands_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoreCommands_Package_References.Java_Box;
   function Java_Unbox_HighScoreCommands_Access_Array_Access_Array (Value : access Java_Object'Class) return HighScoreCommands_Access_Array_Access_Array_Access renames org.allbinary.game.score.HighScoreCommands_Package_References.Java_Unbox_HighScoreCommands_Access_Array_Access_Array;

   type HighScoreCommands is new Java_Object with record
      DISPLAY : Command_Access;
      PERSONAL : Command_Access;
      WORLD : Command_Access;
   end record;
   instance : HighScoreCommands_Access;

   procedure Initialize (This : in out HighScoreCommands'Class);
   function Create return HighScoreCommands_Access;
   function getInstance return HighScoreCommands_Access;

end org.allbinary.game.score.HighScoreCommands_Package;


