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
with org.allbinary.game.IntermissionInterface_Package; use org.allbinary.game.IntermissionInterface_Package;

package org.allbinary.game.IntermissionCompositeInterface_Package is


   type IntermissionCompositeInterface is interface;
   type IntermissionCompositeInterface_Access is access all IntermissionCompositeInterface'Class;
   type IntermissionCompositeInterface_Access_Array is array (Natural range <>) of IntermissionCompositeInterface_Access;
   type IntermissionCompositeInterface_Access_Array_Access is access all IntermissionCompositeInterface_Access_Array;
   type IntermissionCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of IntermissionCompositeInterface_Access_Array_Access;
   type IntermissionCompositeInterface_Access_Array_Access_Array_Access is access all IntermissionCompositeInterface_Access_Array_Access_Array;
   function getStartIntermissionInterface (This : in out IntermissionCompositeInterface) return IntermissionInterface_Access is abstract;
   function getEndLevelIntermissionInterface (This : in out IntermissionCompositeInterface) return IntermissionInterface_Access is abstract;

end org.allbinary.game.IntermissionCompositeInterface_Package;


