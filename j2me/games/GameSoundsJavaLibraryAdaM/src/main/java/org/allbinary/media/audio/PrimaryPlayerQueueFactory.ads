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

package org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package is


   type PrimaryPlayerQueueFactory is tagged;
   type PrimaryPlayerQueueFactory_Access is access all PrimaryPlayerQueueFactory'Class;
   type PrimaryPlayerQueueFactory_Access_Array is array (Natural range <>) of PrimaryPlayerQueueFactory_Access;
   type PrimaryPlayerQueueFactory_Access_Array_Access is access all PrimaryPlayerQueueFactory_Access_Array;
   type PrimaryPlayerQueueFactory_Access_Array_Access_Array is array (Natural range <>) of PrimaryPlayerQueueFactory_Access_Array_Access;
   type PrimaryPlayerQueueFactory_Access_Array_Access_Array_Access is access all PrimaryPlayerQueueFactory_Access_Array_Access_Array;

   type PrimaryPlayerQueueFactory is new Java_Object with null record;
   SINGLETON : PlayerQueue_Access;

   procedure Initialize (This : in out PrimaryPlayerQueueFactory'Class);
   function Create return PrimaryPlayerQueueFactory_Access;
   function getInstance return PlayerQueue_Access;

end org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package;


