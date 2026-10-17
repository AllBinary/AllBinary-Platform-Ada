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


   procedure Initialize (This : in out CustomTextBox2'Class; cmdListener : CommandListener_Access; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font : Font_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        CustomTextBox_Package.Initialize (This, cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor);
        This.getTextFieldItem.setFocus (True);
   end Initialize;

   function Create (cmdListener : CommandListener_Access; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font : Font_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return CustomTextBox2_Access is
      This : constant CustomTextBox2_Access := new CustomTextBox2;
   begin
      CustomTextBox2_Package.Initialize (This.all, cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

end org.allbinary.animation.text.CustomTextBox2_Package;


