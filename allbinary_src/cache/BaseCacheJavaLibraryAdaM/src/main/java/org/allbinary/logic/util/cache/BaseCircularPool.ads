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
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package; use org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package;

package org.allbinary.logic.util.cache.BaseCircularPool_Package is

   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type BaseCircularPool is tagged;
   type BaseCircularPool_Access is access all BaseCircularPool'Class;
   type BaseCircularPool_Access_Array is array (Natural range <>) of BaseCircularPool_Access;
   type BaseCircularPool_Access_Array_Access is access all BaseCircularPool_Access_Array;
   type BaseCircularPool_Access_Array_Access_Array is array (Natural range <>) of BaseCircularPool_Access_Array_Access;
   type BaseCircularPool_Access_Array_Access_Array_Access is access all BaseCircularPool_Access_Array_Access_Array;

   type BaseCircularPool is new Java_Object with record
      circularIndexUtil : CircularIndexUtil_Access;
      OBJECT_ARRAY : Java_Object_Access_Array_Access;
   end record;

   procedure Initialize (This : in out BaseCircularPool'Class);
   function Create return BaseCircularPool_Access;
   function getNextInstance (This : in out BaseCircularPool) return Java_Object_Access;
   procedure init (This : in out BaseCircularPool; allBinaryObjectFactoryInterface_Param : access AllBinaryObjectFactoryInterface_Package.AllBinaryObjectFactoryInterface'Class);
   function getInstance (This : in out BaseCircularPool; index : Integer) return Java_Object_Access;
   procedure getInstance (This : in out BaseCircularPool; index : Integer);

end org.allbinary.logic.util.cache.BaseCircularPool_Package;


