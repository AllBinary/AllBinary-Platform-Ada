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

limited with org.allbinary.game.score.HighScoresBase_Package;
package org.allbinary.game.score.HighScoresBase_Package_References is
   type HighScoresBase_Access is access all org.allbinary.game.score.HighScoresBase_Package.HighScoresBase'Class;
   type HighScoresBase_Access_Array is array (Natural range <>) of HighScoresBase_Access;
   type HighScoresBase_Access_Array_Access is access all HighScoresBase_Access_Array;
   type HighScoresBase_Access_Array_Access_Array is array (Natural range <>) of HighScoresBase_Access_Array_Access;
   type HighScoresBase_Access_Array_Access_Array_Access is access all HighScoresBase_Access_Array_Access_Array;
end org.allbinary.game.score.HighScoresBase_Package_References;

with org.allbinary.game.score.HighScoresBase_Package_References;
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
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.game.score.HighScoresFactoryInterface_Package; use org.allbinary.game.score.HighScoresFactoryInterface_Package;
limited with org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package_References;
limited with org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References;

package org.allbinary.game.score.HighScoresBase_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype HighScoresBase_Access is org.allbinary.game.score.HighScoresBase_Package_References.HighScoresBase_Access;
   function "=" (Left, Right : HighScoresBase_Access) return Boolean renames org.allbinary.game.score.HighScoresBase_Package_References."=";
   subtype HighScoresBase_Access_Array is org.allbinary.game.score.HighScoresBase_Package_References.HighScoresBase_Access_Array;
   function "=" (Left, Right : HighScoresBase_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresBase_Package_References."=";
   subtype HighScoresBase_Access_Array_Access is org.allbinary.game.score.HighScoresBase_Package_References.HighScoresBase_Access_Array_Access;
   function "=" (Left, Right : HighScoresBase_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresBase_Package_References."=";
   subtype HighScoresBase_Access_Array_Access_Array is org.allbinary.game.score.HighScoresBase_Package_References.HighScoresBase_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresBase_Package_References."=";
   subtype HighScoresBase_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresBase_Package_References.HighScoresBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresBase_Package_References."=";

   type HighScoresBase is new Java_Object and HighScoresFactoryInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out HighScoresBase'Class);
   function Create return HighScoresBase_Access;
   procedure fetchHighScores (This : in out HighScoresBase; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class);
   procedure fetchHighScoresPreload (This : in out HighScoresBase; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class; preload : Boolean);
   function createHighScoresHelper (This : in out HighScoresBase) return HighScoresHelperBaseInterface_Access;

end org.allbinary.game.score.HighScoresBase_Package;


