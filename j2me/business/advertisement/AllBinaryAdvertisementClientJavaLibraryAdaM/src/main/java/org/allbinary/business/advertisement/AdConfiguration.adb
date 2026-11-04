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


with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
with org.allbinary.game.state.GameState_Package; use org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameState_Package_References;

package body org.allbinary.business.advertisement.AdConfiguration_Package is

   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   function "=" (Left, Right : Direction_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   function "=" (Left, Right : Direction_Access_Array) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   function "=" (Left, Right : Direction_Access_Array_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   function "=" (Left, Right : Direction_Access_Array_Access_Array) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Direction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype GameState_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access;
   function "=" (Left, Right : GameState_Access) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array;
   function "=" (Left, Right : GameState_Access_Array) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access;
   function "=" (Left, Right : GameState_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array;
   function "=" (Left, Right : GameState_Access_Array_Access_Array) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameState_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   procedure Initialize_Fields (This : in out AdConfiguration'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdConfiguration'Class; advertIdArray : Java_Object_Access_Array_Access) is
   begin
      Initialize_Fields (This);
        This.INNERACTIVE := Java_Unbox (advertIdArray (0));
        This.ADMOB := Java_Unbox (advertIdArray (1));
        This.LEADBOLT := Java_Unbox (advertIdArray (2));
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


