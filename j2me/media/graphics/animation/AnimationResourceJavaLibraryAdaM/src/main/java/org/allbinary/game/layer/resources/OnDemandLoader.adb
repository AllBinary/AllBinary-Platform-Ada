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


with org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package; use org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package;
with org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package_References;
with org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package; use org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package;
with org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package_References;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package; use org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package;
with org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References;
with org.allbinary.game.layer.resources.OnDemandResources_Package; use org.allbinary.game.layer.resources.OnDemandResources_Package;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
with org.allbinary.util.BasicArrayList_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.image.ImageCacheBase_Package;
with org.allbinary.image.ImageFactory_Package;
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
with org.allbinary.game.layer.resources.OnDemandResources_Package;
with org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.game.resource.RectangleResourceFactoryInterface_Package;
with org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.game.layer.resources.OnDemandResources_Package_References;

package body org.allbinary.game.layer.resources.OnDemandLoader_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   function "=" (Left, Right : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access) return Boolean renames org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array;
   function "=" (Left, Right : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array) return Boolean renames org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access is org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package_References.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access;
   function "=" (Left, Right : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access) return Boolean renames org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package_References."=";
   subtype GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array is org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package_References.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array;
   function "=" (Left, Right : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array) return Boolean renames org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package_References."=";
   subtype GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access is org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package_References.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package_References."=";
   subtype GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access_Array is org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package_References.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package_References."=";
   subtype GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package_References.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package_References."=";
   subtype LayerPlacementInterfaceBasicArrayListFactoryInterface_Access is org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package_References.LayerPlacementInterfaceBasicArrayListFactoryInterface_Access;
   function "=" (Left, Right : LayerPlacementInterfaceBasicArrayListFactoryInterface_Access) return Boolean renames org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package_References."=";
   subtype LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array is org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package_References.LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array;
   function "=" (Left, Right : LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package_References."=";
   subtype LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array_Access is org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package_References.LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package_References."=";
   subtype LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package_References.LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package_References."=";
   subtype LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package_References.LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package_References."=";
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   function "=" (Left, Right : ImageCache_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype OnDemandResourcesFactory_Access is org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References.OnDemandResourcesFactory_Access;
   function "=" (Left, Right : OnDemandResourcesFactory_Access) return Boolean renames org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References."=";
   subtype OnDemandResourcesFactory_Access_Array is org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References.OnDemandResourcesFactory_Access_Array;
   function "=" (Left, Right : OnDemandResourcesFactory_Access_Array) return Boolean renames org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References."=";
   subtype OnDemandResourcesFactory_Access_Array_Access is org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References.OnDemandResourcesFactory_Access_Array_Access;
   function "=" (Left, Right : OnDemandResourcesFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References."=";
   subtype OnDemandResourcesFactory_Access_Array_Access_Array is org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References.OnDemandResourcesFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OnDemandResourcesFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References."=";
   subtype OnDemandResourcesFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References.OnDemandResourcesFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OnDemandResourcesFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References."=";
   procedure Initialize_Fields (This : in out OnDemandLoader'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out OnDemandLoader'Class; onDemandResourcesFactory_Param : access OnDemandResourcesFactory_Package.OnDemandResourcesFactory'Class; gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Param : access GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory'Class; resourceAnimationInterfaceFactoryInterfaceFactory_Param : access BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class) is
      onDemandResourcesFactory : constant OnDemandResourcesFactory_Access := OnDemandResourcesFactory_Access (onDemandResourcesFactory_Param);
      gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory : constant GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access := GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access (gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Param);
      resourceAnimationInterfaceFactoryInterfaceFactory : constant BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access := BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access (resourceAnimationInterfaceFactoryInterfaceFactory_Param);
   begin
      Initialize_Fields (This);
        This.onDemandResourcesFactory := onDemandResourcesFactory;
        This.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory := gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
        This.resourceAnimationInterfaceFactoryInterfaceFactory := resourceAnimationInterfaceFactoryInterfaceFactory;
   end Initialize;

   function Create (onDemandResourcesFactory_Param : access OnDemandResourcesFactory_Package.OnDemandResourcesFactory'Class; gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Param : access GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory'Class; resourceAnimationInterfaceFactoryInterfaceFactory_Param : access BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class) return OnDemandLoader_Access is
      This : constant OnDemandLoader_Access := new OnDemandLoader;
   begin
      OnDemandLoader_Package.Initialize (This.all, onDemandResourcesFactory_Param, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Param, resourceAnimationInterfaceFactoryInterfaceFactory_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out OnDemandLoader; imageCache_Param : access ImageCache_Package.ImageCache'Class; level : Integer; loadingString : Unbounded_String) is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
      layerPlacementInterfaceBasicArrayListFactoryInterface : LayerPlacementInterfaceBasicArrayListFactoryInterface_Access;
   begin
        resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
        if Features_Package.getInstance.isFeature (MainFeatureFactory_Package.getInstance.LOAD_ALL) then
            if This.resourceAnimationInterfaceFactoryInterfaceFactory.isInitialized then
                return;
            end if;
            OnDemandLoader'Class (This).initAll (imageCache, loadingString);
        elsif (level) /= (resourceLoadingLevelFactory.LOAD_ALL.getLevel) then
            layerPlacementInterfaceBasicArrayListFactoryInterface := LayerPlacementInterfaceBasicArrayListFactoryInterface_Access (This.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance (level));
            OnDemandLoader'Class (This).initLevel (layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString);
        end if;
   end init;

   --  throws Exception
   procedure initAll (This : in out OnDemandLoader; imageCache_Param : access ImageCache_Package.ImageCache'Class; loadingString : Unbounded_String) is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      index : Integer;
      portion : Integer;
      onDemandResources : OnDemandResources_Access;
      onDemandIndex : Integer;
   begin
        index := 0;
        portion := 120;
        onDemandResources := null;
        onDemandIndex := This.onDemandResourcesFactory.size;
        while (Java_Pre_Decrement (onDemandIndex)) >= (0) loop
            onDemandResources := This.onDemandResourcesFactory.remove (onDemandIndex);
            if (not org.allbinary.game.layer.resources.OnDemandResources_Package_References."=" (onDemandResources, OnDemandResources_Package.NULL_ON_DEMAND_RESOURCES)) then
                index := onDemandResources.initAt (imageCache, This.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            end if;
        end loop;
   end initAll;

   --  throws Exception
   procedure initLevel (This : in out OnDemandLoader; layerPlacementInterfaceBasicArrayListFactoryInterface_Param : access LayerPlacementInterfaceBasicArrayListFactoryInterface_Package.LayerPlacementInterfaceBasicArrayListFactoryInterface'Class; imageCache_Param : access ImageCache_Package.ImageCache'Class; level : Integer; loadingString : Unbounded_String) is
      layerPlacementInterfaceBasicArrayListFactoryInterface : constant LayerPlacementInterfaceBasicArrayListFactoryInterface_Access := LayerPlacementInterfaceBasicArrayListFactoryInterface_Access (layerPlacementInterfaceBasicArrayListFactoryInterface_Param);
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      commonStrings : CommonStrings_Access;
      portion : Integer;
      index : Integer;
      onDemandArray : Integer_Array_Access;
      onDemandResources : OnDemandResources_Access;
      onDemandIndex : Integer;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        portion := 120;
        index := 0;
        onDemandArray := layerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources;
        PreLogUtil_Package.put (StringMaker_Package.Create.append (commonStrings.START).appendint (onDemandArray'Length).toString, OnDemandLoader_Access'(This'Unchecked_Access), To_Unbounded_String ("initLevel"));
        onDemandResources := null;
        onDemandIndex := onDemandArray'Length;
        while (Java_Pre_Decrement (onDemandIndex)) >= (0) loop
            onDemandResources := This.onDemandResourcesFactory.remove (onDemandArray (onDemandIndex));
            if (not org.allbinary.game.layer.resources.OnDemandResources_Package_References."=" (onDemandResources, OnDemandResources_Package.NULL_ON_DEMAND_RESOURCES)) then
                index := onDemandResources.initAt (imageCache, This.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            end if;
        end loop;
   end initLevel;

end org.allbinary.game.layer.resources.OnDemandLoader_Package;


