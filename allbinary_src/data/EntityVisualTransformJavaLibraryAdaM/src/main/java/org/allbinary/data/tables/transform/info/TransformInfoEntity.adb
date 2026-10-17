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


package body org.allbinary.data.tables.transform.info.TransformInfoEntity_Package is

   procedure Initialize_Fields (This : in out TransformInfoEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("transforminfo");
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoEntity'Class; transformInfoObjectConfigGeneratorFactoryInterface_Param : access TransformInfoObjectConfigGeneratorFactoryInterface'Class; transformInfoObjectConfigAndManipulatorFactoryInterface_Param : access TransformInfoObjectConfigAndManipulatorFactoryBase'Class; transformInfoFactoryInterface_Param : access TransformInfoFactoryInterface'Class) is
      transformInfoObjectConfigGeneratorFactoryInterface : TransformInfoObjectConfigGeneratorFactoryInterface_Access := TransformInfoObjectConfigGeneratorFactoryInterface_Access (transformInfoObjectConfigGeneratorFactoryInterface_Param);
      transformInfoObjectConfigAndManipulatorFactoryInterface : TransformInfoObjectConfigAndManipulatorFactoryBase_Access := TransformInfoObjectConfigAndManipulatorFactoryBase_Access (transformInfoObjectConfigAndManipulatorFactoryInterface_Param);
      transformInfoFactoryInterface : TransformInfoFactoryInterface_Access := TransformInfoFactoryInterface_Access (transformInfoFactoryInterface_Param);
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        This.setTableName (This.tableName);
        This.transformInfoObjectConfigGeneratorFactoryInterface := transformInfoObjectConfigGeneratorFactoryInterface;
        This.transformInfoObjectConfigAndManipulatorFactoryInterface := transformInfoObjectConfigAndManipulatorFactoryInterface;
        This.transformInfoFactoryInterface := transformInfoFactoryInterface;
   end Initialize;

   function Create (transformInfoObjectConfigGeneratorFactoryInterface_Param : access TransformInfoObjectConfigGeneratorFactoryInterface'Class; transformInfoObjectConfigAndManipulatorFactoryInterface_Param : access TransformInfoObjectConfigAndManipulatorFactoryBase'Class; transformInfoFactoryInterface_Param : access TransformInfoFactoryInterface'Class) return TransformInfoEntity_Access is
      This : constant TransformInfoEntity_Access := new TransformInfoEntity;
   begin
      TransformInfoEntity_Package.Initialize (This.all, transformInfoObjectConfigGeneratorFactoryInterface_Param, transformInfoObjectConfigAndManipulatorFactoryInterface_Param, transformInfoFactoryInterface_Param);
      return This;
   end Create;

   procedure insert (This : in out TransformInfoEntity; values_Param : access BasicArrayList'Class) is
      values : BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, TransformInfoEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, TransformInfoEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure delete (This : in out TransformInfoEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (TransformInfoData_Package.getInstance.NAME, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, TransformInfoEntity_Access'(This'Unchecked_Access), This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, TransformInfoEntity_Access'(This'Unchecked_Access), This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

   --  throws Exception
   function get (This : in out TransformInfoEntity; name : Unbounded_String; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return TransformInfoInterface_Access is
      propertiesHashMap : HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : PageContext_Access := PageContext_Access (pageContext_Param);
      transformInfoData : TransformInfoData_Access;
      keysAndValues : HashMap_Access;
      hashMap : HashMap_Access;
      anyType : Java_Object_Access;
      string_Id : Unbounded_String;
      objectData : Java_Object_Access;
   begin
        transformInfoData := TransformInfoData_Package.getInstance;
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (transformInfoData.NAME, name);
        hashMap := AbSqlBean (This).getRow (keysAndValues);
        if (hashMap) /= (null) then
            anyType := hashMap.get (transformInfoData.OBJECTCONFIG);
            if (anyType) /= (null) then
                string_Id := Unbounded_String (anyType);
                hashMap.put (transformInfoData.OBJECTCONFIG, Java_New_String (Encoder_Package.decode (string_Id)));
            end if;
            objectData := hashMap.get (transformInfoData.DATA);
            if (objectData) /= (null) then
                string_Id := Unbounded_String (objectData);
                hashMap.put (transformInfoData.DATA, Java_New_String (Encoder_Package.decode (string_Id)));
            end if;
            return This.transformInfoFactoryInterface.getInstance (hashMap, propertiesHashMap, pageContext);
        else
            return null;
        end if;
   end get;

   --  throws Exception
   function getObjectConfigs (This : in out TransformInfoEntity; storeName : Unbounded_String) return BasicArrayList_Access is
      objectConfigVector : BasicArrayList_Access;
      objectConfigColumnVector : BasicArrayList_Access;
      size : Integer;
      objectConfigString : Unbounded_String;
      i : Integer;
   begin
        objectConfigVector := BasicArrayListD_Package.Create;
        objectConfigColumnVector := This.getColumnWhere (TransformInfoData_Package.getInstance.OBJECTCONFIG, StoreFrontData_Package.getInstance.NAME, storeName);
        size := objectConfigColumnVector.size;
        for i in 0 .. (size) - 1 loop
            objectConfigString := Unbounded_String (objectConfigColumnVector.get (i));
            objectConfigString := Java_New_String (Encoder_Package.decode (objectConfigString));
            objectConfigVector.add (This.transformInfoObjectConfigAndManipulatorFactoryInterface.getInstance (This.abeClientInformation, TransformInfoInterface_Access (TransformInfoEntity_Access'(This'Unchecked_Access)), DomDocumentHelper_Package.create (objectConfigString)));
        end loop;
        return objectConfigVector;
   end getObjectConfigs;

   --  throws Exception
   function getNames (This : in out TransformInfoEntity; storeName : Unbounded_String) return BasicArrayList_Access is
      viewNameVector : BasicArrayList_Access;
      columnVector : BasicArrayList_Access;
      size : Integer;
      viewNameString : Unbounded_String;
      i : Integer;
   begin
        viewNameVector := BasicArrayListD_Package.Create;
        columnVector := This.getColumnWhere (TransformInfoData_Package.getInstance.NAME, StoreFrontData_Package.getInstance.NAME, storeName);
        size := columnVector.size;
        for i in 0 .. (size) - 1 loop
            viewNameString := Unbounded_String (columnVector.get (i));
            viewNameVector.add (viewNameString);
        end loop;
        return viewNameVector;
   end getNames;

   function createTableStatement (This : in out TransformInfoEntity) return Unbounded_String is
      transformInfoData : TransformInfoData_Access;
      stringBuffer : StringMaker_Access;
   begin
        transformInfoData := TransformInfoData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE);
        stringBuffer.append (This.tableName);
        stringBuffer.append (This.sqlStrings.START);
        stringBuffer.append (transformInfoData.NAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (StoreFrontData_Package.getInstance.NAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (transformInfoData.OBJECTFILENAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (transformInfoData.OBJECT);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (transformInfoData.OBJECTCONFIGFILENAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (transformInfoData.OBJECTCONFIG);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (transformInfoData.TEMPLATEFILENAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (transformInfoData.TEMPLATE);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (transformInfoData.DATAFILENAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (transformInfoData.DATA);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (EntryData_Package.getInstance.LASTMODIFIED);
        stringBuffer.append (EntryData_Package.getInstance.TIMECREATED);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.sqlStrings.PRIMARY_KEY);
        stringBuffer.append (transformInfoData.NAME);
        stringBuffer.append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out TransformInfoEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (This.createTableStatement);
   end createTable;

   procedure update (This : in out TransformInfoEntity; updatedValues_Param : access HashMap'Class) is
      updatedValues : HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean (This).updateWhere (TransformInfoData_Package.getInstance.NAME, Unbounded_String (updatedValues.get (TransformInfoData_Package.getInstance.NAME)), updatedValues);
   end update;

   function dropTable (This : in out TransformInfoEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure get (This : in out TransformInfoEntity; name : Unbounded_String; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) is
      Java_Result : constant TransformInfoInterface_Access := TransformInfoEntity'Class (This).get (name, propertiesHashMap_Param, pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getObjectConfigs (This : in out TransformInfoEntity; storeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := TransformInfoEntity'Class (This).getObjectConfigs (storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getObjectConfigs;

   procedure getNames (This : in out TransformInfoEntity; storeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := TransformInfoEntity'Class (This).getNames (storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNames;

end org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;


