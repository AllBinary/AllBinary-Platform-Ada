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

with AllBinary_Java;
limited with org.allbinary.image.gui.ImageJPanel_Package;
package org.allbinary.image.gui.ImageJPanel_Package_References is
   type ImageJPanel_Access is access all org.allbinary.image.gui.ImageJPanel_Package.ImageJPanel'Class;
   type ImageJPanel_Access_Array is array (Natural range <>) of ImageJPanel_Access;
   type ImageJPanel_Access_Array_Access is access all ImageJPanel_Access_Array;
   type ImageJPanel_Access_Array_Access_Array is array (Natural range <>) of ImageJPanel_Access_Array_Access;
   type ImageJPanel_Access_Array_Access_Array_Access is access all ImageJPanel_Access_Array_Access_Array;
   type ImageJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageJPanel_Access_Array_Access is (if Value /= null and then Value.all in ImageJPanel_Access_Array_Object'Class then ImageJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type ImageJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageJPanel_Access_Array_Access_Array_Object'Class then ImageJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.gui.ImageJPanel_Package_References;

with org.allbinary.image.gui.ImageJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
--  with javax.swing.GroupLayout_Package; use javax.swing.GroupLayout_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
limited with org.allbinary.image.gui.Graphics_Package;
with org.allbinary.image.gui.Graphics_Package_References;

package org.allbinary.image.gui.ImageJPanel_Package is

   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype CanvasStrings_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access;
   use type CanvasStrings_Access;
   subtype CanvasStrings_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array;
   use type CanvasStrings_Access_Array;
   subtype CanvasStrings_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access;
   use type CanvasStrings_Access_Array_Access;
   subtype CanvasStrings_Access_Array_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array;
   use type CanvasStrings_Access_Array_Access_Array;
   subtype CanvasStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array_Access;
   use type CanvasStrings_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype Graphics_Access is org.allbinary.image.gui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is org.allbinary.image.gui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is org.allbinary.image.gui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is org.allbinary.image.gui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is org.allbinary.image.gui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageJPanel_Access is org.allbinary.image.gui.ImageJPanel_Package_References.ImageJPanel_Access;
   function "=" (Left, Right : ImageJPanel_Access) return Boolean renames org.allbinary.image.gui.ImageJPanel_Package_References."=";
   subtype ImageJPanel_Access_Array is org.allbinary.image.gui.ImageJPanel_Package_References.ImageJPanel_Access_Array;
   function "=" (Left, Right : ImageJPanel_Access_Array) return Boolean renames org.allbinary.image.gui.ImageJPanel_Package_References."=";
   subtype ImageJPanel_Access_Array_Access is org.allbinary.image.gui.ImageJPanel_Package_References.ImageJPanel_Access_Array_Access;
   function "=" (Left, Right : ImageJPanel_Access_Array_Access) return Boolean renames org.allbinary.image.gui.ImageJPanel_Package_References."=";
   function Java_Box (Value : ImageJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.gui.ImageJPanel_Package_References.Java_Box;
   function Java_Unbox_ImageJPanel_Access_Array (Value : access Java_Object'Class) return ImageJPanel_Access_Array_Access renames org.allbinary.image.gui.ImageJPanel_Package_References.Java_Unbox_ImageJPanel_Access_Array;
   subtype ImageJPanel_Access_Array_Access_Array is org.allbinary.image.gui.ImageJPanel_Package_References.ImageJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : ImageJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.image.gui.ImageJPanel_Package_References."=";
   subtype ImageJPanel_Access_Array_Access_Array_Access is org.allbinary.image.gui.ImageJPanel_Package_References.ImageJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.gui.ImageJPanel_Package_References."=";
   function Java_Box (Value : ImageJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.gui.ImageJPanel_Package_References.Java_Box;
   function Java_Unbox_ImageJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageJPanel_Access_Array_Access_Array_Access renames org.allbinary.image.gui.ImageJPanel_Package_References.Java_Unbox_ImageJPanel_Access_Array_Access_Array;

   type ImageJPanel is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      canvasStrings : CanvasStrings_Access;
      isDrawn : Boolean;
      bufferedImage : BufferedImage_Access;
   end record;

   procedure Initialize (This : in out ImageJPanel'Class; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class);
   function Create (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return ImageJPanel_Access;
   procedure paint (This : in out ImageJPanel; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure initComponents (This : in out ImageJPanel);

end org.allbinary.image.gui.ImageJPanel_Package;


