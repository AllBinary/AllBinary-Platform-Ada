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


package body org.allbinary.game.score.displayable.HighScoreTextBox_Package is

   procedure Initialize_Fields (This : in out HighScoreTextBox'Class) is
   begin
      null;
      This.virtualKeyboardEventHandler := VirtualKeyboardEventHandler_Package.getInstance;
      
      This.pleaseWait := SimpleTextPaintable_Package.Create (This.commonStrings.PLEASE_WAIT, BasicColorFactory_Package.getInstance.WHITE);
      This.paintable := NullPaintable_Package.getInstance;
      This.submitted := False;
   end Initialize_Fields;


   procedure Initialize (This : in out HighScoreTextBox'Class; highScoresFactoryInterface : HighScoresFactoryInterface_Access; highScoresHelper : HighScoresHelperBaseInterface_Access; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; cmdListener : CommandListener_Access; name : Unbounded_String; highScore : HighScore_Access; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
      operatingSystemInterface : GenericOperatingSystem_Access;
      username : Unbounded_String;
   begin
        CustomTextBox_Package.Initialize (This, cmdListener, To_Unbounded_String ("New High Score Enter Name:"), name, 12, TextField_Package.ANY, Font_Package.getDefaultFont, backgrounBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.highScoreUtil := HighScoreUtil_Package.Create (highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore);
        operatingSystemInterface := OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
        if operatingSystemInterface.isOverScan then
            username := InApplicationPurchaseFactory_Package.getInstance.getUserName;
            if (username) /= (Null_Unbounded_String) then
                This.getTextFieldItem.setString (username);
            else
                This.getTextFieldItem.setString (To_Unbounded_String ("NoGamerInfo"));
            end if;
        end if;
   end Initialize;

   function Create (highScoresFactoryInterface : HighScoresFactoryInterface_Access; highScoresHelper : HighScoresHelperBaseInterface_Access; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; cmdListener : CommandListener_Access; name : Unbounded_String; highScore : HighScore_Access; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return HighScoreTextBox_Access is
      This : constant HighScoreTextBox_Access := new HighScoreTextBox;
   begin
      HighScoreTextBox_Package.Initialize (This.all, highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore, backgrounBasicColor, foregroundBasicColor);
      return This;
   end Create;

   procedure initCommands (This : in out HighScoreTextBox; cmdListener : CommandListener_Access) is
   begin
        This.removeAllCommands;
        PostGameCommandFactory_Package.getInstance.addCommands (This'Unchecked_Access);
        This.addCommand (HighScoreUtil_Package.SUBMIT_TEXTBOX_COMMAND);
        This.setCommandListener (cmdListener);
   end initCommands;

   procedure open (This : in out HighScoreTextBox) is
   begin
        This.virtualKeyboardEventHandler.open;
        This.paintable := NullPaintable_Package.getInstance;
        CustomTextBox (This).open;
   end open;

   --  throws Exception
   procedure close (This : in out HighScoreTextBox) is
   begin
        This.virtualKeyboardEventHandler.close;
        This.paintable := This.pleaseWait;
        This.repaintBehavior.onChangeRepaint (This'Unchecked_Access);
        CustomTextBox (This).close;
        This.removeCommand (HighScoreUtil_Package.SUBMIT_TEXTBOX_COMMAND);
        This.update;
        if This.submitted then
            This.highScoreUtil.saveHighScore;
        else
            null;
        end if;
        This.paintable := NullPaintable_Package.getInstance;
        This.repaintBehavior.onChangeRepaint (This'Unchecked_Access);
   end close;

   --  throws Exception
   procedure update (This : in out HighScoreTextBox) is
      name : Unbounded_String;
   begin
        name := This.getTextFieldItem.getString;
        This.highScoreUtil.update (name);
        CustomTextBox (This).update;
   end update;

   procedure paint (This : in out HighScoreTextBox; graphics : Graphics_Access) is
   begin
        CustomTextBox (This).paint (graphics);
        This.paintable.paint (graphics);
   end paint;

   procedure saveHighScore (This : in out HighScoreTextBox) is
   begin
        This.highScoreUtil.saveHighScore;
   end saveHighScore;

   procedure submit (This : in out HighScoreTextBox) is
   begin
        This.highScoreUtil.submit (This'Unchecked_Access);
   end submit;

end org.allbinary.game.score.displayable.HighScoreTextBox_Package;


