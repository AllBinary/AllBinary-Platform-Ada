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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystemFactory_Package; use org.allbinary.logic.system.os.OperatingSystemFactory_Package;
with org.allbinary.game.paint.ColorFillPaintable_Package; use org.allbinary.game.paint.ColorFillPaintable_Package;
with org.allbinary.game.paint.OverScanColorFillPaintable_Package; use org.allbinary.game.paint.OverScanColorFillPaintable_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package; use org.allbinary.game.paint.ColorFillBasePaintable_Package;

package org.allbinary.game.paint.ColorFillPaintableFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package OperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.OperatingSystemFactory_Package;

   type ColorFillPaintableFactory is tagged;
   type ColorFillPaintableFactory_Access is access all ColorFillPaintableFactory'Class;
   type ColorFillPaintableFactory_Access_Array is array (Natural range <>) of ColorFillPaintableFactory_Access;
   type ColorFillPaintableFactory_Access_Array_Access is access all ColorFillPaintableFactory_Access_Array;

   type ColorFillPaintableFactory is new Java_Object with null record;
   instance : ColorFillPaintableFactory_Access;

   procedure Initialize (This : in out ColorFillPaintableFactory'Class);
   function Create return ColorFillPaintableFactory_Access;
   function getInstance return ColorFillPaintableFactory_Access;
   function getInstance (This : in out ColorFillPaintableFactory; basicColor : BasicColor_Access; forThreedCanvas : Boolean) return ColorFillBasePaintable_Access;
   procedure getInstance (This : in out ColorFillPaintableFactory; basicColor : BasicColor_Access; forThreedCanvas : Boolean);

end org.allbinary.game.paint.ColorFillPaintableFactory_Package;


