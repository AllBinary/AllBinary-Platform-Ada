-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.business.advertisement.GameAdStateBase_Package is

   procedure Initialize_Fields (This : in out GameAdStateBase'Class) is
   begin
      null;
      
      This.advertisementsP := Advertisements_Package.Create;
      This.okayToShowAdsP := False;
   end Initialize_Fields;


   procedure Initialize (This : in out GameAdStateBase'Class; adConfiguration_Param : access AdConfiguration'Class) is
      adConfiguration : AdConfiguration_Access := AdConfiguration_Access (adConfiguration_Param);
   begin
      Initialize_Fields (This);
        This.adConfigurationP := adConfiguration;
   end Initialize;

   function Create (adConfiguration_Param : access AdConfiguration'Class) return GameAdStateBase_Access is
      This : constant GameAdStateBase_Access := new GameAdStateBase;
   begin
      GameAdStateBase_Package.Initialize (This.all, adConfiguration_Param);
      return This;
   end Create;

   procedure initViewArray (This : in out GameAdStateBase; viewArray : Java_Object_Access_Array_Access) is
   begin
        null;
   end initViewArray;

   procedure onStart (This : in out GameAdStateBase; anyType_Param : access Java_Object'Class) is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        This.init;
   end onStart;

   procedure init (This : in out GameAdStateBase) is
   begin
        null;
   end init;

   function isShowingAtLocation (This : in out GameAdStateBase; location : Integer) return Boolean is
   begin
        return False;
   end isShowingAtLocation;

   function isShowingAt (This : in out GameAdStateBase) return Boolean is
   begin
        return False;
   end isShowingAt;

   procedure show (This : in out GameAdStateBase) is
   begin
        null;
   end show;

   procedure hide (This : in out GameAdStateBase) is
   begin
        null;
   end hide;

   procedure onEvent (This : in out GameAdStateBase; eventObject_Param : access AllBinaryEventObject'Class) is
      eventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, GameAdStateBase_Access'(This'Unchecked_Access));
   end onEvent;

   procedure processAdState (This : in out GameAdStateBase; gameState_Param : access GameState'Class; gameType_Param : access GameType'Class) is
      gameState : GameState_Access := GameState_Access (gameState_Param);
      gameType : GameType_Access := GameType_Access (gameType_Param);
   begin
        null;
   end processAdState;

   procedure processPageAdState (This : in out GameAdStateBase) is
   begin
        null;
   end processPageAdState;

   --  throws Exception
   procedure playingAdState (This : in out GameAdStateBase) is
   begin
        null;
   end playingAdState;

   --  throws Exception
   procedure playingAdStateWH (This : in out GameAdStateBase; width : Integer; height : Integer) is
   begin
        null;
   end playingAdStateWH;

   --  throws Exception
   procedure notPlayingAdState (This : in out GameAdStateBase) is
   begin
        null;
   end notPlayingAdState;

   procedure setGameIsReady (This : in out GameAdStateBase; gameIsReady : Boolean) is
   begin
        null;
   end setGameIsReady;

   function isGameIsReady (This : in out GameAdStateBase) return Boolean is
   begin
        return False;
   end isGameIsReady;

   function getAdvertisements (This : in out GameAdStateBase) return Advertisements_Access is
   begin
        return This.advertisementsP;
   end getAdvertisements;

   function getAdConfiguration (This : in out GameAdStateBase) return AdConfiguration_Access is
   begin
        return This.adConfigurationP;
   end getAdConfiguration;

   function isOkayToShowPageAd (This : in out GameAdStateBase) return Boolean is
   begin
        return False;
   end isOkayToShowPageAd;

   procedure setOkayToShowAds (This : in out GameAdStateBase; okayToShowAds : Boolean) is
   begin
        This.okayToShowAdsP := okayToShowAds;
   end setOkayToShowAds;

   function isOkayToShowAds (This : in out GameAdStateBase) return Boolean is
   begin
        return This.okayToShowAdsP;
   end isOkayToShowAds;

   function isEnabled (This : in out GameAdStateBase) return Boolean is
   begin
        return False;
   end isEnabled;

   procedure isShowingAtLocation (This : in out GameAdStateBase; location : Integer) is
      Java_Result : constant Boolean := GameAdStateBase'Class (This).isShowingAtLocation (location);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isShowingAtLocation;

end org.allbinary.business.advertisement.GameAdStateBase_Package;


