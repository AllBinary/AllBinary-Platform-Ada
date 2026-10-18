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
with org.allbinary.logic.util.cache.BaseCircularPool_Package; use org.allbinary.logic.util.cache.BaseCircularPool_Package;

package org.allbinary.graphics.GPointCircularPool_Package is

   package BaseCircularPool_Package renames Standard.org.allbinary.logic.util.cache.BaseCircularPool_Package;

   type GPointCircularPool is tagged;
   type GPointCircularPool_Access is access all GPointCircularPool'Class;
   type GPointCircularPool_Access_Array is array (Natural range <>) of GPointCircularPool_Access;
   type GPointCircularPool_Access_Array_Access is access all GPointCircularPool_Access_Array;
   type GPointCircularPool_Access_Array_Access_Array is array (Natural range <>) of GPointCircularPool_Access_Array_Access;
   type GPointCircularPool_Access_Array_Access_Array_Access is access all GPointCircularPool_Access_Array_Access_Array;

   type GPointCircularPool is new BaseCircularPool with null record;

   procedure Initialize (This : in out GPointCircularPool'Class; size : Integer);
   function Create (size : Integer) return GPointCircularPool_Access;

end org.allbinary.graphics.GPointCircularPool_Package;


