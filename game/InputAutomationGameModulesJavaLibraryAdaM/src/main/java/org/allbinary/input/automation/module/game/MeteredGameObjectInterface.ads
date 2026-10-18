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

package org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package is


   type MeteredGameObjectInterface is interface;
   type MeteredGameObjectInterface_Access is access all MeteredGameObjectInterface'Class;
   type MeteredGameObjectInterface_Access_Array is array (Natural range <>) of MeteredGameObjectInterface_Access;
   type MeteredGameObjectInterface_Access_Array_Access is access all MeteredGameObjectInterface_Access_Array;
   type MeteredGameObjectInterface_Access_Array_Access_Array is array (Natural range <>) of MeteredGameObjectInterface_Access_Array_Access;
   type MeteredGameObjectInterface_Access_Array_Access_Array_Access is access all MeteredGameObjectInterface_Access_Array_Access_Array;
   function getRatios (This : in out MeteredGameObjectInterface) return Long_Float_Array_Access is abstract;
   function isGood (This : in out MeteredGameObjectInterface) return Boolean is abstract;
   function isDropping (This : in out MeteredGameObjectInterface) return Boolean is abstract;

end org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package;


