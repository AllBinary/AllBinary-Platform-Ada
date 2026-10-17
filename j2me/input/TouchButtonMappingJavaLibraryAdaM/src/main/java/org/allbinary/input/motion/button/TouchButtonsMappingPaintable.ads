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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.CellPositionFactory_Package; use org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package is

   package CellPositionFactory_Package renames org.allbinary.graphics.CellPositionFactory_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package Paintable_Package renames org.allbinary.graphics.paint.Paintable_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type TouchButtonsMappingPaintable is tagged;
   type TouchButtonsMappingPaintable_Access is access all TouchButtonsMappingPaintable'Class;
   type TouchButtonsMappingPaintable_Access_Array is array (Natural range <>) of TouchButtonsMappingPaintable_Access;
   type TouchButtonsMappingPaintable_Access_Array_Access is access all TouchButtonsMappingPaintable_Access_Array;

   type TouchButtonsMappingPaintable is new Paintable with record
      logUtil : LogUtil_Access;
      foregroundColor : Integer;
      paintableTable : Paintable_Access_Array_Access_Array_Access;
      touchButtonLocationHelper : TouchButtonLocationHelper_Access;
   end record;

   procedure Initialize (This : in out TouchButtonsMappingPaintable'Class; basicColor : BasicColor_Access);
   function Create (basicColor : BasicColor_Access) return TouchButtonsMappingPaintable_Access;
   procedure init (This : in out TouchButtonsMappingPaintable);
   function createPaintableTable (This : in out TouchButtonsMappingPaintable) return Paintable_Access_Array_Access_Array_Access;
   procedure createPaintableTable (This : in out TouchButtonsMappingPaintable);
   procedure paint (This : in out TouchButtonsMappingPaintable; graphics : Graphics_Access);

end org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package;


