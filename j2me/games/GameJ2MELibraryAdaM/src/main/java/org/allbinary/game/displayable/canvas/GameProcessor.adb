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


with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
with org.allbinary.game.GameStrings_Package;

package body org.allbinary.game.displayable.canvas.GameProcessor_Package is

   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   procedure Initialize_Fields (This : in out GameProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      gameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvas_Param);
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
   end Initialize;

   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return GameProcessor_Access is
      This : constant GameProcessor_Access := new GameProcessor;
   begin
      GameProcessor_Package.Initialize (This.all, gameCanvas_Param);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out GameProcessor) is
   begin
        This.gameCanvas.processPlayingGame;
   end process;

end org.allbinary.game.displayable.canvas.GameProcessor_Package;


