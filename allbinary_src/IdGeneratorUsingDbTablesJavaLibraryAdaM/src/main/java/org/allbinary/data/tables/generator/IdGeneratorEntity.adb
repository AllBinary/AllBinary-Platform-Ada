-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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


package body org.allbinary.data.tables.generator.IdGeneratorEntity_Package is

   procedure Initialize_Fields (This : in out IdGeneratorEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("idgenerator");
      
      This.NAME := To_Unbounded_String ("NAME");
      This.VALUE := To_Unbounded_String ("VALUE");
   end Initialize_Fields;


   procedure Initialize (This : in out IdGeneratorEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        This.tableData := StringMaker_Package.Create.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START).append (This.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (This.VALUE).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (This.NAME).append (This.sqlStrings.END_Id).toString;
        AbSqlBean (This).setTableName (This.tableName);
   end Initialize;

   function Create return IdGeneratorEntity_Access is
      This : constant IdGeneratorEntity_Access := new IdGeneratorEntity;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out IdGeneratorEntity; name_Case : Unbounded_String) return Long_Long_Integer is
      keysAndValues : HashMap_Access;
      hashMap : HashMap_Access;
      value_Case : Unbounded_String;
   begin
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (This.NAME, name_Case);
        hashMap := AbSqlBean (This).getRow (keysAndValues);
        if ((Unbounded_String (hashMap.get (This.NAME))).compareTo (name_Case)) /= (0) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("results do not match")));
        end if;
        value_Case := Unbounded_String (hashMap.get (This.VALUE));
        return Long_Long_Integer'Value (To_String (value_Case));
   end get;

   procedure insert (This : in out IdGeneratorEntity; values : BasicArrayList_Access) is
   begin
        begin
            AbSqlBean (This).insert (values);
            This.logUtil.putF (This.commonStrings.SUCCESS, This'Unchecked_Access, INSERT);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, INSERT, e);
                end;
        end;
   end insert;

   procedure delete (This : in out IdGeneratorEntity; value_Case : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (This.NAME, value_Case);
            This.logUtil.putF (This.commonStrings.SUCCESS, This'Unchecked_Access, This.commonStrings.delete);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, This.commonStrings.delete, e);
                end;
        end;
   end delete;

   procedure update (This : in out IdGeneratorEntity; name_Case : Unbounded_String; value_Case : Long_Long_Integer) is
      map : HashMap_Access;
   begin
        map := StdUtil_Package.getInstance.createHashMap;
        map.put (This.NAME, name_Case);
        map.put (This.VALUE, value_Case);
        This.update (map);
   end update;

   procedure update (This : in out IdGeneratorEntity; hashMap : HashMap_Access) is
   begin
        AbSqlBean (This).updateWhere (This.NAME, Unbounded_String (hashMap.get (This.NAME)), hashMap);
   end update;

   function createTable (This : in out IdGeneratorEntity) return Unbounded_String is
      returnStr : Unbounded_String;
   begin
        returnStr := AbSqlBean (This).createTable (This.tableData);
        return returnStr;
   end createTable;

   function dropTable (This : in out IdGeneratorEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure get (This : in out IdGeneratorEntity; name_Case : Unbounded_String) is
      Java_Result : constant Long_Long_Integer := IdGeneratorEntity'Class (This).get (name_Case);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure createTable (This : in out IdGeneratorEntity) is
      Java_Result : constant Unbounded_String := IdGeneratorEntity'Class (This).createTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTable;

   procedure dropTable (This : in out IdGeneratorEntity) is
      Java_Result : constant Unbounded_String := IdGeneratorEntity'Class (This).dropTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end dropTable;

end org.allbinary.data.tables.generator.IdGeneratorEntity_Package;


