-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;

package body org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package is

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
      This.OS := LogConfigType_Package.Create (To_Unbounded_String ("Operating System"), This.NO_DESCRIPTION);
      This.FACTORYERROR := LogConfigType_Package.Create (To_Unbounded_String ("Factory Error"), This.NO_DESCRIPTION);
      This.FILE := LogConfigType_Package.Create (To_Unbounded_String ("File"), This.NO_DESCRIPTION);
      This.FILEERROR := LogConfigType_Package.Create (To_Unbounded_String ("File Error"), This.NO_DESCRIPTION);
      This.IDLOGGING := LogConfigType_Package.Create (To_Unbounded_String ("ID Logging"), This.NO_DESCRIPTION);
      This.REPLACE := LogConfigType_Package.Create (To_Unbounded_String ("Replace"), This.NO_DESCRIPTION);
      This.REPLACE_INFO := LogConfigType_Package.Create (To_Unbounded_String ("Replace Info"), This.NO_DESCRIPTION);
      This.REPLACEERROR := LogConfigType_Package.Create (To_Unbounded_String ("Replace Error"), This.NO_DESCRIPTION);
   end Initialize_Fields;


   function getInstance return LogConfigTypeFactory_Access is
   begin
        return LogConfigTypeFactory_Access (LogConfigTypeFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out LogConfigTypeFactory'Class) is
   begin
      Initialize_Fields (This);
        LogConfigTypes_Package.LOGGING.add (This.OS);
        LogConfigTypes_Package.LOGGING.add (This.FACTORYERROR);
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


