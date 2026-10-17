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


package body org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package is

   procedure Initialize_Fields (This : in out GameFeatureItemStateListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameFeatureItemStateListener'Class; gameOptionsForm : GameOptionsForm_Access) is
      gameFeatureFactory : GameFeatureFactory_Access;
   begin
      Initialize_Fields (This);
        This.gameOptionsForm := gameOptionsForm;
        gameFeatureFactory := GameFeatureFactory_Package.getInstance;
        GameFeatureItemStateListener_Package.add (gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR);
        GameFeatureItemStateListener_Package.add (gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR);
        GameFeatureItemStateListener_Package.add (gameFeatureFactory.DAMAGE_FLOATERS);
        GameFeatureItemStateListener_Package.add (gameFeatureFactory.DROPPED_ITEMS);
        GameFeatureItemStateListener_Package.add (gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR);
        GameFeatureItemStateListener_Package.add (gameFeatureFactory.HEALTH_BARS);
        GameFeatureItemStateListener_Package.add (gameFeatureFactory.SOUND);
        GameFeatureItemStateListener_Package.add (gameFeatureFactory.TICKABLE_LAYER_PROCESSOR);
   end Initialize;

   function Create (gameOptionsForm : GameOptionsForm_Access) return GameFeatureItemStateListener_Access is
      This : constant GameFeatureItemStateListener_Access := new GameFeatureItemStateListener;
   begin
      GameFeatureItemStateListener_Package.Initialize (This.all, gameOptionsForm);
      return This;
   end Create;

   procedure add (gameFeature : GameFeature_Access) is
   begin
        if not (GameFeatureItemStateListener_Package.toggleList.contains (gameFeature)) then
            GameFeatureItemStateListener_Package.toggleList.add (gameFeature);
        end if;
   end add;

   procedure itemStateChanged (This : in out GameFeatureItemStateListener; item : Item_Access) is
      itemLabel : Unbounded_String;
      gameFeatureUtil : GameFeatureUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            itemLabel := item.getLabel;
            This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.ITEM_LABEL).append (itemLabel).toString, This'Unchecked_Access, To_Unbounded_String ("itemStateChanged"));
            if (item.all in GameConfigurationGauge_Package.GameConfigurationGauge'Class) then
                GameConfigurationUtil_Package.getInstance.change (This.gameOptionsForm, GameConfigurationGauge_Access (item));
            elsif (item.all in ChoiceGroup_Package.ChoiceGroup'Class) then
                gameFeatureUtil := GameFeatureUtil_Package.getInstance;
                if gameFeatureUtil.isExclusive (itemLabel) then
                    gameFeatureUtil.updateExclusiveForChoiceGroup (ChoiceGroup_Access (item));
                else
                    gameFeatureUtil.updateMultiple (ChoiceGroup_Access (item));
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("itemStateChanged"), e);
                end;
        end;
   end itemStateChanged;

begin
   null;
   toggleList := BasicArrayListD_Package.Create;

end org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package;


