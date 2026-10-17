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

package org.allbinary.media.audio.SoundInterface_Package is


   type SoundInterface is interface;
   type SoundInterface_Access is access all SoundInterface'Class;
   type SoundInterface_Access_Array is array (Natural range <>) of SoundInterface_Access;
   type SoundInterface_Access_Array_Access is access all SoundInterface_Access_Array;
   function getResource (This : in out SoundInterface) return Unbounded_String is abstract;
   function getPlayerP (This : in out SoundInterface) return Player_Access is abstract;
   procedure init (This : in out SoundInterface) is abstract;

end org.allbinary.media.audio.SoundInterface_Package;


