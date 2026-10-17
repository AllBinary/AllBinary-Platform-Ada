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

package org.allbinary.graphics.displayable.StateControlledInterface_Package is


   type StateControlledInterface is interface;
   type StateControlledInterface_Access is access all StateControlledInterface'Class;
   type StateControlledInterface_Access_Array is array (Natural range <>) of StateControlledInterface_Access;
   type StateControlledInterface_Access_Array_Access is access all StateControlledInterface_Access_Array;
   procedure setState (This : in out StateControlledInterface; state : Integer) is abstract;

end org.allbinary.graphics.displayable.StateControlledInterface_Package;


