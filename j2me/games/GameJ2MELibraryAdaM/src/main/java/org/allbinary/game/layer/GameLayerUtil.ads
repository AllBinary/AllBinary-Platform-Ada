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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.layer.GameLayerUtil_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type GameLayerUtil is tagged;
   type GameLayerUtil_Access is access all GameLayerUtil'Class;
   type GameLayerUtil_Access_Array is array (Natural range <>) of GameLayerUtil_Access;
   type GameLayerUtil_Access_Array_Access is access all GameLayerUtil_Access_Array;
   type GameLayerUtil_Access_Array_Access_Array is array (Natural range <>) of GameLayerUtil_Access_Array_Access;
   type GameLayerUtil_Access_Array_Access_Array_Access is access all GameLayerUtil_Access_Array_Access_Array;

   type GameLayerUtil is new Java_Object with null record;

   procedure Initialize (This : in out GameLayerUtil'Class);
   function Create return GameLayerUtil_Access;
   function isOnScreen (layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isOnScreen (layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function isInside (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer) return Boolean;
   procedure isInside (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer);

end org.allbinary.game.layer.GameLayerUtil_Package;


