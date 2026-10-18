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


with org.allbinary.game.configuration.event.GameFeatureEvent_Package; use org.allbinary.game.configuration.event.GameFeatureEvent_Package;
with org.allbinary.game.configuration.event.GameFeatureEventHandler_Package; use org.allbinary.game.configuration.event.GameFeatureEventHandler_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystemFactory_Package; use org.allbinary.logic.system.os.OperatingSystemFactory_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.configuration.feature.SensorFeatureFactory_Package; use org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package; use org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;

package body org.allbinary.game.configuration.feature.Features_Package is

   package GameFeatureEvent_Package renames Standard.org.allbinary.game.configuration.event.GameFeatureEvent_Package;
   package GameFeatureEventHandler_Package renames Standard.org.allbinary.game.configuration.event.GameFeatureEventHandler_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package OperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.OperatingSystemFactory_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out Features'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
   end Initialize_Fields;


   function getInstance return Features_Access is
   begin
        if (Features_Package.SINGLETON) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            Features_Package.SINGLETON := Features_Package.Create;
        end if;
        return Features_Access (Features_Package.SINGLETON);
   end getInstance;

   procedure Initialize (This : in out Features'Class) is
   begin
      Initialize_Fields (This);
        This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        This.defaultList := BasicArrayList_Access (BasicArrayListD_Package.Create);
        Features'Class (This).init;
   end Initialize;

   function Create return Features_Access is
      This : constant Features_Access := new Features;
   begin
      Features_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure addDefault (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class) is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
   begin
        Features'Class (This).add (gameFeature);
        if not (This.defaultList.contains (Java_Object_Access (gameFeature))) then
            This.defaultList.add (Java_Object_Access (gameFeature));
        end if;
   end addDefault;

   --  throws Exception
   procedure add (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class) is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
   begin
        if not (This.list.contains (Java_Object_Access (gameFeature))) then
            This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (gameFeature.toString).toString, Features_Access'(This'Unchecked_Access), This.commonStrings.ADD);
            This.list.add (Java_Object_Access (gameFeature));
            GameFeatureEventHandler_Package.getInstance.fireEvent (GameFeatureEvent_Package.Create (gameFeature, gameFeature.toString));
        end if;
   end add;

   --  throws Exception
   procedure removeDefault (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class) is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (gameFeature.toString).toString, Features_Access'(This'Unchecked_Access), To_Unbounded_String ("removeDefault"));
        Features'Class (This).remove (gameFeature);
        This.defaultList.remove (Java_Object_Access (gameFeature));
   end removeDefault;

   --  throws Exception
   procedure remove (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class) is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
   begin
        if This.list.contains (Java_Object_Access (gameFeature)) then
            This.logUtil.putF (This.commonStrings.START, Features_Access'(This'Unchecked_Access), This.commonStrings.REMOVE);
            This.list.remove (Java_Object_Access (gameFeature));
            GameFeatureEventHandler_Package.getInstance.fireEvent (GameFeatureEvent_Package.Create (gameFeature, gameFeature.toString));
        end if;
   end remove;

   procedure init (This : in out Features) is
      gameFeatureFactory : GameFeatureFactory_Access;
      inputFeatureFactory : InputFeatureFactory_Access;
      sensorFeatureFactory : SensorFeatureFactory_Access;
      touchFeatureFactory : TouchFeatureFactory_Access;
      operatingSystemInterface : GenericOperatingSystem_Access;
   begin
        begin
            gameFeatureFactory := GameFeatureFactory_Package.getInstance;
            inputFeatureFactory := InputFeatureFactory_Package.getInstance;
            sensorFeatureFactory := SensorFeatureFactory_Package.getInstance;
            touchFeatureFactory := TouchFeatureFactory_Package.getInstance;
            Features'Class (This).addDefault (gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR);
            Features'Class (This).addDefault (gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR);
            Features'Class (This).addDefault (gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR);
            Features'Class (This).addDefault (gameFeatureFactory.TICKABLE_LAYER_PROCESSOR);
            Features'Class (This).addDefault (inputFeatureFactory.MULTI_KEY_PRESS);
            Features'Class (This).addDefault (inputFeatureFactory.REMOVE_DUPLICATE_KEY_PRESSES);
            Features'Class (This).addDefault (gameFeatureFactory.SCREEN_SHAKE);
            Features'Class (This).addDefault (gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION);
            operatingSystemInterface := OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
            if operatingSystemInterface.isOverScan then
                Features'Class (This).addDefault (sensorFeatureFactory.NO_ORIENTATION);
                Features'Class (This).addDefault (touchFeatureFactory.HIDE_SCREEN_BUTTONS);
            else
                Features'Class (This).addDefault (sensorFeatureFactory.ORIENTATION_SENSORS);
                Features'Class (This).addDefault (touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS);
            end if;
            Features'Class (This).addDefault (touchFeatureFactory.TOUCH_ENABLED);
            Features'Class (This).addDefault (MainFeatureFactory_Package.getInstance.FULL_SCREEN);
            Features'Class (This).addDefault (MainFeatureFactory_Package.getInstance.LOAD_ONDEMAND);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, Features_Access'(This'Unchecked_Access), This.commonStrings.INIT, e);
                end;
        end;
   end init;

   function isDefault (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class) return Boolean is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
   begin
        return This.defaultList.contains (Java_Object_Access (gameFeature));
   end isDefault;

   function isFeature (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class) return Boolean is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
   begin
        return This.list.contains (Java_Object_Access (gameFeature));
   end isFeature;

   --  throws Exception
   procedure toggle (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class) is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
   begin
        if Features'Class (This).isFeature (gameFeature) then
            Features'Class (This).remove (gameFeature);
        else
            Features'Class (This).add (gameFeature);
        end if;
   end toggle;

   procedure isDefault (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class) is
      Java_Result : constant Boolean := Features'Class (This).isDefault (gameFeature_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDefault;

   procedure isFeature (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class) is
      Java_Result : constant Boolean := Features'Class (This).isFeature (gameFeature_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isFeature;

begin
   null;
   SINGLETON := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.configuration.feature.Features_Package;


