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
limited with org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
package org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References is
   type NullHighScoresSingletonFactory_Access is access all org.allbinary.game.score.NullHighScoresSingletonFactory_Package.NullHighScoresSingletonFactory'Class;
   type NullHighScoresSingletonFactory_Access_Array is array (Natural range <>) of NullHighScoresSingletonFactory_Access;
   type NullHighScoresSingletonFactory_Access_Array_Access is access all NullHighScoresSingletonFactory_Access_Array;
   type NullHighScoresSingletonFactory_Access_Array_Access_Array is array (Natural range <>) of NullHighScoresSingletonFactory_Access_Array_Access;
   type NullHighScoresSingletonFactory_Access_Array_Access_Array_Access is access all NullHighScoresSingletonFactory_Access_Array_Access_Array;
   type NullHighScoresSingletonFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullHighScoresSingletonFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : NullHighScoresSingletonFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullHighScoresSingletonFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullHighScoresSingletonFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullHighScoresSingletonFactory_Access_Array_Access is (if Value /= null and then Value.all in NullHighScoresSingletonFactory_Access_Array_Object'Class then NullHighScoresSingletonFactory_Access_Array_Object'Class (Value.all).Value else null);
   type NullHighScoresSingletonFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullHighScoresSingletonFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullHighScoresSingletonFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullHighScoresSingletonFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullHighScoresSingletonFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullHighScoresSingletonFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullHighScoresSingletonFactory_Access_Array_Access_Array_Object'Class then NullHighScoresSingletonFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References;

with org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;

package org.allbinary.game.score.NullHighScoresSingletonFactory_Package is

   package Reference_Types is
   subtype HighScores_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access;
   use type HighScores_Access;
   subtype HighScores_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array;
   use type HighScores_Access_Array;
   subtype HighScores_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access;
   use type HighScores_Access_Array_Access;
   subtype HighScores_Access_Array_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array;
   use type HighScores_Access_Array_Access_Array;
   subtype HighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array_Access;
   use type HighScores_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullHighScoresSingletonFactory_Access is org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References.NullHighScoresSingletonFactory_Access;
   function "=" (Left, Right : NullHighScoresSingletonFactory_Access) return Boolean renames org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References."=";
   subtype NullHighScoresSingletonFactory_Access_Array is org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References.NullHighScoresSingletonFactory_Access_Array;
   function "=" (Left, Right : NullHighScoresSingletonFactory_Access_Array) return Boolean renames org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References."=";
   subtype NullHighScoresSingletonFactory_Access_Array_Access is org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References.NullHighScoresSingletonFactory_Access_Array_Access;
   function "=" (Left, Right : NullHighScoresSingletonFactory_Access_Array_Access) return Boolean renames org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References."=";
   function Java_Box (Value : NullHighScoresSingletonFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References.Java_Box;
   function Java_Unbox_NullHighScoresSingletonFactory_Access_Array (Value : access Java_Object'Class) return NullHighScoresSingletonFactory_Access_Array_Access renames org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References.Java_Unbox_NullHighScoresSingletonFactory_Access_Array;
   subtype NullHighScoresSingletonFactory_Access_Array_Access_Array is org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References.NullHighScoresSingletonFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NullHighScoresSingletonFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References."=";
   subtype NullHighScoresSingletonFactory_Access_Array_Access_Array_Access is org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References.NullHighScoresSingletonFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullHighScoresSingletonFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References."=";
   function Java_Box (Value : NullHighScoresSingletonFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References.Java_Box;
   function Java_Unbox_NullHighScoresSingletonFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return NullHighScoresSingletonFactory_Access_Array_Access_Array_Access renames org.allbinary.game.score.NullHighScoresSingletonFactory_Package_References.Java_Unbox_NullHighScoresSingletonFactory_Access_Array_Access_Array;

   type NullHighScoresSingletonFactory is new Java_Object with null record;
   SINGLETON : HighScores_Access;

   procedure Initialize (This : in out NullHighScoresSingletonFactory'Class);
   function Create return NullHighScoresSingletonFactory_Access;
   function getInstance return HighScores_Access;

end org.allbinary.game.score.NullHighScoresSingletonFactory_Package;


