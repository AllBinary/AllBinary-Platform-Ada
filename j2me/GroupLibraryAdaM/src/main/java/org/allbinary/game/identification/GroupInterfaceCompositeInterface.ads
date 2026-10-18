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
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;

package org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package is


   type GroupInterfaceCompositeInterface is interface;
   type GroupInterfaceCompositeInterface_Access is access all GroupInterfaceCompositeInterface'Class;
   type GroupInterfaceCompositeInterface_Access_Array is array (Natural range <>) of GroupInterfaceCompositeInterface_Access;
   type GroupInterfaceCompositeInterface_Access_Array_Access is access all GroupInterfaceCompositeInterface_Access_Array;
   type GroupInterfaceCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of GroupInterfaceCompositeInterface_Access_Array_Access;
   type GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access is access all GroupInterfaceCompositeInterface_Access_Array_Access_Array;
   function getGroupInterface (This : in out GroupInterfaceCompositeInterface) return Group_Access_Array_Access is abstract;

end org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;


