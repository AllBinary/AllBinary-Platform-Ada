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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.TextField_Package; use javax.microedition.lcdui.TextField_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package; use org.allbinary.graphics.form.item.CustomTextBox_Package;
with org.allbinary.game.canvas.ABToGBUtil_Package; use org.allbinary.game.canvas.ABToGBUtil_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.animation.text.CustomTextBox2_Package; use org.allbinary.animation.text.CustomTextBox2_Package;
with org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package; use org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package;

package body org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package TextField_Package renames Standard.javax.microedition.lcdui.TextField_Package;
   package CustomTextBox_Package renames Standard.org.allbinary.graphics.form.item.CustomTextBox_Package;
   package ABToGBUtil_Package renames Standard.org.allbinary.game.canvas.ABToGBUtil_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out CustomTextBoxIndexedAnimationFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CustomTextBoxIndexedAnimationFactory'Class; fontSize : Integer; maxLength : Integer) is
   begin
      Initialize_Fields (This);
        This.scaleProperties := ScaleProperties_Package.Create;
        This.scaleProperties.scaleHeight := fontSize;
        This.maxLength := maxLength;
   end Initialize;

   function Create (fontSize : Integer; maxLength : Integer) return CustomTextBoxIndexedAnimationFactory_Access is
      This : constant CustomTextBoxIndexedAnimationFactory_Access := new CustomTextBoxIndexedAnimationFactory;
   begin
      CustomTextBoxIndexedAnimationFactory_Package.Initialize (This.all, fontSize, maxLength);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out CustomTextBoxIndexedAnimationFactory; instanceId : Integer) return Animation_Access is
      abToGBUtil : ABToGBUtil_Access;
      abCanvas : AllBinaryGameCanvas_Access;
      font : Font_Access;
      customTextBox : CustomTextBox_Access;
   begin
        abToGBUtil := ABToGBUtil_Package.getInstance;
        abCanvas := AllBinaryGameCanvas_Access (abToGBUtil.abCanvas);
        font := Font_Package.getFont (Font_Package.FACE_SYSTEM, Font_Package.STYLE_PLAIN, This.scaleProperties.scaleHeight);
        customTextBox := CustomTextBox_Access (CustomTextBox2_Package.Create (abCanvas.getCustomCommandListener, StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING, This.maxLength, TextField_Package.ANY, font, abCanvas.getLayerManager.getBackgroundBasicColor, abCanvas.getLayerManager.getForegroundBasicColor));
        return Animation_Access (CustomTextBoxIndexedAnimation_Package.Create (customTextBox));
   end getInstance;

   procedure setInitialScale (This : in out CustomTextBoxIndexedAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
      fontSize : Integer;
   begin
        fontSize := This.scaleProperties.scaleHeight;
        This.scaleProperties := scaleProperties;
        if (This.scaleProperties.scaleHeight) < (6) then
            This.scaleProperties.scaleHeight := fontSize;
        end if;
   end setInitialScale;

   procedure getInstance (This : in out CustomTextBoxIndexedAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := CustomTextBoxIndexedAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package;


