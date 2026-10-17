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
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package; use org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;

package org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package is

   package BaseCircularPool_Package renames Standard.org.allbinary.logic.util.cache.BaseCircularPool_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type AllBinaryEventCircularPool is tagged;
   type AllBinaryEventCircularPool_Access is access all AllBinaryEventCircularPool'Class;
   type AllBinaryEventCircularPool_Access_Array is array (Natural range <>) of AllBinaryEventCircularPool_Access;
   type AllBinaryEventCircularPool_Access_Array_Access is access all AllBinaryEventCircularPool_Access_Array;

   type AllBinaryEventCircularPool is new BaseCircularPool with null record;

   procedure Initialize (This : in out AllBinaryEventCircularPool'Class; max : Integer);
   function Create (max : Integer) return AllBinaryEventCircularPool_Access;
   procedure initAllBinaryEventCircularPool (This : in out AllBinaryEventCircularPool; allBinaryEventObjectFactoryInterface_Param : access AllBinaryEventObjectFactoryInterface_Package.AllBinaryEventObjectFactoryInterface'Class);

end org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;


