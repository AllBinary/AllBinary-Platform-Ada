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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;

package org.allbinary.media.audio.PlayerQueue_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type PlayerQueue is tagged;
   type PlayerQueue_Access is access all PlayerQueue'Class;
   type PlayerQueue_Access_Array is array (Natural range <>) of PlayerQueue_Access;
   type PlayerQueue_Access_Array_Access is access all PlayerQueue_Access_Array;
   type PlayerQueue_Access_Array_Access_Array is array (Natural range <>) of PlayerQueue_Access_Array_Access;
   type PlayerQueue_Access_Array_Access_Array_Access is access all PlayerQueue_Access_Array_Access_Array;

   type PlayerQueue is new Java_Object with record
      commonStrings : CommonStrings_Access;
      list : BasicArrayList_Access;
      max : Integer;
   end record;
   TOTAL : Unbounded_String;

   procedure Initialize (This : in out PlayerQueue'Class; max : Integer);
   function Create (max : Integer) return PlayerQueue_Access;
   procedure add (This : in out PlayerQueue; sound_Param : access Sound_Package.Sound'Class);
   function process (This : in out PlayerQueue) return Boolean;
   procedure clear (This : in out PlayerQueue);
   function toString (This : in out PlayerQueue) return Unbounded_String;

end org.allbinary.media.audio.PlayerQueue_Package;


