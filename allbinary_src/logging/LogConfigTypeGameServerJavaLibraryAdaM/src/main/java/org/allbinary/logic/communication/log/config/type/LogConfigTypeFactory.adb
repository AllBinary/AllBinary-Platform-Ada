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


package body org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package is

   procedure Initialize_Fields (This : in out LogConfigTypeFactory'Class) is
   begin
      null;
      This.NO_DESCRIPTION := To_Unbounded_String ("No Description");
      This.INIT_SERVER := LogConfigType_Package.Create (To_Unbounded_String ("Init Server"), This.NO_DESCRIPTION);
      This.LOBBY_SERVER := LogConfigType_Package.Create (To_Unbounded_String ("Lobby Server"), This.NO_DESCRIPTION);
      This.GAME_SERVER := LogConfigType_Package.Create (To_Unbounded_String ("Game Server"), This.NO_DESCRIPTION);
      This.GAME_SIMULATOR := LogConfigType_Package.Create (To_Unbounded_String ("Game Simulator"), This.NO_DESCRIPTION);
      This.CUSTOM_TYPES := LogConfigType_Package.Create (To_Unbounded_String ("Custom Types"), This.NO_DESCRIPTION);
   end Initialize_Fields;


   function getInstance return LogConfigTypeFactory_Access is
   begin
        return LogConfigTypeFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out LogConfigTypeFactory'Class) is
   begin
      Initialize_Fields (This);
        LogConfigTypes_Package.LOGGING.add (This.INIT_SERVER);
   end Initialize;

   function Create return LogConfigTypeFactory_Access is
      This : constant LogConfigTypeFactory_Access := new LogConfigTypeFactory;
   begin
      LogConfigTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := LogConfigTypeFactory_Package.Create;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;


