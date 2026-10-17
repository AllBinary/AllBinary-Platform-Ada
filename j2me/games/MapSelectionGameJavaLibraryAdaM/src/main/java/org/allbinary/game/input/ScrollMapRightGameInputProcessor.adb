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


package body org.allbinary.game.input.ScrollMapRightGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out ScrollMapRightGameInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollMapRightGameInputProcessor'Class; scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput'Class) is
      scrollMapPlayerGameInput : ScrollMapPlayerGameInput_Access := ScrollMapPlayerGameInput_Access (scrollMapPlayerGameInput_Param);
   begin
        ScrollMapGameInputProcessor_Package.Initialize (This, scrollMapPlayerGameInput);
   end Initialize;

   function Create (scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput'Class) return ScrollMapRightGameInputProcessor_Access is
      This : constant ScrollMapRightGameInputProcessor_Access := new ScrollMapRightGameInputProcessor;
   begin
      ScrollMapRightGameInputProcessor_Package.Initialize (This.all, scrollMapPlayerGameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out ScrollMapRightGameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent'Class) is
      allbinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      gameKeyEvent : GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        This.scrollMapPlayerGameInput.right;
   end processEvent;

end org.allbinary.game.input.ScrollMapRightGameInputProcessor_Package;


