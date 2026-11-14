-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.image.gui.CreateIconImagesJPanel_Package;
package org.allbinary.image.gui.CreateIconImagesJPanel_Package_References is
   type CreateIconImagesJPanel_Access is access all org.allbinary.image.gui.CreateIconImagesJPanel_Package.CreateIconImagesJPanel'Class;
   type CreateIconImagesJPanel_Access_Array is array (Natural range <>) of CreateIconImagesJPanel_Access;
   type CreateIconImagesJPanel_Access_Array_Access is access all CreateIconImagesJPanel_Access_Array;
   type CreateIconImagesJPanel_Access_Array_Access_Array is array (Natural range <>) of CreateIconImagesJPanel_Access_Array_Access;
   type CreateIconImagesJPanel_Access_Array_Access_Array_Access is access all CreateIconImagesJPanel_Access_Array_Access_Array;
   type CreateIconImagesJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CreateIconImagesJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : CreateIconImagesJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CreateIconImagesJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CreateIconImagesJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CreateIconImagesJPanel_Access_Array_Access is (if Value /= null and then Value.all in CreateIconImagesJPanel_Access_Array_Object'Class then CreateIconImagesJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type CreateIconImagesJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CreateIconImagesJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CreateIconImagesJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CreateIconImagesJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CreateIconImagesJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CreateIconImagesJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CreateIconImagesJPanel_Access_Array_Access_Array_Object'Class then CreateIconImagesJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.gui.CreateIconImagesJPanel_Package_References;

with org.allbinary.image.gui.CreateIconImagesJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
--  with java.awt.image.Raster_Package; use java.awt.image.Raster_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.awt.event.ActionListener_Package; use java.awt.event.ActionListener_Package;
--  with javax.swing.GroupLayout_Package; use javax.swing.GroupLayout_Package;
--  with javax.swing.JButton_Package; use javax.swing.JButton_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;

package org.allbinary.image.gui.CreateIconImagesJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageProcessorInput_Package renames Standard.org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageProcessorInputCompositeInterface_Package renames Standard.org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
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
   subtype ImageProcessorInput_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access;
   use type ImageProcessorInput_Access;
   subtype ImageProcessorInput_Access_Array is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array;
   use type ImageProcessorInput_Access_Array;
   subtype ImageProcessorInput_Access_Array_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access;
   use type ImageProcessorInput_Access_Array_Access;
   subtype ImageProcessorInput_Access_Array_Access_Array is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access_Array;
   use type ImageProcessorInput_Access_Array_Access_Array;
   subtype ImageProcessorInput_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access_Array_Access;
   use type ImageProcessorInput_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CreateIconImagesJPanel_Access is org.allbinary.image.gui.CreateIconImagesJPanel_Package_References.CreateIconImagesJPanel_Access;
   function "=" (Left, Right : CreateIconImagesJPanel_Access) return Boolean renames org.allbinary.image.gui.CreateIconImagesJPanel_Package_References."=";
   subtype CreateIconImagesJPanel_Access_Array is org.allbinary.image.gui.CreateIconImagesJPanel_Package_References.CreateIconImagesJPanel_Access_Array;
   function "=" (Left, Right : CreateIconImagesJPanel_Access_Array) return Boolean renames org.allbinary.image.gui.CreateIconImagesJPanel_Package_References."=";
   subtype CreateIconImagesJPanel_Access_Array_Access is org.allbinary.image.gui.CreateIconImagesJPanel_Package_References.CreateIconImagesJPanel_Access_Array_Access;
   function "=" (Left, Right : CreateIconImagesJPanel_Access_Array_Access) return Boolean renames org.allbinary.image.gui.CreateIconImagesJPanel_Package_References."=";
   function Java_Box (Value : CreateIconImagesJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.gui.CreateIconImagesJPanel_Package_References.Java_Box;
   function Java_Unbox_CreateIconImagesJPanel_Access_Array (Value : access Java_Object'Class) return CreateIconImagesJPanel_Access_Array_Access renames org.allbinary.image.gui.CreateIconImagesJPanel_Package_References.Java_Unbox_CreateIconImagesJPanel_Access_Array;
   subtype CreateIconImagesJPanel_Access_Array_Access_Array is org.allbinary.image.gui.CreateIconImagesJPanel_Package_References.CreateIconImagesJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : CreateIconImagesJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.image.gui.CreateIconImagesJPanel_Package_References."=";
   subtype CreateIconImagesJPanel_Access_Array_Access_Array_Access is org.allbinary.image.gui.CreateIconImagesJPanel_Package_References.CreateIconImagesJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CreateIconImagesJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.gui.CreateIconImagesJPanel_Package_References."=";
   function Java_Box (Value : CreateIconImagesJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.gui.CreateIconImagesJPanel_Package_References.Java_Box;
   function Java_Unbox_CreateIconImagesJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return CreateIconImagesJPanel_Access_Array_Access_Array_Access renames org.allbinary.image.gui.CreateIconImagesJPanel_Package_References.Java_Unbox_CreateIconImagesJPanel_Access_Array_Access_Array;

   type CreateIconImagesJPanel is new Java_Object and ImageProcessorInputCompositeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      imageProcessorInput : ImageProcessorInput_Access;
      aboveJButton : JButton_Access;
   end record;

   procedure Initialize (This : in out CreateIconImagesJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class);
   function Create (imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) return CreateIconImagesJPanel_Access;
   procedure process (This : in out CreateIconImagesJPanel);
   function getImageProcessorInput (This : in out CreateIconImagesJPanel) return ImageProcessorInput_Access;
   procedure setImageProcessorInput (This : in out CreateIconImagesJPanel; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class);
   procedure initComponents (This : in out CreateIconImagesJPanel);
   procedure aboveJButtonActionPerformed (This : in out CreateIconImagesJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);

end org.allbinary.image.gui.CreateIconImagesJPanel_Package;


