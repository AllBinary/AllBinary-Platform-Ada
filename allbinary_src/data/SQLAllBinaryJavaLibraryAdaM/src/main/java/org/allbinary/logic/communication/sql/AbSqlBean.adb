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


package body org.allbinary.logic.communication.sql.AbSqlBean_Package is

   procedure Initialize_Fields (This : in out AbSqlBean'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.METHOD_GET_FIELD := To_Unbounded_String ("getField");
      This.METHOD_IS_SUBSET_OF_ENTRY := To_Unbounded_String ("isSubsetOfEntry");
   end Initialize_Fields;


   procedure Initialize (This : in out AbSqlBean'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo'Class) is
      databaseConnectionInfoInterface : DbConnectionInfo_Access := DbConnectionInfo_Access (databaseConnectionInfoInterface_Param);
   begin
        AbSqlRow_Package.Initialize (This, databaseConnectionInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo'Class) return AbSqlBean_Access is
      This : constant AbSqlBean_Access := new AbSqlBean;
   begin
      AbSqlBean_Package.Initialize (This.all, databaseConnectionInfoInterface_Param);
      return This;
   end Create;

   function getField (This : in out AbSqlBean; key : Unbounded_String; value : Unbounded_String; requestedField : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      sqlStatement : Unbounded_String;
      field : Unbounded_String;
      rset : ResultSet_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_Id);
        stringBuffer.append (requestedField);
        stringBuffer.append (This.sqlStrings.FROM);
        stringBuffer.append (This.getTableName);
        stringBuffer.append (This.sqlStrings.WHERE);
        stringBuffer.append (key);
        stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
        stringBuffer.append (value);
        stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
        sqlStatement := stringBuffer.toString;
        begin
            field := This.stringUtil.EMPTY_STRING;
            rset := This.executeSQLStatement (sqlStatement);
            while rset.next loop
                field := rset.getString (requestedField);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    stringBuffer.delete (0, stringBuffer.length);
                    stringBuffer.append (This.sqlStrings.SQL_STATEMENT_LABEL);
                    stringBuffer.append (sqlStatement);
                    stringBuffer.append (This.sqlStrings.FIELD_VALUE);
                    stringBuffer.append (field);
                    This.logUtil.putF (stringBuffer.toString, AbSqlBean_Access'(This'Unchecked_Access), This.METHOD_GET_FIELD);
                end if;
                return field;
            end loop;
            return Null_Unbounded_String;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (Java_Image (This.FAILED_SQL_STATEMENT) & sqlStatement, AbSqlBean_Access'(This'Unchecked_Access), This.METHOD_GET_FIELD, e);
            end if;
            return Java_Image (This.FAILED_SQL_STATEMENT) & sqlStatement;
                end;
        end;
   end getField;

   function getField (This : in out AbSqlBean; keysAndValues_Param : access HashMap'Class; requestedField : Unbounded_String) return Unbounded_String is
      keysAndValues : HashMap_Access := HashMap_Access (keysAndValues_Param);
      stringBuffer : StringMaker_Access;
      field : Unbounded_String;
      set : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      key : Unbounded_String;
      value : Unbounded_String;
      i : Integer;
      sqlStatement : Unbounded_String;
      rset : ResultSet_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_Id);
        stringBuffer.append (requestedField);
        stringBuffer.append (This.sqlStrings.FROM);
        stringBuffer.append (This.getTableName);
        stringBuffer.append (This.sqlStrings.WHERE);
        begin
            field := This.stringUtil.EMPTY_STRING;
            set := keysAndValues.keySet;
            keyArray := set.toArray;
            size := keyArray'Length;
            key := Null_Unbounded_String;
            value := Null_Unbounded_String;
            for i in 0 .. (size) - 1 loop
                key := Unbounded_String (keyArray (i));
                value := Java_New_String (Unbounded_String (keysAndValues.get (key)));
                stringBuffer.append (key);
                stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append (value);
                stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
                if (i) < ((size) - (1)) then
                    stringBuffer.append (This.sqlStrings.AND_Id);
                end if;
            end loop;
            sqlStatement := stringBuffer.toString;
            rset := This.executeSQLStatement (sqlStatement);
            while rset.next loop
                field := rset.getString (requestedField);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    stringBuffer.delete (0, stringBuffer.length);
                    stringBuffer.append (This.sqlStrings.SQL_STATEMENT_LABEL);
                    stringBuffer.append (sqlStatement);
                    stringBuffer.append (This.sqlStrings.FIELD_VALUE);
                    stringBuffer.append (field);
                    This.logUtil.putF (stringBuffer.toString, AbSqlBean_Access'(This'Unchecked_Access), This.METHOD_GET_FIELD);
                end if;
                return field;
            end loop;
            return Null_Unbounded_String;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            sqlStatement := stringBuffer.toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (Java_Image (This.FAILED_SQL_STATEMENT) & sqlStatement, AbSqlBean_Access'(This'Unchecked_Access), This.METHOD_GET_FIELD, e);
            end if;
            return Java_Image (This.FAILED_SQL_STATEMENT) & sqlStatement;
                end;
        end;
   end getField;

   function isSubsetOfEntry (This : in out AbSqlBean; key : Unbounded_String; value : Unbounded_String; columnsAndValues_Param : access HashMap'Class) return Unbounded_String is
      columnsAndValues : HashMap_Access := HashMap_Access (columnsAndValues_Param);
      stringBuffer : StringMaker_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      i : Integer;
      sqlStatement : Unbounded_String;
      rset : ResultSet_Access;
      columnName : Unbounded_String;
      field : Unbounded_String;
      keyArray2 : Java_Object_Access_Array_Access;
      size2 : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_Id);
        begin
            keyArray := columnsAndValues.keySet.toArray;
            size := keyArray'Length;
            stringBuffer.append (This.commonSeps.SPACE);
            stringBuffer.append (key);
            for i in 0 .. (size) - 1 loop
                stringBuffer.append (This.commonSeps.SPACE);
                stringBuffer.append (keyArray (i).toString);
            end loop;
            stringBuffer.append (This.sqlStrings.FROM);
            stringBuffer.append (This.getTableName);
            stringBuffer.append (This.sqlStrings.WHERE);
            stringBuffer.append (key);
            stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
            stringBuffer.append (value);
            stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
            sqlStatement := stringBuffer.toString;
            rset := This.executeSQLStatement (sqlStatement);
            columnName := Null_Unbounded_String;
            field := Null_Unbounded_String;
            while rset.next loop
                keyArray2 := columnsAndValues.keySet.toArray;
                size2 := keyArray2'Length;
                for i in 0 .. (size2) - 1 loop
                    columnName := keyArray2 (i).toString;
                    field := rset.getObject (columnName).toString;
                    if (field.compareTo (Unbounded_String (columnsAndValues.get (columnName)))) /= (0) then
                        return org_Package.allbinary.globals.GLOBALS2.NOTASUBSET;
                    end if;
                end loop;
            end loop;
            if (rset.getRow) /= (1) then
                return org_Package.allbinary.globals.GLOBALS2.NOTASUBSET;
            else
                return org_Package.allbinary.globals.GLOBALS2.ISASUBSET;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            sqlStatement := stringBuffer.toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (Java_Image (This.FAILED_SQL_STATEMENT) & sqlStatement, AbSqlBean_Access'(This'Unchecked_Access), This.METHOD_IS_SUBSET_OF_ENTRY, e);
            end if;
            return Java_Image (This.FAILED_SQL_STATEMENT) & sqlStatement;
                end;
        end;
   end isSubsetOfEntry;

   procedure getField (This : in out AbSqlBean; key : Unbounded_String; value : Unbounded_String; requestedField : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbSqlBean'Class (This).getField (key, value, requestedField);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getField;

   procedure getField (This : in out AbSqlBean; keysAndValues_Param : access HashMap'Class; requestedField : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbSqlBean'Class (This).getField (keysAndValues_Param, requestedField);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getField;

   procedure isSubsetOfEntry (This : in out AbSqlBean; key : Unbounded_String; value : Unbounded_String; columnsAndValues_Param : access HashMap'Class) is
      Java_Result : constant Unbounded_String := AbSqlBean'Class (This).isSubsetOfEntry (key, value, columnsAndValues_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSubsetOfEntry;

end org.allbinary.logic.communication.sql.AbSqlBean_Package;


