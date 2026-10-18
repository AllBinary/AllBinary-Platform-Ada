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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.input.GameInputProcessorInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type GameInputProcessorInterface is interface;
   type GameInputProcessorInterface_Access is access all GameInputProcessorInterface'Class;
   type GameInputProcessorInterface_Access_Array is array (Natural range <>) of GameInputProcessorInterface_Access;
   type GameInputProcessorInterface_Access_Array_Access is access all GameInputProcessorInterface_Access_Array;
   type GameInputProcessorInterface_Access_Array_Access_Array is array (Natural range <>) of GameInputProcessorInterface_Access_Array_Access;
   type GameInputProcessorInterface_Access_Array_Access_Array_Access is access all GameInputProcessorInterface_Access_Array_Access_Array;
   procedure onInput (This : in out GameInputProcessorInterface; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;

end org.allbinary.game.input.GameInputProcessorInterface_Package;


