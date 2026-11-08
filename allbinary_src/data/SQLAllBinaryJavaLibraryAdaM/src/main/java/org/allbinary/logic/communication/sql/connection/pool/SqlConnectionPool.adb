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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.StdUtil_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype StdUtil_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access;
   function "=" (Left, Right : StdUtil_Access) return Boolean renames org.allbinary.logic.StdUtil_Package_References."=";
   subtype StdUtil_Access_Array is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array;
   function "=" (Left, Right : StdUtil_Access_Array) return Boolean renames org.allbinary.logic.StdUtil_Package_References."=";
   subtype StdUtil_Access_Array_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access;
   function "=" (Left, Right : StdUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.StdUtil_Package_References."=";
   subtype StdUtil_Access_Array_Access_Array is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StdUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.StdUtil_Package_References."=";
   subtype StdUtil_Access_Array_Access_Array_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StdUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.StdUtil_Package_References."=";
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
   procedure Initialize_Fields (This : in out SqlConnectionPool'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.stdUtil := StdUtil_Package.getInstance;
      This.connectionHashMap := null;
      This.FIRST_NEW_CONNECTION_CREATED := To_Unbounded_String ("First New Connection Created: ");
      This.FIRST := To_Unbounded_String ("First ");
      This.NEW_CONNECTION_FOR := To_Unbounded_String ("New Connection For ");
      This.CREATED := To_Unbounded_String (" Created");
      This.NUMBER_OF_SQL_CONNECTIONS_FOR := To_Unbounded_String ("Number Of Sql Connections for: ");
      This.NUMBER_OF_SQL_CONNECTION_VECTORS := To_Unbounded_String ("Number Of Sql Connection Vectors: ");
      This.IS_Id := To_Unbounded_String (" is ");
      This.CONNECTION_ALLREADY_CLOSED := To_Unbounded_String ("Connection AllReady Closed");
      This.METHOD_GET := To_Unbounded_String ("get()");
      This.METHOD_ADD := To_Unbounded_String ("add()");
   end Initialize_Fields;


   function getInstance return SqlConnectionPool_Access is
   begin
        return SqlConnectionPool_Access (SqlConnectionPool_Package.instance);
   end getInstance;

   procedure Initialize (This : in out SqlConnectionPool'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SqlConnectionPool_Access is
      This : constant SqlConnectionPool_Access := new SqlConnectionPool;
   begin
      SqlConnectionPool_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws SQLException
   function get (This : in out SqlConnectionPool; url : Unbounded_String) return Connection_Access is
      connectionVector : BasicArrayList_Access;
      stringBuffer : StringMaker_Access;
      size : Integer;
      sqlConnection : Connection_Access;
      i : Integer;
   begin
        if (This.connectionHashMap) = (null) then
            This.connectionHashMap := This.stdUtil.createHashMap;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGPOOL) then
                This.logUtil.putF (This.FIRST_NEW_CONNECTION_CREATED & url, SqlConnectionPool_Access'(This'Unchecked_Access), This.METHOD_GET);
            end if;
            return DriverManager_Package.getConnection (url);
        else
            connectionVector := BasicArrayList_Access (This.connectionHashMap.get (Java_Box (url)));
            if (connectionVector) = (null) then
                connectionVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGPOOL) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (This.FIRST);
                    stringBuffer.append (This.NEW_CONNECTION_FOR);
                    stringBuffer.append (url);
                    stringBuffer.append (This.CREATED);
                    This.logUtil.putF (stringBuffer.toString, SqlConnectionPool_Access'(This'Unchecked_Access), This.METHOD_GET);
                end if;
                return DriverManager_Package.getConnection (url);
            elsif (connectionVector.size) = (0) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGPOOL) then
                    This.logUtil.putF (StringMaker_Package.Create.append (This.NEW_CONNECTION_FOR).append (url).append (This.CREATED).toString, SqlConnectionPool_Access'(This'Unchecked_Access), This.METHOD_GET);
                end if;
                return DriverManager_Package.getConnection (url);
            else
                stringBuffer := StringMaker_Package.Create;
                size := connectionVector.size;
                for i in 0 .. (size) - 1 loop
                    sqlConnection := Connection_Access (connectionVector.get (i));
                    if not (sqlConnection.isClosed) then
                        connectionVector.remove (Java_Object_Access (sqlConnection));
                        This.connectionHashMap.put (Java_Box (url), connectionVector);
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGPOOL) then
                            stringBuffer.delete (0, stringBuffer.length);
                            stringBuffer.append (This.NUMBER_OF_SQL_CONNECTIONS_FOR);
                            stringBuffer.append (url);
                            stringBuffer.append (This.IS_Id);
                            stringBuffer.appendint (connectionVector.size);
                            This.logUtil.putF (This.NUMBER_OF_SQL_CONNECTION_VECTORS & Java_Image (This.connectionHashMap.size), SqlConnectionPool_Access'(This'Unchecked_Access), This.METHOD_GET);
                            This.logUtil.putF (stringBuffer.toString, SqlConnectionPool_Access'(This'Unchecked_Access), This.METHOD_GET);
                        end if;
                        return Connection_Access (sqlConnection);
                    end if;
                end loop;
            end if;
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGPOOL) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.NEW_CONNECTION_FOR);
            stringBuffer.append (url);
            stringBuffer.append (This.CREATED);
            This.logUtil.putF (stringBuffer.toString, SqlConnectionPool_Access'(This'Unchecked_Access), This.METHOD_GET);
        end if;
        return DriverManager_Package.getConnection (url);
   end get;

   --  throws SQLException
   procedure add (This : in out SqlConnectionPool; url : Unbounded_String; sqlConnection_Param : access Connection_Package.Connection'Class) is
      sqlConnection : constant Connection_Access := Connection_Access (sqlConnection_Param);
      connectionVector : BasicArrayList_Access;
      stringBuffer : StringMaker_Access;
   begin
        if not (sqlConnection.isClosed) then
            connectionVector := null;
            if (This.connectionHashMap) = (null) then
                This.connectionHashMap := This.stdUtil.createHashMap;
                connectionVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
                connectionVector.add (Java_Object_Access (sqlConnection));
            else
                connectionVector := BasicArrayList_Access (This.connectionHashMap.get (Java_Box (url)));
                if (connectionVector) = (null) then
                    connectionVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
                end if;
                connectionVector.add (Java_Object_Access (sqlConnection));
                This.connectionHashMap.put (Java_Box (url), connectionVector);
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGPOOL) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (This.NUMBER_OF_SQL_CONNECTIONS_FOR);
                stringBuffer.append (url);
                stringBuffer.append (This.IS_Id);
                stringBuffer.appendint (connectionVector.size);
                This.logUtil.putF (This.NUMBER_OF_SQL_CONNECTION_VECTORS & Java_Image (This.connectionHashMap.size), SqlConnectionPool_Access'(This'Unchecked_Access), This.METHOD_ADD);
                This.logUtil.putF (stringBuffer.toString, SqlConnectionPool_Access'(This'Unchecked_Access), This.METHOD_ADD);
            end if;
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGPOOL) then
            This.logUtil.putF (This.CONNECTION_ALLREADY_CLOSED, SqlConnectionPool_Access'(This'Unchecked_Access), This.METHOD_ADD);
        end if;
   end add;

   procedure get (This : in out SqlConnectionPool; url : Unbounded_String) is
      Java_Result : constant Connection_Access := SqlConnectionPool'Class (This).get (url => url);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   instance := SqlConnectionPool_Package.Create;

end org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package;


