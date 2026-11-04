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


with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package;

package body org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package is

   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   subtype LogConfigTypeFactory_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access;
   function "=" (Left, Right : LogConfigTypeFactory_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References."=";
   subtype LogConfigTypeFactory_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array;
   function "=" (Left, Right : LogConfigTypeFactory_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References."=";
   subtype LogConfigTypeFactory_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access;
   function "=" (Left, Right : LogConfigTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References."=";
   subtype LogConfigTypeFactory_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LogConfigTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References."=";
   subtype LogConfigTypeFactory_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References.LogConfigTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogConfigTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package_References."=";
   subtype LogConfigType_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access;
   function "=" (Left, Right : LogConfigType_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References."=";
   subtype LogConfigType_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array;
   function "=" (Left, Right : LogConfigType_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References."=";
   subtype LogConfigType_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array_Access;
   function "=" (Left, Right : LogConfigType_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References."=";
   subtype LogConfigType_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array_Access_Array;
   function "=" (Left, Right : LogConfigType_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References."=";
   subtype LogConfigType_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogConfigType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References."=";
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
        return LogConfigTypeFactory_Access (LogConfigTypeFactory_Package.instance);
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


