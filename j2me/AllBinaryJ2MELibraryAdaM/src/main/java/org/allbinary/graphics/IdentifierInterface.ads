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

package org.allbinary.graphics.IdentifierInterface_Package is


   type IdentifierInterface is interface;
   type IdentifierInterface_Access is access all IdentifierInterface'Class;
   type IdentifierInterface_Access_Array is array (Natural range <>) of IdentifierInterface_Access;
   type IdentifierInterface_Access_Array_Access is access all IdentifierInterface_Access_Array;
   type IdentifierInterface_Access_Array_Access_Array is array (Natural range <>) of IdentifierInterface_Access_Array_Access;
   type IdentifierInterface_Access_Array_Access_Array_Access is access all IdentifierInterface_Access_Array_Access_Array;
   function getId (This : in out IdentifierInterface) return Integer is abstract;

end org.allbinary.graphics.IdentifierInterface_Package;


