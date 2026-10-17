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


package body org.allbinary.game.configuration.InGameOptionsForm_Package is

   procedure Initialize_Fields (This : in out InGameOptionsForm'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InGameOptionsForm'Class; commandListener_Param : access CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) is
      commandListener : CommandListener_Access := CommandListener_Access (commandListener_Param);
      backgrounBasicColor : BasicColor_Access := BasicColor_Access (backgrounBasicColor_Param);
      foregroundBasicColor : BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      gameFeatureFormUtil : GameFeatureFormUtil_Access;
   begin
        CommandForm_Package.Initialize (This, commandListener, title, backgrounBasicColor, foregroundBasicColor);
        This.logUtil.putF (This.commonStrings.START, InGameOptionsForm_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        gameFeatureFormUtil := GameFeatureFormUtil_Package.getInstance;
        gameFeatureFormUtil.addChoiceGroup (InGameOptionsForm_Access'(This'Unchecked_Access), InGameFeatureChoiceGroups_Package.getExclusiveInstance.get, Choice_Package.EXCLUSIVE);
        gameFeatureFormUtil.addChoiceGroup (InGameOptionsForm_Access'(This'Unchecked_Access), InGameFeatureChoiceGroups_Package.getMultipleInstance.get, Choice_Package.MULTIPLE);
        This.initCommands (commandListener);
   end Initialize;

   function Create (commandListener_Param : access CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) return InGameOptionsForm_Access is
      This : constant InGameOptionsForm_Access := new InGameOptionsForm;
   begin
      InGameOptionsForm_Package.Initialize (This.all, commandListener_Param, title, backgrounBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure initCommands (This : in out InGameOptionsForm; cmdListener_Param : access CommandListener'Class) is
      cmdListener : CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        This.removeAllCommands;
        This.addCommand (GameCommandsFactory_Package.getInstance.CLOSE_AND_SHOW_GAME_CANVAS);
        This.addCommand (InGameOptionsForm_Package.DEFAULT);
        This.setCommandListener (cmdListener);
   end initCommands;

begin
   null;
   DISPLAY := Command_Package.Create (To_Unbounded_String ("Options In Game"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
   SAVE := Command_Package.Create (To_Unbounded_String ("Save"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
   DEFAULT := Command_Package.Create (To_Unbounded_String ("Default"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);

end org.allbinary.game.configuration.InGameOptionsForm_Package;


