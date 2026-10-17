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

package org.allbinary.media.audio.SelectSound_Package is


   type SelectSound is tagged;
   type SelectSound_Access is access all SelectSound'Class;
   type SelectSound_Access_Array is array (Natural range <>) of SelectSound_Access;
   type SelectSound_Access_Array_Access is access all SelectSound_Access_Array;

   type SelectSound is new CompositeSound with null record;
   soundInterface : Sound_Access;

   procedure Initialize (This : in out SelectSound'Class);
   function Create return SelectSound_Access;
   function getInstance return Sound_Access;
   procedure getInstance;

end org.allbinary.media.audio.SelectSound_Package;


