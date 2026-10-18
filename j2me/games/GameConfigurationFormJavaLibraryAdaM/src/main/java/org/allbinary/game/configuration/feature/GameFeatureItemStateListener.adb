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


with javax.microedition.lcdui.ChoiceGroup_Package; use javax.microedition.lcdui.ChoiceGroup_Package;
with org.allbinary.game.configuration.GameConfigurationGauge_Package; use org.allbinary.game.configuration.GameConfigurationGauge_Package;
with org.allbinary.game.configuration.GameConfigurationUtil_Package; use org.allbinary.game.configuration.GameConfigurationUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.game.configuration.feature.GameFeatureUtil_Package; use org.allbinary.game.configuration.feature.GameFeatureUtil_Package;

package body org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package is

   package ChoiceGroup_Package renames Standard.javax.microedition.lcdui.ChoiceGroup_Package;
   package GameConfigurationGauge_Package renames Standard.org.allbinary.game.configuration.GameConfigurationGauge_Package;
   package GameConfigurationUtil_Package renames Standard.org.allbinary.game.configuration.GameConfigurationUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out GameFeatureItemStateListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameFeatureItemStateListener'Class; gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class) is
      gameOptionsForm : constant GameOptionsForm_Access := GameOptionsForm_Access (gameOptionsForm_Param);
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

   function Create (gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class) return GameFeatureItemStateListener_Access is
      This : constant GameFeatureItemStateListener_Access := new GameFeatureItemStateListener;
   begin
      GameFeatureItemStateListener_Package.Initialize (This.all, gameOptionsForm_Param);
      return This;
   end Create;

   procedure add (gameFeature_Param : access GameFeature_Package.GameFeature'Class) is
      gameFeature : constant GameFeature_Access := GameFeature_Access (gameFeature_Param);
   begin
        if not (GameFeatureItemStateListener_Package.toggleList.contains (Java_Object_Access (gameFeature))) then
            GameFeatureItemStateListener_Package.toggleList.add (Java_Object_Access (gameFeature));
        end if;
   end add;

   procedure itemStateChanged (This : in out GameFeatureItemStateListener; item_Param : access Item_Package.Item'Class) is
      item : constant Item_Access := Item_Access (item_Param);
      itemLabel : Unbounded_String;
      gameFeatureUtil : GameFeatureUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            itemLabel := item.getLabel;
            This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.ITEM_LABEL).append (itemLabel).toString, GameFeatureItemStateListener_Access'(This'Unchecked_Access), To_Unbounded_String ("itemStateChanged"));
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
            This.logUtil.put (commonStrings.EXCEPTION_Id, GameFeatureItemStateListener_Access'(This'Unchecked_Access), To_Unbounded_String ("itemStateChanged"), e);
                end;
        end;
   end itemStateChanged;

begin
   null;
   toggleList := BasicArrayList_Access (BasicArrayListD_Package.Create);

end org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package;


