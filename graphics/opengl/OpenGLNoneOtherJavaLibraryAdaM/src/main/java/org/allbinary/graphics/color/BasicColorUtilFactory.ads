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
with org.allbinary.graphics.color.BasicColorUtil_Package; use org.allbinary.graphics.color.BasicColorUtil_Package;

package org.allbinary.graphics.color.BasicColorUtilFactory_Package is


   type BasicColorUtilFactory is tagged;
   type BasicColorUtilFactory_Access is access all BasicColorUtilFactory'Class;
   type BasicColorUtilFactory_Access_Array is array (Natural range <>) of BasicColorUtilFactory_Access;
   type BasicColorUtilFactory_Access_Array_Access is access all BasicColorUtilFactory_Access_Array;

   type BasicColorUtilFactory is new Java_Object with null record;

   procedure Initialize (This : in out BasicColorUtilFactory'Class);
   function Create return BasicColorUtilFactory_Access;
   function getInstance return BasicColorUtil_Access;

end org.allbinary.graphics.color.BasicColorUtilFactory_Package;


