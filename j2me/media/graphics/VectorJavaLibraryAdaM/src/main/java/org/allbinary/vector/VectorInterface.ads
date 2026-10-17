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

package org.allbinary.vector.VectorInterface_Package is


   type VectorInterface is interface;
   type VectorInterface_Access is access all VectorInterface'Class;
   type VectorInterface_Access_Array is array (Natural range <>) of VectorInterface_Access;
   type VectorInterface_Access_Array_Access is access all VectorInterface_Access_Array;
   function getPoints (This : in out VectorInterface; frame : Integer) return Integer_Array_Access_Array_Access is abstract;
   procedure setPoints (This : in out VectorInterface; currentPoints : Integer_Array_Access_Array_Access_Array_Access) is abstract;

end org.allbinary.vector.VectorInterface_Package;


