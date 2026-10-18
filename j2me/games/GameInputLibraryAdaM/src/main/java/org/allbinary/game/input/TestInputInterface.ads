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
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;

package org.allbinary.game.input.TestInputInterface_Package is

   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;

   type TestInputInterface is interface and PaintableInterface;
   type TestInputInterface_Access is access all TestInputInterface'Class;
   type TestInputInterface_Access_Array is array (Natural range <>) of TestInputInterface_Access;
   type TestInputInterface_Access_Array_Access is access all TestInputInterface_Access_Array;
   type TestInputInterface_Access_Array_Access_Array is array (Natural range <>) of TestInputInterface_Access_Array_Access;
   type TestInputInterface_Access_Array_Access_Array_Access is access all TestInputInterface_Access_Array_Access_Array;
   procedure up (This : in out TestInputInterface) is abstract;
   procedure down (This : in out TestInputInterface) is abstract;
   procedure left (This : in out TestInputInterface) is abstract;
   procedure right (This : in out TestInputInterface) is abstract;
   procedure strafeLeft (This : in out TestInputInterface) is abstract;
   procedure strafeRight (This : in out TestInputInterface) is abstract;

end org.allbinary.game.input.TestInputInterface_Package;


