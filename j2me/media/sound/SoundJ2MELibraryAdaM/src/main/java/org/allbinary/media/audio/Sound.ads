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
--  with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.audio.SoundInterface_Package; use org.allbinary.media.audio.SoundInterface_Package;
with org.allbinary.media.audio.Runnable_Package; use org.allbinary.media.audio.Runnable_Package;
with org.allbinary.media.audio.NoPlayer_Package; use org.allbinary.media.audio.NoPlayer_Package;

package org.allbinary.media.audio.Sound_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type Sound is tagged;
   type Sound_Access is access all Sound'Class;
   type Sound_Access_Array is array (Natural range <>) of Sound_Access;
   type Sound_Access_Array_Access is access all Sound_Access_Array;

   type Sound is new SoundInterface and Runnable with record
      resource : Unbounded_String;
      player : Player_Access;
   end record;

   procedure Initialize (This : in out Sound'Class; resource : Unbounded_String);
   function Create (resource : Unbounded_String) return Sound_Access;
   function getResource (This : in out Sound) return Unbounded_String;
   function getPlayerP (This : in out Sound) return Player_Access;
   procedure setPlayerP (This : in out Sound; player_Param : access Player_Package.Player'Class);
   procedure init (This : in out Sound);
   function getDuration (This : in out Sound) return Integer;
   procedure run (This : in out Sound);

end org.allbinary.media.audio.Sound_Package;


