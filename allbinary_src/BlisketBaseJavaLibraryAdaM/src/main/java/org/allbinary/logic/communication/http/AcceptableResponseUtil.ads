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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.communication.http.AcceptableResponseUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type AcceptableResponseUtil is tagged;
   type AcceptableResponseUtil_Access is access all AcceptableResponseUtil'Class;
   type AcceptableResponseUtil_Access_Array is array (Natural range <>) of AcceptableResponseUtil_Access;
   type AcceptableResponseUtil_Access_Array_Access is access all AcceptableResponseUtil_Access_Array;
   type AcceptableResponseUtil_Access_Array_Access_Array is array (Natural range <>) of AcceptableResponseUtil_Access_Array_Access;
   type AcceptableResponseUtil_Access_Array_Access_Array_Access is access all AcceptableResponseUtil_Access_Array_Access_Array;

   type AcceptableResponseUtil is new Java_Object with record
      candidateVector : BasicArrayList_Access;
      tagNameVector : BasicArrayList_Access;
   end record;
   instance : AcceptableResponseUtil_Access;

   procedure Initialize (This : in out AcceptableResponseUtil'Class);
   function Create return AcceptableResponseUtil_Access;
   function getInstance return AcceptableResponseUtil_Access;
   function get (This : in out AcceptableResponseUtil; index : Integer) return Unbounded_String;
   procedure get (This : in out AcceptableResponseUtil; index : Integer);
   function getTagName (This : in out AcceptableResponseUtil; index : Integer) return Unbounded_String;
   procedure getTagName (This : in out AcceptableResponseUtil; index : Integer);
   function size (This : in out AcceptableResponseUtil) return Integer;

end org.allbinary.logic.communication.http.AcceptableResponseUtil_Package;


