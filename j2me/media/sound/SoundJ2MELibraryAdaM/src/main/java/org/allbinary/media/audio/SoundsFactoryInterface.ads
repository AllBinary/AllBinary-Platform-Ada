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

package org.allbinary.media.audio.SoundsFactoryInterface_Package is


   type SoundsFactoryInterface is interface;
   type SoundsFactoryInterface_Access is access all SoundsFactoryInterface'Class;
   type SoundsFactoryInterface_Access_Array is array (Natural range <>) of SoundsFactoryInterface_Access;
   type SoundsFactoryInterface_Access_Array_Access is access all SoundsFactoryInterface_Access_Array;
   procedure init (This : in out SoundsFactoryInterface) is abstract;
   function getSoundInterfaceArray (This : in out SoundsFactoryInterface) return Sound_Access_Array_Access is abstract;
   procedure setInitialized (This : in out SoundsFactoryInterface; initialized : Boolean) is abstract;
   function isInitialized (This : in out SoundsFactoryInterface) return Boolean is abstract;

end org.allbinary.media.audio.SoundsFactoryInterface_Package;


