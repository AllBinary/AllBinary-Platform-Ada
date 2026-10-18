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

package org.allbinary.game.identification.GroupInterface_Package is


   type GroupInterface is interface;
   type GroupInterface_Access is access all GroupInterface'Class;
   type GroupInterface_Access_Array is array (Natural range <>) of GroupInterface_Access;
   type GroupInterface_Access_Array_Access is access all GroupInterface_Access_Array;
   type GroupInterface_Access_Array_Access_Array is array (Natural range <>) of GroupInterface_Access_Array_Access;
   type GroupInterface_Access_Array_Access_Array_Access is access all GroupInterface_Access_Array_Access_Array;
   function getGroupName (This : in out GroupInterface) return Unbounded_String is abstract;
   function getGroupId (This : in out GroupInterface) return Short_Integer is abstract;

end org.allbinary.game.identification.GroupInterface_Package;


