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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.crypt.Encoder_Package; use org.allbinary.logic.control.crypt.Encoder_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;

package body org.allbinary.data.tables.transform.info.TransformInfoEntity_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package Encoder_Package renames Standard.org.allbinary.logic.control.crypt.Encoder_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   procedure Initialize_Fields (This : in out TransformInfoEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("transforminfo");
      This.abeClientInformation := AbeClientInformationInterface_Access (ServiceClientInformationInterfaceFactory_Package.getInstance);
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoEntity'Class; transformInfoObjectConfigGeneratorFactoryInterface_Param : access TransformInfoObjectConfigGeneratorFactoryInterface_Package.TransformInfoObjectConfigGeneratorFactoryInterface'Class; transformInfoObjectConfigAndManipulatorFactoryInterface_Param : access TransformInfoObjectConfigAndManipulatorFactoryBase_Package.TransformInfoObjectConfigAndManipulatorFactoryBase'Class; transformInfoFactoryInterface_Param : access TransformInfoFactoryInterface_Package.TransformInfoFactoryInterface'Class) is
      transformInfoObjectConfigGeneratorFactoryInterface : constant TransformInfoObjectConfigGeneratorFactoryInterface_Access := TransformInfoObjectConfigGeneratorFactoryInterface_Access (transformInfoObjectConfigGeneratorFactoryInterface_Param);
      transformInfoObjectConfigAndManipulatorFactoryInterface : constant TransformInfoObjectConfigAndManipulatorFactoryBase_Access := TransformInfoObjectConfigAndManipulatorFactoryBase_Access (transformInfoObjectConfigAndManipulatorFactoryInterface_Param);
      transformInfoFactoryInterface : constant TransformInfoFactoryInterface_Access := TransformInfoFactoryInterface_Access (transformInfoFactoryInterface_Param);
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        TransformInfoEntity'Class (This).setTableName (This.tableName);
        This.transformInfoObjectConfigGeneratorFactoryInterface := transformInfoObjectConfigGeneratorFactoryInterface;
        This.transformInfoObjectConfigAndManipulatorFactoryInterface := transformInfoObjectConfigAndManipulatorFactoryInterface;
        This.transformInfoFactoryInterface := transformInfoFactoryInterface;
   end Initialize;

   function Create (transformInfoObjectConfigGeneratorFactoryInterface_Param : access TransformInfoObjectConfigGeneratorFactoryInterface_Package.TransformInfoObjectConfigGeneratorFactoryInterface'Class; transformInfoObjectConfigAndManipulatorFactoryInterface_Param : access TransformInfoObjectConfigAndManipulatorFactoryBase_Package.TransformInfoObjectConfigAndManipulatorFactoryBase'Class; transformInfoFactoryInterface_Param : access TransformInfoFactoryInterface_Package.TransformInfoFactoryInterface'Class) return TransformInfoEntity_Access is
      This : constant TransformInfoEntity_Access := new TransformInfoEntity;
   begin
      TransformInfoEntity_Package.Initialize (This.all, transformInfoObjectConfigGeneratorFactoryInterface_Param, transformInfoObjectConfigAndManipulatorFactoryInterface_Param, transformInfoFactoryInterface_Param);
      return This;
   end Create;

   procedure insert (This : in out TransformInfoEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
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
   function get (This : in out TransformInfoEntity; name : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoInterface_Access is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      transformInfoData : TransformInfoData_Access;
      keysAndValues : HashMap_Access;
      hashMap : HashMap_Access;
      anyType : Java_Object_Access;
      string_Id : Unbounded_String;
      objectData : Java_Object_Access;
   begin
        transformInfoData := TransformInfoData_Package.getInstance;
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (transformInfoData.NAME, Java_Box (name));
        hashMap := AbSqlBean (This).getRow (keysAndValues);
        if (hashMap) /= (null) then
            anyType := hashMap.get (transformInfoData.OBJECTCONFIG);
            if (anyType) /= (null) then
                string_Id := Java_Unbox (anyType);
                hashMap.put (transformInfoData.OBJECTCONFIG, Java_New_String (Encoder_Package.decode (string_Id)));
            end if;
            objectData := hashMap.get (transformInfoData.DATA);
            if (objectData) /= (null) then
                string_Id := Java_Unbox (objectData);
                hashMap.put (transformInfoData.DATA, Java_New_String (Encoder_Package.decode (string_Id)));
            end if;
            return TransformInfoInterface_Access (This.transformInfoFactoryInterface.getInstance (hashMap, propertiesHashMap, pageContext));
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
        objectConfigVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        objectConfigColumnVector := TransformInfoEntity'Class (This).getColumnWhere (TransformInfoData_Package.getInstance.OBJECTCONFIG, StoreFrontData_Package.getInstance.NAME, storeName);
        size := objectConfigColumnVector.size;
        for i in 0 .. (size) - 1 loop
            objectConfigString := Java_Unbox (objectConfigColumnVector.get (i));
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
        viewNameVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        columnVector := TransformInfoEntity'Class (This).getColumnWhere (TransformInfoData_Package.getInstance.NAME, StoreFrontData_Package.getInstance.NAME, storeName);
        size := columnVector.size;
        for i in 0 .. (size) - 1 loop
            viewNameString := Java_Unbox (columnVector.get (i));
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
        return AbSqlBean (This).createTable (TransformInfoEntity'Class (This).createTableStatement);
   end createTable;

   procedure update (This : in out TransformInfoEntity; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean (This).updateWhere (TransformInfoData_Package.getInstance.NAME, Java_Unbox (updatedValues.get (TransformInfoData_Package.getInstance.NAME)), updatedValues);
   end update;

   function dropTable (This : in out TransformInfoEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure get (This : in out TransformInfoEntity; name : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant TransformInfoInterface_Access := TransformInfoEntity'Class (This).get (name => name, propertiesHashMap_Param => propertiesHashMap_Param, pageContext_Param => pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getObjectConfigs (This : in out TransformInfoEntity; storeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := TransformInfoEntity'Class (This).getObjectConfigs (storeName => storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getObjectConfigs;

   procedure getNames (This : in out TransformInfoEntity; storeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := TransformInfoEntity'Class (This).getNames (storeName => storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNames;

end org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;


