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
limited with org.allbinary.game.score.HighScoresFactoryInterface_Package;
package org.allbinary.game.score.HighScoresFactoryInterface_Package_References is
   type HighScoresFactoryInterface_Access is access all org.allbinary.game.score.HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class;
   type HighScoresFactoryInterface_Access_Array is array (Natural range <>) of HighScoresFactoryInterface_Access;
   type HighScoresFactoryInterface_Access_Array_Access is access all HighScoresFactoryInterface_Access_Array;
   type HighScoresFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of HighScoresFactoryInterface_Access_Array_Access;
   type HighScoresFactoryInterface_Access_Array_Access_Array_Access is access all HighScoresFactoryInterface_Access_Array_Access_Array;
   type HighScoresFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in HighScoresFactoryInterface_Access_Array_Object'Class then HighScoresFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type HighScoresFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HighScoresFactoryInterface_Access_Array_Access_Array_Object'Class then HighScoresFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.HighScoresFactoryInterface_Package_References;

with org.allbinary.game.score.HighScoresFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
limited with org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package_References;
limited with org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References;

package org.allbinary.game.score.HighScoresFactoryInterface_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package Reference_Types is
   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   use type GameInfo_Access;
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   use type GameInfo_Access_Array;
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   use type GameInfo_Access_Array_Access;
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   use type GameInfo_Access_Array_Access_Array;
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   use type GameInfo_Access_Array_Access_Array_Access;
   subtype HighScoresResultsListener_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access;
   use type HighScoresResultsListener_Access;
   subtype HighScoresResultsListener_Access_Array is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array;
   use type HighScoresResultsListener_Access_Array;
   subtype HighScoresResultsListener_Access_Array_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access;
   use type HighScoresResultsListener_Access_Array_Access;
   subtype HighScoresResultsListener_Access_Array_Access_Array is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access_Array;
   use type HighScoresResultsListener_Access_Array_Access_Array;
   subtype HighScoresResultsListener_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access_Array_Access;
   use type HighScoresResultsListener_Access_Array_Access_Array_Access;
   subtype HighScoresHelperBaseInterface_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access;
   use type HighScoresHelperBaseInterface_Access;
   subtype HighScoresHelperBaseInterface_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array;
   use type HighScoresHelperBaseInterface_Access_Array;
   subtype HighScoresHelperBaseInterface_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access;
   use type HighScoresHelperBaseInterface_Access_Array_Access;
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array;
   use type HighScoresHelperBaseInterface_Access_Array_Access_Array;
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array_Access;
   use type HighScoresHelperBaseInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type HighScoresFactoryInterface is interface;
   subtype HighScoresFactoryInterface_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access;
   function "=" (Left, Right : HighScoresFactoryInterface_Access) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   function Java_Box (Value : HighScoresFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_HighScoresFactoryInterface_Access_Array (Value : access Java_Object'Class) return HighScoresFactoryInterface_Access_Array_Access renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References.Java_Unbox_HighScoresFactoryInterface_Access_Array;
   subtype HighScoresFactoryInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   function Java_Box (Value : HighScoresFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_HighScoresFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return HighScoresFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References.Java_Unbox_HighScoresFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_HighScoresFactoryInterface (Value : HighScoresFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure fetchHighScores (This : in out HighScoresFactoryInterface; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class) is abstract;
   procedure fetchHighScoresPreload (This : in out HighScoresFactoryInterface; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class; preload : Boolean) is abstract;
   function createHighScoresHelper (This : in out HighScoresFactoryInterface) return HighScoresHelperBaseInterface_Access is abstract;

end org.allbinary.game.score.HighScoresFactoryInterface_Package;


