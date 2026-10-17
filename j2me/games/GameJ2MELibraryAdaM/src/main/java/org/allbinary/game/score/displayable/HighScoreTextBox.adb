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


   procedure Initialize (This : in out HighScoreTextBox'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface'Class; highScoresHelper_Param : access HighScoresHelperBaseInterface'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo'Class; cmdListener_Param : access CommandListener'Class; name : Unbounded_String; highScore_Param : access HighScore'Class; backgrounBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) is
      highScoresFactoryInterface : HighScoresFactoryInterface_Access := HighScoresFactoryInterface_Access (highScoresFactoryInterface_Param);
      highScoresHelper : HighScoresHelperBaseInterface_Access := HighScoresHelperBaseInterface_Access (highScoresHelper_Param);
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      gameInfo : GameInfo_Access := GameInfo_Access (gameInfo_Param);
      cmdListener : CommandListener_Access := CommandListener_Access (cmdListener_Param);
      highScore : HighScore_Access := HighScore_Access (highScore_Param);
      backgrounBasicColor : BasicColor_Access := BasicColor_Access (backgrounBasicColor_Param);
      foregroundBasicColor : BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
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

   function Create (highScoresFactoryInterface_Param : access HighScoresFactoryInterface'Class; highScoresHelper_Param : access HighScoresHelperBaseInterface'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo'Class; cmdListener_Param : access CommandListener'Class; name : Unbounded_String; highScore_Param : access HighScore'Class; backgrounBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) return HighScoreTextBox_Access is
      This : constant HighScoreTextBox_Access := new HighScoreTextBox;
   begin
      HighScoreTextBox_Package.Initialize (This.all, highScoresFactoryInterface_Param, highScoresHelper_Param, abeClientInformation_Param, gameInfo_Param, cmdListener_Param, name, highScore_Param, backgrounBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure initCommands (This : in out HighScoreTextBox; cmdListener_Param : access CommandListener'Class) is
      cmdListener : CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        This.removeAllCommands;
        PostGameCommandFactory_Package.getInstance.addCommands (HighScoreTextBox_Access'(This'Unchecked_Access));
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
        This.repaintBehavior.onChangeRepaint (HighScoreTextBox_Access'(This'Unchecked_Access));
        CustomTextBox (This).close;
        This.removeCommand (HighScoreUtil_Package.SUBMIT_TEXTBOX_COMMAND);
        This.update;
        if This.submitted then
            This.highScoreUtil.saveHighScore;
        else
            null;
        end if;
        This.paintable := NullPaintable_Package.getInstance;
        This.repaintBehavior.onChangeRepaint (HighScoreTextBox_Access'(This'Unchecked_Access));
   end close;

   --  throws Exception
   procedure update (This : in out HighScoreTextBox) is
      name : Unbounded_String;
   begin
        name := This.getTextFieldItem.getString;
        This.highScoreUtil.update (name);
        CustomTextBox (This).update;
   end update;

   procedure paint (This : in out HighScoreTextBox; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
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
        This.highScoreUtil.submit (HighScoreTextBox_Access'(This'Unchecked_Access));
   end submit;

end org.allbinary.game.score.displayable.HighScoreTextBox_Package;


