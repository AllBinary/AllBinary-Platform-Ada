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
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;

package org.allbinary.logic.math.vector.MathVectorInterface_Package is

   package BasicDecimal_Package renames org.allbinary.logic.math.BasicDecimal_Package;

   type MathVectorInterface is interface;
   type MathVectorInterface_Access is access all MathVectorInterface'Class;
   type MathVectorInterface_Access_Array is array (Natural range <>) of MathVectorInterface_Access;
   type MathVectorInterface_Access_Array_Access is access all MathVectorInterface_Access_Array;
   function getDirection (This : in out MathVectorInterface) return Integer is abstract;
   function getMagnitude (This : in out MathVectorInterface) return BasicDecimal_Access is abstract;
   function getResult (This : in out MathVectorInterface) return BasicDecimal_Access is abstract;

end org.allbinary.logic.math.vector.MathVectorInterface_Package;


