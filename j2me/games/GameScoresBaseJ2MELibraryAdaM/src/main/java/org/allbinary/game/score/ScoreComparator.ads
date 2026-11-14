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
limited with org.allbinary.game.score.ScoreComparator_Package;
package org.allbinary.game.score.ScoreComparator_Package_References is
   type ScoreComparator_Access is access all org.allbinary.game.score.ScoreComparator_Package.ScoreComparator'Class;
   type ScoreComparator_Access_Array is array (Natural range <>) of ScoreComparator_Access;
   type ScoreComparator_Access_Array_Access is access all ScoreComparator_Access_Array;
   type ScoreComparator_Access_Array_Access_Array is array (Natural range <>) of ScoreComparator_Access_Array_Access;
   type ScoreComparator_Access_Array_Access_Array_Access is access all ScoreComparator_Access_Array_Access_Array;
   type ScoreComparator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScoreComparator_Access_Array_Access;
   end record;
   function Java_Box (Value : ScoreComparator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScoreComparator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScoreComparator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScoreComparator_Access_Array_Access is (if Value /= null and then Value.all in ScoreComparator_Access_Array_Object'Class then ScoreComparator_Access_Array_Object'Class (Value.all).Value else null);
   type ScoreComparator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScoreComparator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScoreComparator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScoreComparator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScoreComparator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScoreComparator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScoreComparator_Access_Array_Access_Array_Object'Class then ScoreComparator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.ScoreComparator_Package_References;

with org.allbinary.game.score.ScoreComparator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.EOFException_Package; use java.io.EOFException_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with javax.microedition.rms.RecordComparator_Package; use javax.microedition.rms.RecordComparator_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.score.ScoreComparator_Package is

   package RecordComparator_Package renames Standard.javax.microedition.rms.RecordComparator_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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


   subtype ScoreComparator_Access is org.allbinary.game.score.ScoreComparator_Package_References.ScoreComparator_Access;
   function "=" (Left, Right : ScoreComparator_Access) return Boolean renames org.allbinary.game.score.ScoreComparator_Package_References."=";
   subtype ScoreComparator_Access_Array is org.allbinary.game.score.ScoreComparator_Package_References.ScoreComparator_Access_Array;
   function "=" (Left, Right : ScoreComparator_Access_Array) return Boolean renames org.allbinary.game.score.ScoreComparator_Package_References."=";
   subtype ScoreComparator_Access_Array_Access is org.allbinary.game.score.ScoreComparator_Package_References.ScoreComparator_Access_Array_Access;
   function "=" (Left, Right : ScoreComparator_Access_Array_Access) return Boolean renames org.allbinary.game.score.ScoreComparator_Package_References."=";
   function Java_Box (Value : ScoreComparator_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.ScoreComparator_Package_References.Java_Box;
   function Java_Unbox_ScoreComparator_Access_Array (Value : access Java_Object'Class) return ScoreComparator_Access_Array_Access renames org.allbinary.game.score.ScoreComparator_Package_References.Java_Unbox_ScoreComparator_Access_Array;
   subtype ScoreComparator_Access_Array_Access_Array is org.allbinary.game.score.ScoreComparator_Package_References.ScoreComparator_Access_Array_Access_Array;
   function "=" (Left, Right : ScoreComparator_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.ScoreComparator_Package_References."=";
   subtype ScoreComparator_Access_Array_Access_Array_Access is org.allbinary.game.score.ScoreComparator_Package_References.ScoreComparator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScoreComparator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.ScoreComparator_Package_References."=";
   function Java_Box (Value : ScoreComparator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.ScoreComparator_Package_References.Java_Box;
   function Java_Unbox_ScoreComparator_Access_Array_Access_Array (Value : access Java_Object'Class) return ScoreComparator_Access_Array_Access_Array_Access renames org.allbinary.game.score.ScoreComparator_Package_References.Java_Unbox_ScoreComparator_Access_Array_Access_Array;

   type ScoreComparator is new Java_Object and RecordComparator with record
      logUtil : LogUtil_Access;
      isHighestBest : Boolean;
   end record;

   procedure Initialize (This : in out ScoreComparator'Class; isHighestBest : Boolean);
   function Create (isHighestBest : Boolean) return ScoreComparator_Access;
   function getBestScore (This : in out ScoreComparator) return Long_Long_Integer;
   function compare (This : in out ScoreComparator; recordOne : Short_Short_Integer_Array_Access; recordTwo : Short_Short_Integer_Array_Access) return Integer;
   procedure compare (This : in out ScoreComparator; recordOne : Short_Short_Integer_Array_Access; recordTwo : Short_Short_Integer_Array_Access);
   function getHighTooLow (This : in out ScoreComparator; scoreOne : Long_Long_Integer; scoreTwo : Long_Long_Integer) return Integer;
   procedure getHighTooLow (This : in out ScoreComparator; scoreOne : Long_Long_Integer; scoreTwo : Long_Long_Integer);
   function getLowTooHigh (This : in out ScoreComparator; scoreOne : Long_Long_Integer; scoreTwo : Long_Long_Integer) return Integer;
   procedure getLowTooHigh (This : in out ScoreComparator; scoreOne : Long_Long_Integer; scoreTwo : Long_Long_Integer);

end org.allbinary.game.score.ScoreComparator_Package;


