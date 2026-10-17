-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
--  with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.audio.PlayerStateUtil_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PlayerStateUtil is tagged;
   type PlayerStateUtil_Access is access all PlayerStateUtil'Class;
   type PlayerStateUtil_Access_Array is array (Natural range <>) of PlayerStateUtil_Access;
   type PlayerStateUtil_Access_Array_Access is access all PlayerStateUtil_Access_Array;

   type PlayerStateUtil is new Java_Object with record
      commonStrings : CommonStrings_Access;
      UNREALIZED : Unbounded_String;
      REALIZED : Unbounded_String;
      PREFETCHED : Unbounded_String;
      STARTED : Unbounded_String;
      CLOSED : Unbounded_String;
   end record;
   instance : PlayerStateUtil_Access;

   procedure Initialize (This : in out PlayerStateUtil'Class);
   function Create return PlayerStateUtil_Access;
   function getInstance return PlayerStateUtil_Access;
   procedure getInstance;
   function convert (This : in out PlayerStateUtil; state : Integer) return Unbounded_String;
   procedure convert (This : in out PlayerStateUtil; state : Integer);

end org.allbinary.media.audio.PlayerStateUtil_Package;


