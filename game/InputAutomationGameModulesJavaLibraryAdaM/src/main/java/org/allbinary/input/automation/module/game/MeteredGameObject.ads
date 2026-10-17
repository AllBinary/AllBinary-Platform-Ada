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
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package; use org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package;
with org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package; use org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package;

package org.allbinary.input.automation.module.game.MeteredGameObject_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type MeteredGameObject is tagged;
   type MeteredGameObject_Access is access all MeteredGameObject'Class;
   type MeteredGameObject_Access_Array is array (Natural range <>) of MeteredGameObject_Access;
   type MeteredGameObject_Access_Array_Access is access all MeteredGameObject_Access_Array;

   type MeteredGameObject is new MeteredGameObjectInterface with record
      ratios : Long_Float_Array_Access;
      good : Boolean;
      dropping : Boolean;
      minX : Integer;
      maxX : Integer;
      y : Integer;
      size : Integer;
      RATIOS_LABEL : Unbounded_String;
      IS_GOOD_LABEL : Unbounded_String;
      IS_DROPPPING_LABEL : Unbounded_String;
   end record;

   procedure Initialize (This : in out MeteredGameObject'Class; bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer);
   function Create (bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer) return MeteredGameObject_Access;
   function isGood (This : in out MeteredGameObject) return Boolean;
   procedure setGood (This : in out MeteredGameObject; good : Boolean);
   function isDropping (This : in out MeteredGameObject) return Boolean;
   procedure setDropping (This : in out MeteredGameObject; dropping : Boolean);
   function getRatios (This : in out MeteredGameObject) return Long_Float_Array_Access;
   function toString (This : in out MeteredGameObject) return Unbounded_String;
   procedure setRatios (This : in out MeteredGameObject; ratios : Long_Float_Array_Access);
   function getMinX (This : in out MeteredGameObject) return Integer;
   procedure setMinX (This : in out MeteredGameObject; minX : Integer);
   function getMaxX (This : in out MeteredGameObject) return Integer;
   procedure setMaxX (This : in out MeteredGameObject; maxX : Integer);
   function getY (This : in out MeteredGameObject) return Integer;
   procedure setY (This : in out MeteredGameObject; y : Integer);
   function getSize (This : in out MeteredGameObject) return Integer;
   procedure setSize (This : in out MeteredGameObject; size : Integer);

end org.allbinary.input.automation.module.game.MeteredGameObject_Package;


