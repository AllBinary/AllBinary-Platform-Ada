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
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.image.gui.JPanel_Package; use org.allbinary.image.gui.JPanel_Package;
with org.allbinary.image.gui.Graphics_Package; use org.allbinary.image.gui.Graphics_Package;

package org.allbinary.image.gui.ImageJPanel_Package is

   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ImageJPanel is tagged;
   type ImageJPanel_Access is access all ImageJPanel'Class;
   type ImageJPanel_Access_Array is array (Natural range <>) of ImageJPanel_Access;
   type ImageJPanel_Access_Array_Access is access all ImageJPanel_Access_Array;

   type ImageJPanel is new JPanel with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      canvasStrings : CanvasStrings_Access;
      isDrawn : Boolean;
      bufferedImage : BufferedImage_Access;
   end record;

   procedure Initialize (This : in out ImageJPanel'Class; bufferedImage : BufferedImage_Access);
   function Create (bufferedImage : BufferedImage_Access) return ImageJPanel_Access;
   procedure paint (This : in out ImageJPanel; graphics : Graphics_Access);
   procedure initComponents (This : in out ImageJPanel);

end org.allbinary.image.gui.ImageJPanel_Package;


