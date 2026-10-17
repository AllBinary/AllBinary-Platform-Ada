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
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.game.IntermissionInterface_Package; use org.allbinary.game.IntermissionInterface_Package;

package org.allbinary.game.Intermission_Package is

   package TimeDelayHelper_Package renames org.allbinary.time.TimeDelayHelper_Package;

   type Intermission is tagged;
   type Intermission_Access is access all Intermission'Class;
   type Intermission_Access_Array is array (Natural range <>) of Intermission_Access;
   type Intermission_Access_Array_Access is access all Intermission_Access_Array;

   type Intermission is new IntermissionInterface with record
      enabled : Boolean;
      timeElapsedHelper : TimeDelayHelper_Access;
      intermissionEnableListener : IntermissionEnableListenerInterface_Access;
   end record;

   procedure Initialize (This : in out Intermission'Class);
   function Create return Intermission_Access;
   procedure setListener (This : in out Intermission; enableListener : IntermissionEnableListenerInterface_Access);
   function getTimeDelayHelper (This : in out Intermission) return TimeDelayHelper_Access;
   procedure getTimeDelayHelper (This : in out Intermission);
   procedure setEnabled (This : in out Intermission; enabled : Boolean);
   function isEnabled (This : in out Intermission) return Boolean;
   procedure isEnabled (This : in out Intermission);

end org.allbinary.game.Intermission_Package;


