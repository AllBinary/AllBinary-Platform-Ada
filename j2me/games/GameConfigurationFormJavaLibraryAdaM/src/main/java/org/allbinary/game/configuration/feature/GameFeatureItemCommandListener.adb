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


package body org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package is

   procedure Initialize_Fields (This : in out GameFeatureItemCommandListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameFeatureItemCommandListener'Class; gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class) is
      gameOptionsForm : constant GameOptionsForm_Access := GameOptionsForm_Access (gameOptionsForm_Param);
   begin
      Initialize_Fields (This);
        This.gameOptionsForm := gameOptionsForm;
   end Initialize;

   function Create (gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class) return GameFeatureItemCommandListener_Access is
      This : constant GameFeatureItemCommandListener_Access := new GameFeatureItemCommandListener;
   begin
      GameFeatureItemCommandListener_Package.Initialize (This.all, gameOptionsForm_Param);
      return This;
   end Create;

   procedure commandAction (This : in out GameFeatureItemCommandListener; command_Param : access Command_Package.Command'Class; item_Param : access Item_Package.Item'Class) is
      command : constant Command_Access := Command_Access (command_Param);
      item : constant Item_Access := Item_Access (item_Param);
      itemLabel : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        begin
            itemLabel := item.getLabel;
            This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.ITEM_LABEL).append (itemLabel).toString, GameFeatureItemCommandListener_Access'(This'Unchecked_Access), MidletStrings_Package.getInstance.COMMAND_ACTION);
            if (item.all in GameConfigurationGauge_Package.GameConfigurationGauge'Class) then
                GameConfigurationUtil_Package.getInstance.change (This.gameOptionsForm, GameConfigurationGauge_Access (item));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, GameFeatureItemCommandListener_Access'(This'Unchecked_Access), MidletStrings_Package.getInstance.COMMAND_ACTION, e);
                end;
        end;
   end commandAction;

end org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package;


