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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package body org.allbinary.game.layer.special.SpecialGameInput_Package is

   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   function "=" (Left, Right : GameKeyEvent_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   procedure Initialize_Fields (This : in out SpecialGameInput'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SpecialGameInput'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SpecialGameInput_Access is
      This : constant SpecialGameInput_Access := new SpecialGameInput;
   begin
      SpecialGameInput_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure up (This : in out SpecialGameInput) is
   begin
        null;
   end up;

   --  throws Exception
   procedure down (This : in out SpecialGameInput) is
   begin
        null;
   end down;

   --  throws Exception
   procedure right (This : in out SpecialGameInput) is
   begin
        null;
   end right;

   --  throws Exception
   procedure left (This : in out SpecialGameInput) is
   begin
        null;
   end left;

   --  throws Exception
   procedure strafeLeft (This : in out SpecialGameInput) is
   begin
        null;
   end strafeLeft;

   --  throws Exception
   procedure strafeRight (This : in out SpecialGameInput) is
   begin
        null;
   end strafeRight;

   --  throws Exception
   procedure fire (This : in out SpecialGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end fire;

   --  throws Exception
   procedure special1 (This : in out SpecialGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special1;

   --  throws Exception
   procedure special2 (This : in out SpecialGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special2;

   --  throws Exception
   procedure special3 (This : in out SpecialGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special3;

   --  throws Exception
   procedure special4 (This : in out SpecialGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special4;

   --  throws Exception
   procedure special5 (This : in out SpecialGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special5;

   procedure paint (This : in out SpecialGameInput; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

   procedure paintThreed (This : in out SpecialGameInput; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

end org.allbinary.game.layer.special.SpecialGameInput_Package;


