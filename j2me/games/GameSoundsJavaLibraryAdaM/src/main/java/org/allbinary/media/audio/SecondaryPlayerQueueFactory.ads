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
with org.allbinary.media.audio.PlayerQueue_Package; use org.allbinary.media.audio.PlayerQueue_Package;

package org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package is


   type SecondaryPlayerQueueFactory is tagged;
   type SecondaryPlayerQueueFactory_Access is access all SecondaryPlayerQueueFactory'Class;
   type SecondaryPlayerQueueFactory_Access_Array is array (Natural range <>) of SecondaryPlayerQueueFactory_Access;
   type SecondaryPlayerQueueFactory_Access_Array_Access is access all SecondaryPlayerQueueFactory_Access_Array;

   type SecondaryPlayerQueueFactory is new Java_Object with null record;
   SINGLETON : PlayerQueue_Access;

   procedure Initialize (This : in out SecondaryPlayerQueueFactory'Class);
   function Create return SecondaryPlayerQueueFactory_Access;
   function getInstance return PlayerQueue_Access;

end org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;


