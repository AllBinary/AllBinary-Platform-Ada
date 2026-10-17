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

package org.allbinary.logic.math.ScaleFactorFactory_Package is


   type ScaleFactorFactory is tagged;
   type ScaleFactorFactory_Access is access all ScaleFactorFactory'Class;
   type ScaleFactorFactory_Access_Array is array (Natural range <>) of ScaleFactorFactory_Access;
   type ScaleFactorFactory_Access_Array_Access is access all ScaleFactorFactory_Access_Array;

   type ScaleFactorFactory is new Java_Object with record
      DEFAULT_SCALE_FACTOR : Integer;
      DEFAULT_SCALE_VALUE : Integer;
   end record;
   instance : ScaleFactorFactory_Access;

   procedure Initialize (This : in out ScaleFactorFactory'Class);
   function Create return ScaleFactorFactory_Access;
   function getInstance return ScaleFactorFactory_Access;
   procedure getInstance;

end org.allbinary.logic.math.ScaleFactorFactory_Package;


