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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
--  with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
--  with java.io.EOFException_Package; use java.io.EOFException_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with javax.microedition.rms.RecordComparator_Package; use javax.microedition.rms.RecordComparator_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.score.ScoreComparator_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ScoreComparator is tagged;
   type ScoreComparator_Access is access all ScoreComparator'Class;
   type ScoreComparator_Access_Array is array (Natural range <>) of ScoreComparator_Access;
   type ScoreComparator_Access_Array_Access is access all ScoreComparator_Access_Array;

   type ScoreComparator is new RecordComparator with record
      logUtil : LogUtil_Access;
      isHighestBest : Boolean;
   end record;

   procedure Initialize (This : in out ScoreComparator'Class; isHighestBest : Boolean);
   function Create (isHighestBest : Boolean) return ScoreComparator_Access;
   function getBestScore (This : in out ScoreComparator) return Long_Long_Integer;
   procedure getBestScore (This : in out ScoreComparator);
   function compare (This : in out ScoreComparator; recordOne : Short_Short_Integer_Array_Access; recordTwo : Short_Short_Integer_Array_Access) return Integer;
   procedure compare (This : in out ScoreComparator; recordOne : Short_Short_Integer_Array_Access; recordTwo : Short_Short_Integer_Array_Access);
   function getHighTooLow (This : in out ScoreComparator; scoreOne : Long_Long_Integer; scoreTwo : Long_Long_Integer) return Integer;
   procedure getHighTooLow (This : in out ScoreComparator; scoreOne : Long_Long_Integer; scoreTwo : Long_Long_Integer);
   function getLowTooHigh (This : in out ScoreComparator; scoreOne : Long_Long_Integer; scoreTwo : Long_Long_Integer) return Integer;
   procedure getLowTooHigh (This : in out ScoreComparator; scoreOne : Long_Long_Integer; scoreTwo : Long_Long_Integer);

end org.allbinary.game.score.ScoreComparator_Package;


