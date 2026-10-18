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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out BaseChangedGameFeatureListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.gameFeatureUtil := GameFeatureUtil_Package.getInstance;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.changed := True;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseChangedGameFeatureListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseChangedGameFeatureListener_Access is
      This : constant BaseChangedGameFeatureListener_Access := new BaseChangedGameFeatureListener;
   begin
      BaseChangedGameFeatureListener_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onEvent (This : in out BaseChangedGameFeatureListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (CommonStrings_Package.getInstance.NOT_IMPLEMENTED, BaseChangedGameFeatureListener_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onGameFeatureChange (This : in out BaseChangedGameFeatureListener; gameFeatureEvent_Param : access GameFeatureEvent_Package.GameFeatureEvent'Class) is
      gameFeatureEvent : constant GameFeatureEvent_Access := GameFeatureEvent_Access (gameFeatureEvent_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.gameFeatureUtil.GAME_FEATURE_CHANGED).append (gameFeatureEvent.getWhatChanged).toString, BaseChangedGameFeatureListener_Access'(This'Unchecked_Access), This.gameFeatureUtil.ON_GAME_FEATURE_CHANGE);
        This.list.add (gameFeatureEvent.getGameOption);
        BaseChangedGameFeatureListener'Class (This).setChanged (True);
   end onGameFeatureChange;

   procedure add (This : in out BaseChangedGameFeatureListener; gameFeature_Param : access Feature_Package.Feature'Class) is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
   begin
        This.list.add (Java_Object_Access (gameFeature));
   end add;

   procedure remove (This : in out BaseChangedGameFeatureListener; gameFeature_Param : access Feature_Package.Feature'Class) is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
   begin
        This.list.remove (Java_Object_Access (gameFeature));
   end remove;

   procedure setChanged (This : in out BaseChangedGameFeatureListener; initialized : Boolean) is
   begin
        This.changed := initialized;
        if not (BaseChangedGameFeatureListener'Class (This).isChanged) then
            This.list.clear;
        end if;
   end setChanged;

   function isChangedFeature (This : in out BaseChangedGameFeatureListener; gameFeature_Param : access Feature_Package.Feature'Class) return Boolean is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
      isChanged : Boolean;
      stringBuffer : StringMaker_Access;
   begin
        isChanged := This.list.contains (Java_Object_Access (gameFeature));
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("GameFeature: "));
        stringBuffer.append (StringUtil_Package.getInstance.toString (gameFeature));
        stringBuffer.append (To_Unbounded_String (" isFeature: "));
        stringBuffer.appendboolean (Features_Package.getInstance.isFeature (gameFeature));
        stringBuffer.append (To_Unbounded_String (" isChanged: "));
        stringBuffer.appendboolean (isChanged);
        This.logUtil.putF (stringBuffer.toString, BaseChangedGameFeatureListener_Access'(This'Unchecked_Access), To_Unbounded_String ("isChanged"));
        return isChanged;
   end isChangedFeature;

   function isChanged (This : in out BaseChangedGameFeatureListener) return Boolean is
   begin
        return This.changed;
   end isChanged;

   procedure isChangedFeature (This : in out BaseChangedGameFeatureListener; gameFeature_Param : access Feature_Package.Feature'Class) is
      Java_Result : constant Boolean := BaseChangedGameFeatureListener'Class (This).isChangedFeature (gameFeature_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isChangedFeature;

end org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package;


