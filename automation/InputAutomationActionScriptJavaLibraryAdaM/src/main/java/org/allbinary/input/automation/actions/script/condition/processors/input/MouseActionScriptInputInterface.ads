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
with org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package is


   type MouseActionScriptInputInterface is interface and ProfileActionScriptInputInterface;
   type MouseActionScriptInputInterface_Access is access all MouseActionScriptInputInterface'Class;
   type MouseActionScriptInputInterface_Access_Array is array (Natural range <>) of MouseActionScriptInputInterface_Access;
   type MouseActionScriptInputInterface_Access_Array_Access is access all MouseActionScriptInputInterface_Access_Array;
   procedure setPoint (This : in out MouseActionScriptInputInterface; point_Param : access Point'Class) is abstract;
   function getPoint (This : in out MouseActionScriptInputInterface) return Point_Access is abstract;
   function getButtonClicks (This : in out MouseActionScriptInputInterface) return Integer is abstract;
   procedure setButtonClicks (This : in out MouseActionScriptInputInterface; buttons : Integer) is abstract;
   procedure log (This : in out MouseActionScriptInputInterface) is abstract;

end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package;


