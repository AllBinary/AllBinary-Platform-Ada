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
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.animation.vector.CircleAnimation_Package; use org.allbinary.animation.vector.CircleAnimation_Package;

package org.allbinary.animation.vector.AdjustedCircleAnimation_Package is

   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type AdjustedCircleAnimation is tagged;
   type AdjustedCircleAnimation_Access is access all AdjustedCircleAnimation'Class;
   type AdjustedCircleAnimation_Access_Array is array (Natural range <>) of AdjustedCircleAnimation_Access;
   type AdjustedCircleAnimation_Access_Array_Access is access all AdjustedCircleAnimation_Access_Array;

   type AdjustedCircleAnimation is new CircleAnimation with record
      xAdjustment : Integer;
      yAdjustment : Integer;
   end record;

   procedure Initialize (This : in out AdjustedCircleAnimation'Class; width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return AdjustedCircleAnimation_Access;
   function createAnimation (width : Integer; height : Integer; xAdjustment : Integer; yAdjustment : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return AdjustedCircleAnimation_Access;
   procedure createAnimation (width : Integer; height : Integer; xAdjustment : Integer; yAdjustment : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function createW (width : Integer; height : Integer; innerWidth : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return AdjustedCircleAnimation_Access;
   procedure createW (width : Integer; height : Integer; innerWidth : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure initXY (This : in out AdjustedCircleAnimation; xAdjustment : Integer; yAdjustment : Integer);
   procedure init (This : in out AdjustedCircleAnimation; innerWidth : Integer);
   procedure paintXY (This : in out AdjustedCircleAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.vector.AdjustedCircleAnimation_Package;


