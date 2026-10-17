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

package org.allbinary.input.automation.PointFactory_Package is


   type PointFactory is tagged;
   type PointFactory_Access is access all PointFactory'Class;
   type PointFactory_Access_Array is array (Natural range <>) of PointFactory_Access;
   type PointFactory_Access_Array_Access is access all PointFactory_Access_Array;

   type PointFactory is new Java_Object with null record;
   pointArray : Point_Access_Array_Access_Array_Access;

   procedure Initialize (This : in out PointFactory'Class);
   function Create return PointFactory_Access;
   function getInstance (x : Integer; y : Integer) return Point_Access;
   procedure getInstance (x : Integer; y : Integer);

end org.allbinary.input.automation.PointFactory_Package;


