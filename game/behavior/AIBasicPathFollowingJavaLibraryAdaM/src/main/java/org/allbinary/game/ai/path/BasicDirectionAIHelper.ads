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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.math.AngleIncrementInfo_Package; use org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;

package org.allbinary.game.ai.path.BasicDirectionAIHelper_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package AngleIncrementInfo_Package renames Standard.org.allbinary.math.AngleIncrementInfo_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;

   type BasicDirectionAIHelper is tagged;
   type BasicDirectionAIHelper_Access is access all BasicDirectionAIHelper'Class;
   type BasicDirectionAIHelper_Access_Array is array (Natural range <>) of BasicDirectionAIHelper_Access;
   type BasicDirectionAIHelper_Access_Array_Access is access all BasicDirectionAIHelper_Access_Array;

   type BasicDirectionAIHelper is new Java_Object with record
      name : Unbounded_String;
      angleInfo : AngleInfo_Access;
   end record;

   procedure Initialize (This : in out BasicDirectionAIHelper'Class; name : Unbounded_String; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class);
   function Create (name : Unbounded_String; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class) return BasicDirectionAIHelper_Access;
   function turnAI (This : in out BasicDirectionAIHelper; frame : Integer) return Integer;
   procedure turnAI (This : in out BasicDirectionAIHelper; frame : Integer);
   function getAIKeyPressed (This : in out BasicDirectionAIHelper; frame : Integer) return Integer;
   procedure getAIKeyPressed (This : in out BasicDirectionAIHelper; frame : Integer);
   function getAIKeyPressedFromDirection (This : in out BasicDirectionAIHelper; geographicMapDirectionData_Param : access Direction_Package.Direction'Class) return Integer;
   procedure getAIKeyPressedFromDirection (This : in out BasicDirectionAIHelper; geographicMapDirectionData_Param : access Direction_Package.Direction'Class);
   function getAngleInfoP (This : in out BasicDirectionAIHelper) return AngleInfo_Access;
   function getName (This : in out BasicDirectionAIHelper) return Unbounded_String;

end org.allbinary.game.ai.path.BasicDirectionAIHelper_Package;


