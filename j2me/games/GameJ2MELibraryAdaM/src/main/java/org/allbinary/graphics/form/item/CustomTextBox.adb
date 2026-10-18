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


with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.PlatformKeyFactory_Package; use org.allbinary.game.input.PlatformKeyFactory_Package;
with org.allbinary.graphics.form.item.validation.TextItemVisitor_Package; use org.allbinary.graphics.form.item.validation.TextItemVisitor_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.graphics.form.item.CustomTextBox_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package PlatformKeyFactory_Package renames Standard.org.allbinary.game.input.PlatformKeyFactory_Package;
   package TextItemVisitor_Package renames Standard.org.allbinary.graphics.form.item.validation.TextItemVisitor_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out CustomTextBox'Class) is
   begin
      null;
      
      This.inputFactory := InputFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomTextBox'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
      font : constant Font_Access := Font_Access (font_Param);
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      stringUtil : StringUtil_Access;
      textFieldItem : ABTextFieldItem_Access;
   begin
        GameCommandCanvas_Package.Initialize (This, cmdListener, label, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        stringUtil := StringUtil_Package.getInstance;
        textFieldItem := ABTextFieldItem_Package.Create (CustomTextBox_Access'(This'Unchecked_Access), TextItemVisitor_Package.Create, stringUtil.EMPTY_STRING, stringUtil.EMPTY_STRING, maxSize, 0, stringUtil.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor);
        textFieldItem.setString (text);
        This.textFieldItem := textFieldItem;
        CustomTextBox'Class (This).setTitle (label);
   end Initialize;

   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CustomTextBox_Access is
      This : constant CustomTextBox_Access := new CustomTextBox;
   begin
      CustomTextBox_Package.Initialize (This.all, cmdListener_Param, label, text, maxSize, constraints, font_Param, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure submit (This : in out CustomTextBox) is
   begin
        null;
   end submit;

   procedure onEventRaw (This : in out CustomTextBox; keyCode : Integer; deviceId : Integer; repeated : Boolean) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).appendint (keyCode).toString, CustomTextBox_Access'(This'Unchecked_Access), To_Unbounded_String ("onEvent"));
        CustomTextBox'Class (This).keyPressedByDevice (keyCode, deviceId);
   end onEventRaw;

   procedure keyPressed (This : in out CustomTextBox; keyCode : Integer) is
   begin
        CustomTextBox'Class (This).keyPressedByDevice (keyCode, 0);
   end keyPressed;

   procedure keyReleased (This : in out CustomTextBox; keyCode : Integer) is
   begin
        CustomTextBox'Class (This).keyReleasedByDevice (keyCode, 0);
   end keyReleased;

   procedure keyRepeated (This : in out CustomTextBox; keyCode : Integer) is
   begin
        CustomTextBox'Class (This).keyRepeatedByDevice (keyCode, 0);
   end keyRepeated;

   procedure keyPressedByDevice (This : in out CustomTextBox; keyCode : Integer; deviceId : Integer) is
      platformKeyFactory : PlatformKeyFactory_Access;
      input : Input_Access;
   begin
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (CommonSeps_Package.getInstance.SPACE).appendint (keyCode).toString, CustomTextBox_Access'(This'Unchecked_Access), This.gameInputStrings.KEY_PRESSED);
            platformKeyFactory := PlatformKeyFactory_Package.getInstance;
            input := This.inputFactory.getInstanceById (keyCode);
            if platformKeyFactory.isSubmission (input) then
                CustomTextBox'Class (This).submit;
            else
                This.textFieldItem.keyPressed (keyCode);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, CustomTextBox_Access'(This'Unchecked_Access), This.gameInputStrings.KEY_PRESSED, e);
                end;
        end;
   end keyPressedByDevice;

   procedure keyReleasedByDevice (This : in out CustomTextBox; keyCode : Integer; deviceId : Integer) is
   begin
        null;
   end keyReleasedByDevice;

   procedure paint (This : in out CustomTextBox; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.setColor (This.backgroundColor);
        graphics.fillRect (0, 0, This.displayInfo.getLastWidth, This.displayInfo.getLastHeight);
        graphics.setColor (This.foregroundColor);
        if not (J2MEUtil_Package.isJ2ME) then
            graphics.drawString (CustomTextBox'Class (This).getTitle, 8, 1, 0);
        end if;
        CustomTextBox'Class (This).paintXY (graphics, 8, (graphics.getFont.getHeight) + (2));
        GameCommandCanvas (This).paint (graphics);
   end paint;

   procedure paintXY (This : in out CustomTextBox; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.textFieldItem.paintXY (graphics, x, y);
   end paintXY;

   function getTextFieldItem (This : in out CustomTextBox) return ABTextFieldItem_Access is
   begin
        return This.textFieldItem;
   end getTextFieldItem;

end org.allbinary.graphics.form.item.CustomTextBox_Package;


