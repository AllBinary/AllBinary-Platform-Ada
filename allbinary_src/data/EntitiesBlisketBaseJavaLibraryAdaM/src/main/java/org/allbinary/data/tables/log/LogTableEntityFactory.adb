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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.data.tables.log.LogTableEntity_Package; use org.allbinary.data.tables.log.LogTableEntity_Package;
with org.allbinary.data.tables.log.LogTableEntity_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.data.tables.log.LogTableEntity_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.data.tables.log.LogTableEntityFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogTableEntity_Access is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access;
   function "=" (Left, Right : LogTableEntity_Access) return Boolean renames org.allbinary.data.tables.log.LogTableEntity_Package_References."=";
   subtype LogTableEntity_Access_Array is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access_Array;
   function "=" (Left, Right : LogTableEntity_Access_Array) return Boolean renames org.allbinary.data.tables.log.LogTableEntity_Package_References."=";
   subtype LogTableEntity_Access_Array_Access is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access_Array_Access;
   function "=" (Left, Right : LogTableEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.log.LogTableEntity_Package_References."=";
   subtype LogTableEntity_Access_Array_Access_Array is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access_Array_Access_Array;
   function "=" (Left, Right : LogTableEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.log.LogTableEntity_Package_References."=";
   subtype LogTableEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogTableEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.log.LogTableEntity_Package_References."=";
   procedure Initialize_Fields (This : in out LogTableEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return LogTableEntityFactory_Access is
   begin
        return LogTableEntityFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out LogTableEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LogTableEntityFactory_Access is
      This : constant LogTableEntityFactory_Access := new LogTableEntityFactory;
   begin
      LogTableEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getLogTableEntityInstance (This : in out LogTableEntityFactory) return LogTableEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return LogTableEntity_Package.Create;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.ENTITYFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, LogTableEntityFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getLogTableEntityInstance;

begin
   null;
   instance := LogTableEntityFactory_Package.Create;

end org.allbinary.data.tables.log.LogTableEntityFactory_Package;


