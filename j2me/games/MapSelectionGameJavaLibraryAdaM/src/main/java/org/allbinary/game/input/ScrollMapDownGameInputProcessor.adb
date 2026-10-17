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


package body org.allbinary.game.input.ScrollMapDownGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out ScrollMapDownGameInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollMapDownGameInputProcessor'Class; scrollMapPlayerGameInput : ScrollMapPlayerGameInput_Access) is
   begin
        ScrollMapGameInputProcessor_Package.Initialize (This, scrollMapPlayerGameInput);
   end Initialize;

   function Create (scrollMapPlayerGameInput : ScrollMapPlayerGameInput_Access) return ScrollMapDownGameInputProcessor_Access is
      This : constant ScrollMapDownGameInputProcessor_Access := new ScrollMapDownGameInputProcessor;
   begin
      Initialize (This.all, scrollMapPlayerGameInput);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out ScrollMapDownGameInputProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
   begin
        This.scrollMapPlayerGameInput.down;
   end processEvent;

end org.allbinary.game.input.ScrollMapDownGameInputProcessor_Package;


