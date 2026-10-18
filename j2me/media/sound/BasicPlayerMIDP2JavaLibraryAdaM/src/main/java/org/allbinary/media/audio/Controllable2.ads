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

package org.allbinary.media.audio.Controllable2_Package is


   type Controllable2 is interface;
   type Controllable2_Access is access all Controllable2'Class;
   type Controllable2_Access_Array is array (Natural range <>) of Controllable2_Access;
   type Controllable2_Access_Array_Access is access all Controllable2_Access_Array;
   type Controllable2_Access_Array_Access_Array is array (Natural range <>) of Controllable2_Access_Array_Access;
   type Controllable2_Access_Array_Access_Array_Access is access all Controllable2_Access_Array_Access_Array;
   procedure setVolume (This : in out Controllable2; leftVolume : Integer; rightVolume : Integer) is abstract;

end org.allbinary.media.audio.Controllable2_Package;


