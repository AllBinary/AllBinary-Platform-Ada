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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;

package org.allbinary.media.audio.NoSound_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type NoSound is tagged;
   type NoSound_Access is access all NoSound'Class;
   type NoSound_Access_Array is array (Natural range <>) of NoSound_Access;
   type NoSound_Access_Array_Access is access all NoSound_Access_Array;

   type NoSound is new Sound with null record;
   instance : NoSound_Access;

   procedure Initialize (This : in out NoSound'Class);
   function Create return NoSound_Access;
   function getInstance return NoSound_Access;
   procedure getInstance;

end org.allbinary.media.audio.NoSound_Package;


