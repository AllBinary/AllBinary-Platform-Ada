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

package org.allbinary.input.automation.module.game.RestGameObjectInterface_Package is


   type RestGameObjectInterface is interface;
   type RestGameObjectInterface_Access is access all RestGameObjectInterface'Class;
   type RestGameObjectInterface_Access_Array is array (Natural range <>) of RestGameObjectInterface_Access;
   type RestGameObjectInterface_Access_Array_Access is access all RestGameObjectInterface_Access_Array;
   type RestGameObjectInterface_Access_Array_Access_Array is array (Natural range <>) of RestGameObjectInterface_Access_Array_Access;
   type RestGameObjectInterface_Access_Array_Access_Array_Access is access all RestGameObjectInterface_Access_Array_Access_Array;
   function isRestNeeded (This : in out RestGameObjectInterface) return Boolean is abstract;
   function isAGoodTimeToRest (This : in out RestGameObjectInterface) return Boolean is abstract;

end org.allbinary.input.automation.module.game.RestGameObjectInterface_Package;


