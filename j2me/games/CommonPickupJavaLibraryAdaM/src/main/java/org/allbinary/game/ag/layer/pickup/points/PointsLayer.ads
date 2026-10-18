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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type PointsLayer is tagged;
   type PointsLayer_Access is access all PointsLayer'Class;
   type PointsLayer_Access_Array is array (Natural range <>) of PointsLayer_Access;
   type PointsLayer_Access_Array_Access is access all PointsLayer_Access_Array;
   type PointsLayer_Access_Array_Access_Array is array (Natural range <>) of PointsLayer_Access_Array_Access;
   type PointsLayer_Access_Array_Access_Array_Access is access all PointsLayer_Access_Array_Access_Array;

   type PointsLayer is new AllBinaryLayer with record
      points : Integer;
   end record;

   procedure Initialize (This : in out PointsLayer'Class; points : Integer);
   function Create (points : Integer) return PointsLayer_Access;
   procedure paint (This : in out PointsLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure visit (This : in out PointsLayer; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class);

end org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package;


