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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.TextField_Package; use javax.microedition.lcdui.TextField_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package; use org.allbinary.graphics.form.item.CustomTextBox_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.game.canvas.ABToGBUtil_Package; use org.allbinary.game.canvas.ABToGBUtil_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.text.CustomTextBox2_Package; use org.allbinary.animation.text.CustomTextBox2_Package;
with org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package; use org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package;

package org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package is

   package CustomTextBox_Package renames Standard.org.allbinary.graphics.form.item.CustomTextBox_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ABToGBUtil_Package renames Standard.org.allbinary.game.canvas.ABToGBUtil_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type CustomTextBoxIndexedAnimationFactory is tagged;
   type CustomTextBoxIndexedAnimationFactory_Access is access all CustomTextBoxIndexedAnimationFactory'Class;
   type CustomTextBoxIndexedAnimationFactory_Access_Array is array (Natural range <>) of CustomTextBoxIndexedAnimationFactory_Access;
   type CustomTextBoxIndexedAnimationFactory_Access_Array_Access is access all CustomTextBoxIndexedAnimationFactory_Access_Array;

   type CustomTextBoxIndexedAnimationFactory is new AnimationInterfaceFactoryInterface with record
      logUtil : LogUtil_Access;
      scaleProperties : ScaleProperties_Access;
      maxLength : Integer;
   end record;

   procedure Initialize (This : in out CustomTextBoxIndexedAnimationFactory'Class; fontSize : Integer; maxLength : Integer);
   function Create (fontSize : Integer; maxLength : Integer) return CustomTextBoxIndexedAnimationFactory_Access;
   function getInstance (This : in out CustomTextBoxIndexedAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out CustomTextBoxIndexedAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out CustomTextBoxIndexedAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package;


