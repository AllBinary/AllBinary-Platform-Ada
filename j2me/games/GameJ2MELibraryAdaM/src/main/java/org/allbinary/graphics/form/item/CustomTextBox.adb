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


package body org.allbinary.graphics.form.item.CustomTextBox_Package is

   procedure Initialize_Fields (This : in out CustomTextBox'Class) is
   begin
      null;
      
      This.inputFactory := InputFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomTextBox'Class; cmdListener : CommandListener_Access; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font : Font_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
      stringUtil : StringUtil_Access;
      textFieldItem : ABTextFieldItem_Access;
   begin
        GameCommandCanvas_Package.Initialize (This, cmdListener, label, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        stringUtil := StringUtil_Package.getInstance;
        textFieldItem := ABTextFieldItem_Package.Create (This'Unchecked_Access, TextItemVisitor_Package.Create, stringUtil.EMPTY_STRING, stringUtil.EMPTY_STRING, maxSize, 0, stringUtil.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor);
        textFieldItem.setString (text);
        This.textFieldItem := textFieldItem;
        This.setTitle (label);
   end Initialize;

   function Create (cmdListener : CommandListener_Access; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font : Font_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return CustomTextBox_Access is
      This : constant CustomTextBox_Access := new CustomTextBox;
   begin
      CustomTextBox_Package.Initialize (This.all, cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   procedure submit (This : in out CustomTextBox) is
   begin
        null;
   end submit;

   procedure onEventRaw (This : in out CustomTextBox; keyCode : Integer; deviceId : Integer; repeated : Boolean) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).appendint (keyCode).toString, This'Unchecked_Access, To_Unbounded_String ("onEvent"));
        This.keyPressedByDevice (keyCode, deviceId);
   end onEventRaw;

   procedure keyPressed (This : in out CustomTextBox; keyCode : Integer) is
   begin
        This.keyPressedByDevice (keyCode, 0);
   end keyPressed;

   procedure keyReleased (This : in out CustomTextBox; keyCode : Integer) is
   begin
        This.keyReleasedByDevice (keyCode, 0);
   end keyReleased;

   procedure keyRepeated (This : in out CustomTextBox; keyCode : Integer) is
   begin
        This.keyRepeatedByDevice (keyCode, 0);
   end keyRepeated;

   procedure keyPressedByDevice (This : in out CustomTextBox; keyCode : Integer; deviceId : Integer) is
      platformKeyFactory : PlatformKeyFactory_Access;
      input : Input_Access;
   begin
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (CommonSeps_Package.getInstance.SPACE).appendint (keyCode).toString, This'Unchecked_Access, This.gameInputStrings.KEY_PRESSED);
            platformKeyFactory := PlatformKeyFactory_Package.getInstance;
            input := This.inputFactory.getInstanceById (keyCode);
            if platformKeyFactory.isSubmission (input) then
                This.submit;
            else
                This.textFieldItem.keyPressed (keyCode);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.gameInputStrings.KEY_PRESSED, e);
                end;
        end;
   end keyPressedByDevice;

   procedure keyReleasedByDevice (This : in out CustomTextBox; keyCode : Integer; deviceId : Integer) is
   begin
        null;
   end keyReleasedByDevice;

   procedure paint (This : in out CustomTextBox; graphics : Graphics_Access) is
   begin
        graphics.setColor (This.backgroundColor);
        graphics.fillRect (0, 0, This.displayInfo.getLastWidth, This.displayInfo.getLastHeight);
        graphics.setColor (This.foregroundColor);
        if not (J2MEUtil_Package.isJ2ME) then
            graphics.drawString (This.getTitle, 8, 1, 0);
        end if;
        This.paintXY (graphics, 8, (graphics.getFont.getHeight) + (2));
        GameCommandCanvas (This).paint (graphics);
   end paint;

   procedure paintXY (This : in out CustomTextBox; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.textFieldItem.paintXY (graphics, x, y);
   end paintXY;

   function getTextFieldItem (This : in out CustomTextBox) return ABTextFieldItem_Access is
   begin
        return This.textFieldItem;
   end getTextFieldItem;

end org.allbinary.graphics.form.item.CustomTextBox_Package;


