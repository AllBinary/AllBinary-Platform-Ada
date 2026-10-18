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
with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package; use org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package is

   package TileLayerPositionIntoViewPosition_Package renames Standard.org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

   type TileLayerPositionIntoViewPositionUtil is tagged;
   type TileLayerPositionIntoViewPositionUtil_Access is access all TileLayerPositionIntoViewPositionUtil'Class;
   type TileLayerPositionIntoViewPositionUtil_Access_Array is array (Natural range <>) of TileLayerPositionIntoViewPositionUtil_Access;
   type TileLayerPositionIntoViewPositionUtil_Access_Array_Access is access all TileLayerPositionIntoViewPositionUtil_Access_Array;
   type TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array is array (Natural range <>) of TileLayerPositionIntoViewPositionUtil_Access_Array_Access;
   type TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array_Access is access all TileLayerPositionIntoViewPositionUtil_Access_Array_Access_Array;

   type TileLayerPositionIntoViewPositionUtil is new Java_Object with null record;

   procedure Initialize (This : in out TileLayerPositionIntoViewPositionUtil'Class);
   function Create return TileLayerPositionIntoViewPositionUtil_Access;
   procedure init (gameCanvasInterface_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; viewPosition_Param : access TileLayerPositionIntoViewPosition_Package.TileLayerPositionIntoViewPosition'Class);

end org.allbinary.game.view.TileLayerPositionIntoViewPositionUtil_Package;


