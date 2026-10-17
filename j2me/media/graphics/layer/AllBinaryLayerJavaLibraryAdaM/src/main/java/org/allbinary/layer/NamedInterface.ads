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

package org.allbinary.layer.NamedInterface_Package is


   type NamedInterface is interface;
   type NamedInterface_Access is access all NamedInterface'Class;
   type NamedInterface_Access_Array is array (Natural range <>) of NamedInterface_Access;
   type NamedInterface_Access_Array_Access is access all NamedInterface_Access_Array;
   function getName (This : in out NamedInterface) return Unbounded_String is abstract;

end org.allbinary.layer.NamedInterface_Package;


