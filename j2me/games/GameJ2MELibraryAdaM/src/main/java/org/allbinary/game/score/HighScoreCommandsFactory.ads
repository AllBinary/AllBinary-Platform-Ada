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
limited with org.allbinary.game.score.HighScoreCommandsFactory_Package;
package org.allbinary.game.score.HighScoreCommandsFactory_Package_References is
   type HighScoreCommandsFactory_Access is access all org.allbinary.game.score.HighScoreCommandsFactory_Package.HighScoreCommandsFactory'Class;
   type HighScoreCommandsFactory_Access_Array is array (Natural range <>) of HighScoreCommandsFactory_Access;
   type HighScoreCommandsFactory_Access_Array_Access is access all HighScoreCommandsFactory_Access_Array;
   type HighScoreCommandsFactory_Access_Array_Access_Array is array (Natural range <>) of HighScoreCommandsFactory_Access_Array_Access;
   type HighScoreCommandsFactory_Access_Array_Access_Array_Access is access all HighScoreCommandsFactory_Access_Array_Access_Array;
   type HighScoreCommandsFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoreCommandsFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoreCommandsFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoreCommandsFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoreCommandsFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoreCommandsFactory_Access_Array_Access is (if Value /= null and then Value.all in HighScoreCommandsFactory_Access_Array_Object'Class then HighScoreCommandsFactory_Access_Array_Object'Class (Value.all).Value else null);
   type HighScoreCommandsFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoreCommandsFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoreCommandsFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoreCommandsFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoreCommandsFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoreCommandsFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HighScoreCommandsFactory_Access_Array_Access_Array_Object'Class then HighScoreCommandsFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.HighScoreCommandsFactory_Package_References;

with org.allbinary.game.score.HighScoreCommandsFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.score.HighScoreCommandsBaseFactory_Package; use org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;

package org.allbinary.game.score.HighScoreCommandsFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HighScoreCommandsFactory_Access is org.allbinary.game.score.HighScoreCommandsFactory_Package_References.HighScoreCommandsFactory_Access;
   function "=" (Left, Right : HighScoreCommandsFactory_Access) return Boolean renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References."=";
   subtype HighScoreCommandsFactory_Access_Array is org.allbinary.game.score.HighScoreCommandsFactory_Package_References.HighScoreCommandsFactory_Access_Array;
   function "=" (Left, Right : HighScoreCommandsFactory_Access_Array) return Boolean renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References."=";
   subtype HighScoreCommandsFactory_Access_Array_Access is org.allbinary.game.score.HighScoreCommandsFactory_Package_References.HighScoreCommandsFactory_Access_Array_Access;
   function "=" (Left, Right : HighScoreCommandsFactory_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References."=";
   function Java_Box (Value : HighScoreCommandsFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References.Java_Box;
   function Java_Unbox_HighScoreCommandsFactory_Access_Array (Value : access Java_Object'Class) return HighScoreCommandsFactory_Access_Array_Access renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References.Java_Unbox_HighScoreCommandsFactory_Access_Array;
   subtype HighScoreCommandsFactory_Access_Array_Access_Array is org.allbinary.game.score.HighScoreCommandsFactory_Package_References.HighScoreCommandsFactory_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoreCommandsFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References."=";
   subtype HighScoreCommandsFactory_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoreCommandsFactory_Package_References.HighScoreCommandsFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoreCommandsFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References."=";
   function Java_Box (Value : HighScoreCommandsFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References.Java_Box;
   function Java_Unbox_HighScoreCommandsFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return HighScoreCommandsFactory_Access_Array_Access_Array_Access renames org.allbinary.game.score.HighScoreCommandsFactory_Package_References.Java_Unbox_HighScoreCommandsFactory_Access_Array_Access_Array;

   type HighScoreCommandsFactory is new HighScoreCommandsBaseFactory with null record;
   instance : HighScoreCommandsFactory_Access;

   procedure Initialize (This : in out HighScoreCommandsFactory'Class);
   function Create return HighScoreCommandsFactory_Access;
   function getInstance return HighScoreCommandsFactory_Access;

end org.allbinary.game.score.HighScoreCommandsFactory_Package;


