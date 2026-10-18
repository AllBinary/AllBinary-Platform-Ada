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


package body org.allbinary.data.tables.workflow.WorkFlowEntity_Package is

   procedure Initialize_Fields (This : in out WorkFlowEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      This.tableName := To_Unbounded_String ("workflows");
      This.METHOD_GET := To_Unbounded_String ("get()");
      This.METHOD_UPDATE := To_Unbounded_String ("update");
   end Initialize_Fields;


   procedure Initialize (This : in out WorkFlowEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        WorkFlowEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return WorkFlowEntity_Access is
      This : constant WorkFlowEntity_Access := new WorkFlowEntity;
   begin
      WorkFlowEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out WorkFlowEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, WorkFlowEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, WorkFlowEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure delete (This : in out WorkFlowEntity; name : Unbounded_String; storeName : Unbounded_String) is
      keysAndValues : HashMap_Access;
   begin
        begin
            keysAndValues := StdUtil_Package.getInstance.createHashMap;
            keysAndValues.put (WorkFlowData_Package.getInstance.NAME, Java_Box (name));
            keysAndValues.put (StoreFrontData_Package.getInstance.NAME, Java_Box (storeName));
            AbSqlBean (This).deleteWhere (keysAndValues);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, WorkFlowEntity_Access'(This'Unchecked_Access), This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, WorkFlowEntity_Access'(This'Unchecked_Access), This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

   --  throws Exception, LicensingException
   function get (This : in out WorkFlowEntity; name : Unbounded_String; storeName : Unbounded_String) return WorkFlowInterface_Access is
      keysAndValues : HashMap_Access;
      hashMap : HashMap_Access;
   begin
        begin
            keysAndValues := StdUtil_Package.getInstance.createHashMap;
            keysAndValues.put (WorkFlowData_Package.getInstance.NAME, Java_Box (name));
            keysAndValues.put (StoreFrontData_Package.getInstance.NAME, Java_Box (storeName));
            hashMap := AbSqlBean (This).getRow (keysAndValues);
            return WorkFlowInterface_Access (DbWorkFlowFactory_Package.getInstance.getInstance (This.abeClientInformation, hashMap));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, WorkFlowEntity_Access'(This'Unchecked_Access), This.METHOD_GET, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end get;

   function get (This : in out WorkFlowEntity; storeName : Unbounded_String) return BasicArrayList_Access is
      workFlowsVector : BasicArrayList_Access;
      keysAndValues : HashMap_Access;
      hashMapVector : BasicArrayList_Access;
      size : Integer;
      workFlowHashMap : HashMap_Access;
      i : Integer;
   begin
        begin
            workFlowsVector := BasicArrayListD_Package.Create;
            keysAndValues := StdUtil_Package.getInstance.createHashMap;
            keysAndValues.put (StoreFrontData_Package.getInstance.NAME, Java_Box (storeName));
            hashMapVector := AbSqlBean (This).getRows (keysAndValues);
            size := hashMapVector.size;
            for i in 0 .. (size) - 1 loop
                workFlowHashMap := HashMap_Access (hashMapVector.get (i));
                if (workFlowHashMap) /= (null) then
                    workFlowsVector.add (DbWorkFlowFactory_Package.getInstance.getInstance (This.abeClientInformation, workFlowHashMap));
                end if;
            end loop;
            return workFlowsVector;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, WorkFlowEntity_Access'(This'Unchecked_Access), This.METHOD_GET, e);
            end if;
            return null;
                end;
        end;
   end get;

   procedure update (This : in out WorkFlowEntity; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
      wherekeysAndValues : HashMap_Access;
   begin
        begin
            wherekeysAndValues := StdUtil_Package.getInstance.createHashMap;
            wherekeysAndValues.put (WorkFlowData_Package.getInstance.NAME, Java_Unbox (updatedValues.get (WorkFlowData_Package.getInstance.NAME)));
            wherekeysAndValues.put (StoreFrontData_Package.getInstance.NAME, Java_Unbox (updatedValues.get (StoreFrontData_Package.getInstance.NAME)));
            AbSqlBean (This).updateWhere (wherekeysAndValues, updatedValues);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, WorkFlowEntity_Access'(This'Unchecked_Access), This.METHOD_UPDATE, e);
            end if;
                end;
        end;
   end update;

   function createTableStatement (This : in out WorkFlowEntity) return Unbounded_String is
      workFlowData : WorkFlowData_Access;
      stringBuffer : StringMaker_Access;
   begin
        workFlowData := WorkFlowData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START).append (workFlowData.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (StoreFrontData_Package.getInstance.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (DynamicObjectData_Package.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (workFlowData.DATA).append (This.sqlTypeStrings.BLOB_NOT_NULL).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (workFlowData.NAME).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out WorkFlowEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (WorkFlowEntity'Class (This).createTableStatement);
   end createTable;

   function dropTable (This : in out WorkFlowEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure get (This : in out WorkFlowEntity; name : Unbounded_String; storeName : Unbounded_String) is
      Java_Result : constant WorkFlowInterface_Access := WorkFlowEntity'Class (This).get (name, storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure get (This : in out WorkFlowEntity; storeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := WorkFlowEntity'Class (This).get (storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.data.tables.workflow.WorkFlowEntity_Package;


