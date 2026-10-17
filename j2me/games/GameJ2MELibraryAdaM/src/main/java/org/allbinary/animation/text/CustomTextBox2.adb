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


package body org.allbinary.animation.text.CustomTextBox2_Package is

   procedure Initialize_Fields (This : in out CustomTextBox2'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomTextBox2'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
      font : constant Font_Access := Font_Access (font_Param);
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        CustomTextBox_Package.Initialize (This, cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor);
        This.getTextFieldItem.setFocus (True);
   end Initialize;

   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CustomTextBox2_Access is
      This : constant CustomTextBox2_Access := new CustomTextBox2;
   begin
      CustomTextBox2_Package.Initialize (This.all, cmdListener_Param, label, text, maxSize, constraints, font_Param, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

end org.allbinary.animation.text.CustomTextBox2_Package;


