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
with org.allbinary.media.image.analysis.ColorRangeInterface_Package; use org.allbinary.media.image.analysis.ColorRangeInterface_Package;
with org.allbinary.input.automation.actions.script.condition.Point_Package; use org.allbinary.input.automation.actions.script.condition.Point_Package;

package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package is

   package ColorRangeInterface_Package renames Standard.org.allbinary.media.image.analysis.ColorRangeInterface_Package;

   type ColorAtActionScriptConditionInterface is interface;
   type ColorAtActionScriptConditionInterface_Access is access all ColorAtActionScriptConditionInterface'Class;
   type ColorAtActionScriptConditionInterface_Access_Array is array (Natural range <>) of ColorAtActionScriptConditionInterface_Access;
   type ColorAtActionScriptConditionInterface_Access_Array_Access is access all ColorAtActionScriptConditionInterface_Access_Array;
   type ColorAtActionScriptConditionInterface_Access_Array_Access_Array is array (Natural range <>) of ColorAtActionScriptConditionInterface_Access_Array_Access;
   type ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access is access all ColorAtActionScriptConditionInterface_Access_Array_Access_Array;
   function getPoint (This : in out ColorAtActionScriptConditionInterface) return Point_Access is abstract;
   procedure setPoint (This : in out ColorAtActionScriptConditionInterface; point_Param : access Point_Package.Point'Class) is abstract;
   function getColorRangeInterface (This : in out ColorAtActionScriptConditionInterface) return ColorRangeInterface_Access is abstract;
   procedure setColorRangeInterface (This : in out ColorAtActionScriptConditionInterface; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class) is abstract;
   procedure log (This : in out ColorAtActionScriptConditionInterface) is abstract;

end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package;


