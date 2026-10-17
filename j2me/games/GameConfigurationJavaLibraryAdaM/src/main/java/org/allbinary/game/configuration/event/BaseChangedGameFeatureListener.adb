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


package body org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package is

   procedure Initialize_Fields (This : in out BaseChangedGameFeatureListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.gameFeatureUtil := GameFeatureUtil_Package.getInstance;
      This.list := BasicArrayListD_Package.Create;
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


   procedure onEvent (This : in out BaseChangedGameFeatureListener; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (CommonStrings_Package.getInstance.NOT_IMPLEMENTED, This'Unchecked_Access);
   end onEvent;

   procedure onGameFeatureChange (This : in out BaseChangedGameFeatureListener; gameFeatureEvent : GameFeatureEvent_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.gameFeatureUtil.GAME_FEATURE_CHANGED).append (gameFeatureEvent.getWhatChanged).toString, This'Unchecked_Access, This.gameFeatureUtil.ON_GAME_FEATURE_CHANGE);
        This.list.add (gameFeatureEvent.getGameOption);
        This.setChanged (True);
   end onGameFeatureChange;

   procedure add (This : in out BaseChangedGameFeatureListener; gameFeature : Feature_Access) is
   begin
        This.list.add (gameFeature);
   end add;

   procedure remove (This : in out BaseChangedGameFeatureListener; gameFeature : Feature_Access) is
   begin
        This.list.remove (gameFeature);
   end remove;

   procedure setChanged (This : in out BaseChangedGameFeatureListener; initialized : Boolean) is
   begin
        This.changed := initialized;
        if not (This.isChanged) then
            This.list.clear;
        end if;
   end setChanged;

   function isChangedFeature (This : in out BaseChangedGameFeatureListener; gameFeature : Feature_Access) return Boolean is
      isChanged : Boolean;
      stringBuffer : StringMaker_Access;
   begin
        isChanged := This.list.contains (gameFeature);
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("GameFeature: "));
        stringBuffer.append (StringUtil_Package.getInstance.toString (gameFeature));
        stringBuffer.append (To_Unbounded_String (" isFeature: "));
        stringBuffer.appendboolean (Features_Package.getInstance.isFeature (gameFeature));
        stringBuffer.append (To_Unbounded_String (" isChanged: "));
        stringBuffer.appendboolean (isChanged);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("isChanged"));
        return isChanged;
   end isChangedFeature;

   function isChanged (This : in out BaseChangedGameFeatureListener) return Boolean is
   begin
        return This.changed;
   end isChanged;

   procedure isChangedFeature (This : in out BaseChangedGameFeatureListener; gameFeature : Feature_Access) is
      Java_Result : constant Boolean := BaseChangedGameFeatureListener'Class (This).isChangedFeature (gameFeature);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isChangedFeature;

end org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package;


