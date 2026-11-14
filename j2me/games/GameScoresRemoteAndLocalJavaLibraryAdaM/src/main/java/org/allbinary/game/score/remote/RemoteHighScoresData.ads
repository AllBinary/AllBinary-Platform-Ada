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
limited with org.allbinary.game.score.remote.RemoteHighScoresData_Package;
package org.allbinary.game.score.remote.RemoteHighScoresData_Package_References is
   type RemoteHighScoresData_Access is access all org.allbinary.game.score.remote.RemoteHighScoresData_Package.RemoteHighScoresData'Class;
   type RemoteHighScoresData_Access_Array is array (Natural range <>) of RemoteHighScoresData_Access;
   type RemoteHighScoresData_Access_Array_Access is access all RemoteHighScoresData_Access_Array;
   type RemoteHighScoresData_Access_Array_Access_Array is array (Natural range <>) of RemoteHighScoresData_Access_Array_Access;
   type RemoteHighScoresData_Access_Array_Access_Array_Access is access all RemoteHighScoresData_Access_Array_Access_Array;
   type RemoteHighScoresData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RemoteHighScoresData_Access_Array_Access;
   end record;
   function Java_Box (Value : RemoteHighScoresData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RemoteHighScoresData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RemoteHighScoresData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RemoteHighScoresData_Access_Array_Access is (if Value /= null and then Value.all in RemoteHighScoresData_Access_Array_Object'Class then RemoteHighScoresData_Access_Array_Object'Class (Value.all).Value else null);
   type RemoteHighScoresData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RemoteHighScoresData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RemoteHighScoresData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RemoteHighScoresData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RemoteHighScoresData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RemoteHighScoresData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RemoteHighScoresData_Access_Array_Access_Array_Object'Class then RemoteHighScoresData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.remote.RemoteHighScoresData_Package_References;

with org.allbinary.game.score.remote.RemoteHighScoresData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.score.remote.RemoteHighScoresData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RemoteHighScoresData_Access is org.allbinary.game.score.remote.RemoteHighScoresData_Package_References.RemoteHighScoresData_Access;
   function "=" (Left, Right : RemoteHighScoresData_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresData_Package_References."=";
   subtype RemoteHighScoresData_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresData_Package_References.RemoteHighScoresData_Access_Array;
   function "=" (Left, Right : RemoteHighScoresData_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresData_Package_References."=";
   subtype RemoteHighScoresData_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresData_Package_References.RemoteHighScoresData_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresData_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresData_Package_References."=";
   function Java_Box (Value : RemoteHighScoresData_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.remote.RemoteHighScoresData_Package_References.Java_Box;
   function Java_Unbox_RemoteHighScoresData_Access_Array (Value : access Java_Object'Class) return RemoteHighScoresData_Access_Array_Access renames org.allbinary.game.score.remote.RemoteHighScoresData_Package_References.Java_Unbox_RemoteHighScoresData_Access_Array;
   subtype RemoteHighScoresData_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresData_Package_References.RemoteHighScoresData_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteHighScoresData_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresData_Package_References."=";
   subtype RemoteHighScoresData_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresData_Package_References.RemoteHighScoresData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresData_Package_References."=";
   function Java_Box (Value : RemoteHighScoresData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.remote.RemoteHighScoresData_Package_References.Java_Box;
   function Java_Unbox_RemoteHighScoresData_Access_Array_Access_Array (Value : access Java_Object'Class) return RemoteHighScoresData_Access_Array_Access_Array_Access renames org.allbinary.game.score.remote.RemoteHighScoresData_Package_References.Java_Unbox_RemoteHighScoresData_Access_Array_Access_Array;

   type RemoteHighScoresData is new Java_Object with record
      HIGH_SCORES : Unbounded_String;
      CUSTOMER_USER_NAME : Unbounded_String;
      DISPLAY_NAME : Unbounded_String;
      SCORE : Unbounded_String;
      GAME_INFO : Unbounded_String;
      GAME_CONFIGURATION : Unbounded_String;
   end record;
   SINGLETON : RemoteHighScoresData_Access;

   procedure Initialize (This : in out RemoteHighScoresData'Class);
   function Create return RemoteHighScoresData_Access;
   function getInstance return RemoteHighScoresData_Access;

end org.allbinary.game.score.remote.RemoteHighScoresData_Package;


