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
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;

package org.allbinary.graphics.RectangleFactory_Package is


   type RectangleFactory is tagged;
   type RectangleFactory_Access is access all RectangleFactory'Class;
   type RectangleFactory_Access_Array is array (Natural range <>) of RectangleFactory_Access;
   type RectangleFactory_Access_Array_Access is access all RectangleFactory_Access_Array;

   type RectangleFactory is new Java_Object with null record;
   SINGLETON : Rectangle_Access;
   ARRAY_OF_ARRAYS : Rectangle_Access_Array_Access_Array_Access;

   procedure Initialize (This : in out RectangleFactory'Class);
   function Create return RectangleFactory_Access;

end org.allbinary.graphics.RectangleFactory_Package;


