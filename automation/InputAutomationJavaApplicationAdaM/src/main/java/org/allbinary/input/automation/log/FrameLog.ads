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
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileOutputStream_Package; use java.io.FileOutputStream_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.automation.ImageOutputData_Package; use org.allbinary.input.automation.ImageOutputData_Package;
with org.allbinary.logic.java.number.LongUtil_Package; use org.allbinary.logic.java.number.LongUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.input.automation.log.FrameLog_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ImageOutputData_Package renames Standard.org.allbinary.input.automation.ImageOutputData_Package;
   package LongUtil_Package renames Standard.org.allbinary.logic.java.number.LongUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type FrameLog is tagged;
   type FrameLog_Access is access all FrameLog'Class;
   type FrameLog_Access_Array is array (Natural range <>) of FrameLog_Access;
   type FrameLog_Access_Array_Access is access all FrameLog_Access_Array;

   type FrameLog is new Java_Object with record
      frame : Long_Long_Integer;
      infoStringBuffer : StringMaker_Access;
      actionsStringBuffer : StringMaker_Access;
   end record;
   frameBytes : Short_Short_Integer_Array_Access;
   info : Short_Short_Integer_Array_Access;
   actions : Short_Short_Integer_Array_Access;

   procedure Initialize (This : in out FrameLog'Class; frame : Long_Long_Integer);
   function Create (frame : Long_Long_Integer) return FrameLog_Access;
   procedure addInfo (This : in out FrameLog; infoString : Unbounded_String);
   procedure addActions (This : in out FrameLog; vectorOfStrings_Param : access BasicArrayList'Class);
   procedure addAction (This : in out FrameLog; action : Unbounded_String);
   procedure write (This : in out FrameLog);
   function getFrame (This : in out FrameLog) return Long_Long_Integer;

end org.allbinary.input.automation.log.FrameLog_Package;


