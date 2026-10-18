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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;

package org.allbinary.graphics.PointFactory_Package is


   type PointFactory is tagged;
   type PointFactory_Access is access all PointFactory'Class;
   type PointFactory_Access_Array is array (Natural range <>) of PointFactory_Access;
   type PointFactory_Access_Array_Access is access all PointFactory_Access_Array;
   type PointFactory_Access_Array_Access_Array is array (Natural range <>) of PointFactory_Access_Array_Access;
   type PointFactory_Access_Array_Access_Array_Access is access all PointFactory_Access_Array_Access_Array;

   type PointFactory is new Java_Object with record
      ZERO_ZERO : GPoint_Access;
   end record;
   instance : PointFactory_Access;

   procedure Initialize (This : in out PointFactory'Class);
   function Create return PointFactory_Access;
   function getInstance return PointFactory_Access;
   procedure init (This : in out PointFactory);
   function createXY (This : in out PointFactory; x : Integer; y : Integer) return GPoint_Access;
   procedure createXY (This : in out PointFactory; x : Integer; y : Integer);
   function createXYZ (This : in out PointFactory; x : Integer; y : Integer; z : Integer) return GPoint_Access;
   procedure createXYZ (This : in out PointFactory; x : Integer; y : Integer; z : Integer);

end org.allbinary.graphics.PointFactory_Package;


