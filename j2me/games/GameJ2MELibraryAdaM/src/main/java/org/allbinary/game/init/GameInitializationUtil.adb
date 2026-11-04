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
with org.allbinary.game.configuration.event.GameInitializedEventHandler_Package; use org.allbinary.game.configuration.event.GameInitializedEventHandler_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package; use org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package; use org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;

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
        return GameInitializationUtil_Access (GameInitializationUtil_Package.instance);
   end getInstance;

begin
   null;
   instance := GameInitializationUtil_Package.Create;

end org.allbinary.game.init.GameInitializationUtil_Package;


