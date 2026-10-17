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

package org.allbinary.math.AngleIncrementInfoFactory_Package is


   type AngleIncrementInfoFactory is tagged;
   type AngleIncrementInfoFactory_Access is access all AngleIncrementInfoFactory'Class;
   type AngleIncrementInfoFactory_Access_Array is array (Natural range <>) of AngleIncrementInfoFactory_Access;
   type AngleIncrementInfoFactory_Access_Array_Access is access all AngleIncrementInfoFactory_Access_Array;

   type AngleIncrementInfoFactory is new Java_Object with record
      angleIncrementInfo : AngleIncrementInfo_Access_Array_Access;
   end record;
   instance : AngleIncrementInfoFactory_Access;

   procedure Initialize (This : in out AngleIncrementInfoFactory'Class);
   function Create return AngleIncrementInfoFactory_Access;
   function getInstance return AngleIncrementInfoFactory_Access;
   procedure getInstance;
   function getAt (This : in out AngleIncrementInfoFactory; angleIncrement : Short_Integer) return AngleIncrementInfo_Access;
   procedure getAt (This : in out AngleIncrementInfoFactory; angleIncrement : Short_Integer);

end org.allbinary.math.AngleIncrementInfoFactory_Package;


