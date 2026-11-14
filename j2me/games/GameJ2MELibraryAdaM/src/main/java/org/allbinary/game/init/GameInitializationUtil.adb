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


with org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package; use org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
with org.allbinary.game.configuration.event.GameInitializedEvent_Package; use org.allbinary.game.configuration.event.GameInitializedEvent_Package;
with org.allbinary.game.configuration.event.GameInitializedEvent_Package_References;
with org.allbinary.game.configuration.event.GameInitializedEventHandler_Package; use org.allbinary.game.configuration.event.GameInitializedEventHandler_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.game.init.GameInitializationInterface_Package; use org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package; use org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with org.allbinary.util.EnumerationUtil_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.event.GameFeatureEvent_Package;
with org.allbinary.game.configuration.feature.GameFeatureUtil_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with javax.microedition.media.Player_Package;
with javax.microedition.media.PlayerListener_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.media.audio.Sound_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.TouchJ2ME_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.init.GameInitializationUtil_Package is

   package ChangedGameFeatureListener_Package renames Standard.org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
   package GameInitializedEventHandler_Package renames Standard.org.allbinary.game.configuration.event.GameInitializedEventHandler_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   subtype GameInitializedEvent_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access;
   function "=" (Left, Right : GameInitializedEvent_Access) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype GameInitializedEvent_Access_Array is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array;
   function "=" (Left, Right : GameInitializedEvent_Access_Array) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype GameInitializedEvent_Access_Array_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access;
   function "=" (Left, Right : GameInitializedEvent_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype GameInitializedEvent_Access_Array_Access_Array is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameInitializedEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype GameInitializedEvent_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInitializedEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   function "=" (Left, Right : MyCanvas_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access_Array is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access_Array) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access_Array_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access_Array_Access) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access_Array_Access_Array is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   procedure Initialize_Fields (This : in out GameInitializationUtil'Class) is
   begin
      null;
      This.EVENT := GameInitializedEvent_Package.Create (GameInitializationUtil_Access'(This'Unchecked_Access));
   end Initialize_Fields;

   procedure Initialize (This : in out GameInitializationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameInitializationUtil_Access is
      This : constant GameInitializationUtil_Access := new GameInitializationUtil;
   begin
      GameInitializationUtil_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure initDemo (This : in out GameInitializationUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; canvas_Param : access MyCanvas_Package.MyCanvas'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      canvas : constant MyCanvas_Access := MyCanvas_Access (canvas_Param);
      gameInitializationInterfaceFactoryInterface : constant BasicBuildGameInitializerFactory_Access := BasicBuildGameInitializerFactory_Access (gameInitializationInterfaceFactoryInterface_Param);
      mainFeatureFactory : MainFeatureFactory_Access;
      gameInitializationInterface : GameInitializationInterface_Access;
      features : Features_Access;
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        mainFeatureFactory := MainFeatureFactory_Package.getInstance;
        if ChangedGameFeatureListener_Package.getInstance.isChangedFeature (mainFeatureFactory.STATIC) then
            gameInitializationInterface := GameInitializationInterface_Access (gameInitializationInterfaceFactoryInterface.getInstance);
            features := Features_Package.getInstance;
            if features.isFeature (mainFeatureFactory.LOAD_ALL) then
                GameInitializationUtil'Class (This).initGame (abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface);
            elsif features.isFeature (mainFeatureFactory.LOAD_ONDEMAND) then
                resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
                gameInitializationInterface.init (abeClientInformation, canvas.getCustomCommandListener, resourceLoadingLevelFactory.LOAD_EARLY.getLevel);
                This.EVENT.setResourceLoadingLevel (resourceLoadingLevelFactory.LOAD_EARLY);
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Loading Feature Available")));
            end if;
            GameInitializedEventHandler_Package.getInstance.fireEvent (This.EVENT);
        end if;
   end initDemo;

   --  throws Exception
   procedure initGame (This : in out GameInitializationUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; canvas_Param : access MyCanvas_Package.MyCanvas'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      canvas : constant MyCanvas_Access := MyCanvas_Access (canvas_Param);
      gameInitializationInterfaceFactoryInterface : constant BasicBuildGameInitializerFactory_Access := BasicBuildGameInitializerFactory_Access (gameInitializationInterfaceFactoryInterface_Param);
      gameInitializationInterface : GameInitializationInterface_Access;
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        if ChangedGameFeatureListener_Package.getInstance.isChangedFeature (MainFeatureFactory_Package.getInstance.STATIC) then
            gameInitializationInterface := GameInitializationInterface_Access (gameInitializationInterfaceFactoryInterface.getInstance);
            resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
            gameInitializationInterface.init (abeClientInformation, canvas.getCustomCommandListener, resourceLoadingLevelFactory.LOAD_ALL.getLevel);
            This.EVENT.setResourceLoadingLevel (resourceLoadingLevelFactory.LOAD_ALL);
            GameInitializedEventHandler_Package.getInstance.fireEvent (This.EVENT);
            ChangedGameFeatureListener_Package.getInstance.remove (MainFeatureFactory_Package.getInstance.STATIC);
        end if;
   end initGame;

   function getInstance return GameInitializationUtil_Access is
   begin
        return GameInitializationUtil_Package.instance;
   end getInstance;

begin
   null;
   instance := GameInitializationUtil_Package.Create;

end org.allbinary.game.init.GameInitializationUtil_Package;


