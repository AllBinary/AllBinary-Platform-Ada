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

package org.allbinary.bounds.BoundsVisitorInterface_Package is


   type BoundsVisitorInterface is interface;
   type BoundsVisitorInterface_Access is access all BoundsVisitorInterface'Class;
   type BoundsVisitorInterface_Access_Array is array (Natural range <>) of BoundsVisitorInterface_Access;
   type BoundsVisitorInterface_Access_Array_Access is access all BoundsVisitorInterface_Access_Array;
   function getX (This : in out BoundsVisitorInterface) return Integer is abstract;
   function getY (This : in out BoundsVisitorInterface) return Integer is abstract;
   procedure maxX (This : in out BoundsVisitorInterface) is abstract;
   procedure maxY (This : in out BoundsVisitorInterface) is abstract;
   procedure minX (This : in out BoundsVisitorInterface) is abstract;
   procedure minY (This : in out BoundsVisitorInterface) is abstract;

end org.allbinary.bounds.BoundsVisitorInterface_Package;


