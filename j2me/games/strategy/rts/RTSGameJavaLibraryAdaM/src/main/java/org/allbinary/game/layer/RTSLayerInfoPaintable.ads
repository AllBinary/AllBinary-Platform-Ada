-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.graphics.paint.NullInitUpdatePaintable_Package; use org.allbinary.graphics.paint.NullInitUpdatePaintable_Package;

package org.allbinary.game.layer.RTSLayerInfoPaintable_Package is

   package InitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.InitUpdatePaintable_Package;
   package NullInitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.NullInitUpdatePaintable_Package;

   type RTSLayerInfoPaintable is tagged;
   type RTSLayerInfoPaintable_Access is access all RTSLayerInfoPaintable'Class;
   type RTSLayerInfoPaintable_Access_Array is array (Natural range <>) of RTSLayerInfoPaintable_Access;
   type RTSLayerInfoPaintable_Access_Array_Access is access all RTSLayerInfoPaintable_Access_Array;

   type RTSLayerInfoPaintable is new InitUpdatePaintable with record
      initUpdatePaintable : InitUpdatePaintable_Access;
   end record;

   procedure Initialize (This : in out RTSLayerInfoPaintable'Class);
   function Create return RTSLayerInfoPaintable_Access;
   procedure update (This : in out RTSLayerInfoPaintable);
   procedure paint (This : in out RTSLayerInfoPaintable; graphics : Graphics_Access);
   procedure updateRTSLayerInfoInit (This : in out RTSLayerInfoPaintable; hudPaintable : InitUpdatePaintable_Access);
   procedure updateRTSLayerInfoSelection (This : in out RTSLayerInfoPaintable; hudPaintable : SelectionHudPaintable_Access);

end org.allbinary.game.layer.RTSLayerInfoPaintable_Package;


