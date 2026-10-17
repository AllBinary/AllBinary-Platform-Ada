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


   procedure Initialize (This : in out GameAdStateBase'Class; adConfiguration : AdConfiguration_Access) is
   begin
      Initialize_Fields (This);
        This.adConfigurationP := adConfiguration;
   end Initialize;

   function Create (adConfiguration : AdConfiguration_Access) return GameAdStateBase_Access is
      This : constant GameAdStateBase_Access := new GameAdStateBase;
   begin
      Initialize (This.all, adConfiguration);
      return This;
   end Create;

   procedure initViewArray (This : in out GameAdStateBase; viewArray : Java_Object_Access_Array_Access) is
   begin
        null;
   end initViewArray;

   procedure onStart (This : in out GameAdStateBase; anyType : Java_Object_Access) is
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

   procedure onEvent (This : in out GameAdStateBase; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure processAdState (This : in out GameAdStateBase; gameState : GameState_Access; gameType : GameType_Access) is
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

   procedure isShowingAt (This : in out GameAdStateBase) is
      Java_Result : constant Boolean := GameAdStateBase'Class (This).isShowingAt;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isShowingAt;

   procedure isGameIsReady (This : in out GameAdStateBase) is
      Java_Result : constant Boolean := GameAdStateBase'Class (This).isGameIsReady;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isGameIsReady;

   procedure getAdvertisements (This : in out GameAdStateBase) is
      Java_Result : constant Advertisements_Access := GameAdStateBase'Class (This).getAdvertisements;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAdvertisements;

   procedure getAdConfiguration (This : in out GameAdStateBase) is
      Java_Result : constant AdConfiguration_Access := GameAdStateBase'Class (This).getAdConfiguration;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAdConfiguration;

   procedure isOkayToShowPageAd (This : in out GameAdStateBase) is
      Java_Result : constant Boolean := GameAdStateBase'Class (This).isOkayToShowPageAd;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isOkayToShowPageAd;

   procedure isOkayToShowAds (This : in out GameAdStateBase) is
      Java_Result : constant Boolean := GameAdStateBase'Class (This).isOkayToShowAds;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isOkayToShowAds;

   procedure isEnabled (This : in out GameAdStateBase) is
      Java_Result : constant Boolean := GameAdStateBase'Class (This).isEnabled;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEnabled;

end org.allbinary.business.advertisement.GameAdStateBase_Package;


