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


   procedure Initialize (This : in out GameFeatureItemCommandListener'Class; gameOptionsForm : GameOptionsForm_Access) is
   begin
      Initialize_Fields (This);
        This.gameOptionsForm := gameOptionsForm;
   end Initialize;

   function Create (gameOptionsForm : GameOptionsForm_Access) return GameFeatureItemCommandListener_Access is
      This : constant GameFeatureItemCommandListener_Access := new GameFeatureItemCommandListener;
   begin
      Initialize (This.all, gameOptionsForm);
      return This;
   end Create;

   procedure commandAction (This : in out GameFeatureItemCommandListener; command : Command_Access; item : Item_Access) is
      itemLabel : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        begin
            itemLabel := item.getLabel;
            This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.ITEM_LABEL).append (itemLabel).toString, This'Unchecked_Access, MidletStrings_Package.getInstance.COMMAND_ACTION);
            if (item.all in GameConfigurationGauge_Package.GameConfigurationGauge'Class) then
                GameConfigurationUtil_Package.getInstance.change (This.gameOptionsForm, GameConfigurationGauge_Access (item));
            end if;
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, MidletStrings_Package.getInstance.COMMAND_ACTION, e);
        end;
   end commandAction;

end org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package;


