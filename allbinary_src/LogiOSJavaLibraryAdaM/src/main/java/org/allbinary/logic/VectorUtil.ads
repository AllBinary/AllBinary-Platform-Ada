-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
with java.util.Vector_Package; use java.util.Vector_Package;

package org.allbinary.logic.VectorUtil_Package is

   package Vector_Package renames Standard.java.util.Vector_Package;

   type VectorUtil is tagged;
   type VectorUtil_Access is access all VectorUtil'Class;
   type VectorUtil_Access_Array is array (Natural range <>) of VectorUtil_Access;
   type VectorUtil_Access_Array_Access is access all VectorUtil_Access_Array;

   type VectorUtil is new Java_Object with null record;
   instance : VectorUtil_Access;

   procedure Initialize (This : in out VectorUtil'Class);
   function Create return VectorUtil_Access;
   function getInstance return VectorUtil_Access;
   function getSize (This : in out VectorUtil; anyType_Param : access Java_Object'Class) return Integer;
   procedure getSize (This : in out VectorUtil; anyType_Param : access Java_Object'Class);
   function elementAt (This : in out VectorUtil; anyType_Param : access Java_Object'Class; index : Integer) return Java_Object_Access;
   procedure elementAt (This : in out VectorUtil; anyType_Param : access Java_Object'Class; index : Integer);

end org.allbinary.logic.VectorUtil_Package;


