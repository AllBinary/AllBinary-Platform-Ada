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
with org.allbinary.media.audio.SoundsFactoryInterface_Package; use org.allbinary.media.audio.SoundsFactoryInterface_Package;

package org.allbinary.media.audio.BaseSoundsFactory_Package is


   type BaseSoundsFactory is tagged;
   type BaseSoundsFactory_Access is access all BaseSoundsFactory'Class;
   type BaseSoundsFactory_Access_Array is array (Natural range <>) of BaseSoundsFactory_Access;
   type BaseSoundsFactory_Access_Array_Access is access all BaseSoundsFactory_Access_Array;

   type BaseSoundsFactory is new SoundsFactoryInterface with record
      initialized : Boolean;
   end record;

   procedure Initialize (This : in out BaseSoundsFactory'Class);
   function Create return BaseSoundsFactory_Access;
   procedure init (This : in out BaseSoundsFactory);
   function getSoundInterfaceArray (This : in out BaseSoundsFactory) return Sound_Access_Array_Access;
   procedure getSoundInterfaceArray (This : in out BaseSoundsFactory);
   procedure setInitialized (This : in out BaseSoundsFactory; initialized : Boolean);
   function isInitialized (This : in out BaseSoundsFactory) return Boolean;
   procedure isInitialized (This : in out BaseSoundsFactory);

end org.allbinary.media.audio.BaseSoundsFactory_Package;


