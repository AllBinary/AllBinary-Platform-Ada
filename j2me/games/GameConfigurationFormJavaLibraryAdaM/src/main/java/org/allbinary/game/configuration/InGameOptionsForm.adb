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


with javax.microedition.lcdui.Choice_Package; use javax.microedition.lcdui.Choice_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package; use org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package;
with org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package; use org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.game.configuration.InGameOptionsForm_Package is

   package Choice_Package renames Standard.javax.microedition.lcdui.Choice_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package GameFeatureFormUtil_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package;
   package InGameFeatureChoiceGroups_Package renames Standard.org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out InGameOptionsForm'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InGameOptionsForm'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      backgrounBasicColor : constant BasicColor_Access := BasicColor_Access (backgrounBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      gameFeatureFormUtil : GameFeatureFormUtil_Access;
   begin
        CommandForm_Package.Initialize (This, commandListener, title, backgrounBasicColor, foregroundBasicColor);
        This.logUtil.putF (This.commonStrings.START, InGameOptionsForm_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        gameFeatureFormUtil := GameFeatureFormUtil_Package.getInstance;
        gameFeatureFormUtil.addChoiceGroup (InGameOptionsForm_Access'(This'Unchecked_Access), InGameFeatureChoiceGroups_Package.getExclusiveInstance.get, Choice_Package.EXCLUSIVE);
        gameFeatureFormUtil.addChoiceGroup (InGameOptionsForm_Access'(This'Unchecked_Access), InGameFeatureChoiceGroups_Package.getMultipleInstance.get, Choice_Package.MULTIPLE);
        InGameOptionsForm'Class (This).initCommands (commandListener);
   end Initialize;

   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return InGameOptionsForm_Access is
      This : constant InGameOptionsForm_Access := new InGameOptionsForm;
   begin
      InGameOptionsForm_Package.Initialize (This.all, commandListener_Param, title, backgrounBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure initCommands (This : in out InGameOptionsForm; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        InGameOptionsForm'Class (This).removeAllCommands;
        InGameOptionsForm'Class (This).addCommand (GameCommandsFactory_Package.getInstance.CLOSE_AND_SHOW_GAME_CANVAS);
        InGameOptionsForm'Class (This).addCommand (InGameOptionsForm_Package.DEFAULT);
        InGameOptionsForm'Class (This).setCommandListener (cmdListener);
   end initCommands;

begin
   null;
   DISPLAY := Command_Package.Create (To_Unbounded_String ("Options In Game"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
   SAVE := Command_Package.Create (To_Unbounded_String ("Save"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
   DEFAULT := Command_Package.Create (To_Unbounded_String ("Default"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);

end org.allbinary.game.configuration.InGameOptionsForm_Package;


