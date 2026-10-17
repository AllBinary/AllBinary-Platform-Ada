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


package body org.allbinary.data.tables.log.LogTableEntityFactory_Package is

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
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getLogTableEntityInstance;

begin
   null;
   instance := LogTableEntityFactory_Package.Create;

end org.allbinary.data.tables.log.LogTableEntityFactory_Package;


