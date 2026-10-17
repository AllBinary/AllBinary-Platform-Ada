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


package body org.allbinary.business.advertisement.AdConfiguration_Package is

   procedure Initialize_Fields (This : in out AdConfiguration'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdConfiguration'Class; advertIdArray : Java_Object_Access_Array_Access) is
   begin
      Initialize_Fields (This);
        This.INNERACTIVE := Unbounded_String (advertIdArray (0));
        This.ADMOB := Unbounded_String (advertIdArray (1));
        This.LEADBOLT := Unbounded_String (advertIdArray (2));
   end Initialize;

   function Create (advertIdArray : Java_Object_Access_Array_Access) return AdConfiguration_Access is
      This : constant AdConfiguration_Access := new AdConfiguration;
   begin
      AdConfiguration_Package.Initialize (This.all, advertIdArray);
      return This;
   end Create;

   function getValidAdSpots (This : in out AdConfiguration) return Direction_Access_Array_Access is
   begin
        return new Direction_Access_Array'(0 .. (0) - 1 => null);
   end getValidAdSpots;

   procedure process (This : in out AdConfiguration; gameState_Param : access GameState_Package.GameState'Class) is
      gameState : constant GameState_Access := GameState_Access (gameState_Param);
   begin
        null;
   end process;

   procedure processDemo (This : in out AdConfiguration; state : Integer) is
   begin
        null;
   end processDemo;

   procedure setShowAds (This : in out AdConfiguration) is
   begin
        null;
   end setShowAds;

   procedure setToggleAds (This : in out AdConfiguration; showAds : Boolean) is
   begin
        null;
   end setToggleAds;

   function isShowAds (This : in out AdConfiguration) return Boolean is
   begin
        return True;
   end isShowAds;

end org.allbinary.business.advertisement.AdConfiguration_Package;


