-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.input.form.TechRTSFormInput_Package is

   procedure Initialize_Fields (This : in out TechRTSFormInput'Class) is
   begin
      null;
      This.EVENT := AllBinaryEventObject_Package.Create (TechRTSFormInput_Access'(This'Unchecked_Access));
      
   end Initialize_Fields;


   procedure Initialize (This : in out TechRTSFormInput'Class; groupInterface : Group_Access_Array_Access) is
      basicColorFactory : BasicColorFactory_Access;
   begin
        RTSFormInput_Package.Initialize (This, groupInterface);
        Initialize_Fields (This);
        basicColorFactory := BasicColorFactory_Package.getInstance;
        This.noMoneyGameNotificationEvent := GameNotificationEvent_Package.Create (TechRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.NO_MONEY, SmallIntegerSingletonFactory_Package.getInstance.getAt (2), basicColorFactory.WHITE, BooleanFactory_Package.getInstance.FALSE);
   end Initialize;

   function Create (groupInterface : Group_Access_Array_Access) return TechRTSFormInput_Access is
      This : constant TechRTSFormInput_Access := new TechRTSFormInput;
   begin
      TechRTSFormInput_Package.Initialize (This.all, groupInterface);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out TechRTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        RTSFormInput (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (allBinaryGameLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.noMoneyGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
   end setAllBinaryGameLayerManager;

   --  throws Exception
   procedure processGameSpecific (This : in out TechRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; itemIndex : Integer) is
      associatedRtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
      commonStrings : CommonStrings_Access;
      stringMaker : StringMaker_Access;
      technologyRTSInterfaceImageItem : TechnologyRTSInterfaceImageItem_Access;
      rtsInterface : RTSInterface_Access;
      cost : Integer;
      capital : Capital_Access;
   begin
        RTSFormInput (This).process (layerManager);
        commonStrings := CommonStrings_Package.getInstance;
        stringMaker := StringMaker_Package.Create;
        technologyRTSInterfaceImageItem := TechnologyRTSInterfaceImageItem_Access (item);
        rtsInterface := technologyRTSInterfaceImageItem.getRtsInterface;
        This.logUtil.putF (stringMaker.append (To_Unbounded_String ("isUpgradeable: ")).appendboolean (rtsInterface.isUpgradeable).toString, TechRTSFormInput_Access'(This'Unchecked_Access), commonStrings.PROCESS);
        if rtsInterface.isUpgradeable then
            cost := rtsInterface.getUpgradeCost;
            capital := rtsPlayerLayerInterface.getCapital;
            stringMaker.delete (0, stringMaker.length);
            This.logUtil.putF (stringMaker.appendint (cost).append (To_Unbounded_String ("<=")).appendint (Integer (capital.getTotalMoney)).toString, TechRTSFormInput_Access'(This'Unchecked_Access), commonStrings.PROCESS);
            if (cost) <= (capital.getTotalMoney) then
                rtsPlayerLayerInterface.add (BuildingSound_Package.getInstance);
                capital.removeMoney (cost);
                rtsInterface.upgrade;
                technologyRTSInterfaceImageItem.update;
                TechEventHandler_Package.getInstance.fireEvent (This.EVENT);
            else
                rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
                if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                    GameNotificationEventHandler_Package.getInstance.fireEvent (This.noMoneyGameNotificationEvent);
                end if;
            end if;
        end if;
   end processGameSpecific;

end org.allbinary.game.input.form.TechRTSFormInput_Package;


