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

package org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package is


   type ClassLoaderUtil is tagged;
   type ClassLoaderUtil_Access is access all ClassLoaderUtil'Class;
   type ClassLoaderUtil_Access_Array is array (Natural range <>) of ClassLoaderUtil_Access;
   type ClassLoaderUtil_Access_Array_Access is access all ClassLoaderUtil_Access_Array;

   type ClassLoaderUtil is new Java_Object with null record;

   procedure Initialize (This : in out ClassLoaderUtil'Class);
   function Create return ClassLoaderUtil_Access;
   function getName (anyType : Java_Object_Access) return Unbounded_String;
   procedure getName (anyType : Java_Object_Access);

end org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package;


