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
with org.allbinary.media.audio.CompositeSound_Package; use org.allbinary.media.audio.CompositeSound_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;

package org.allbinary.media.audio.ErrorSound_Package is


   type ErrorSound is tagged;
   type ErrorSound_Access is access all ErrorSound'Class;
   type ErrorSound_Access_Array is array (Natural range <>) of ErrorSound_Access;
   type ErrorSound_Access_Array_Access is access all ErrorSound_Access_Array;

   type ErrorSound is new CompositeSound with null record;
   soundInterface : Sound_Access;

   procedure Initialize (This : in out ErrorSound'Class);
   function Create return ErrorSound_Access;
   function getInstance return Sound_Access;

end org.allbinary.media.audio.ErrorSound_Package;


