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

package org.allbinary.game.resource.RectangleResourceFactoryInterface_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;

   type RectangleResourceFactoryInterface is interface;
   type RectangleResourceFactoryInterface_Access is access all RectangleResourceFactoryInterface'Class;
   type RectangleResourceFactoryInterface_Access_Array is array (Natural range <>) of RectangleResourceFactoryInterface_Access;
   type RectangleResourceFactoryInterface_Access_Array_Access is access all RectangleResourceFactoryInterface_Access_Array;
   function getRectangle (This : in out RectangleResourceFactoryInterface; resource : Unbounded_String) return Rectangle_Access is abstract;
   function getRectangleArrayOfArrays (This : in out RectangleResourceFactoryInterface; resource : Unbounded_String) return Rectangle_Access_Array_Access_Array_Access is abstract;

end org.allbinary.game.resource.RectangleResourceFactoryInterface_Package;


