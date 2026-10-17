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


package body org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package is

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
        return SqlConnectionPool_Package.instance;
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
            connectionVector := BasicArrayList_Access (This.connectionHashMap.get (url));
            if (connectionVector) = (null) then
                connectionVector := BasicArrayListD_Package.Create;
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
                        connectionVector.remove (sqlConnection);
                        This.connectionHashMap.put (url, connectionVector);
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
   procedure add (This : in out SqlConnectionPool; url : Unbounded_String; sqlConnection_Param : access Connection'Class) is
      sqlConnection : Connection_Access := Connection_Access (sqlConnection_Param);
      connectionVector : BasicArrayList_Access;
      stringBuffer : StringMaker_Access;
   begin
        if not (sqlConnection.isClosed) then
            connectionVector := null;
            if (This.connectionHashMap) = (null) then
                This.connectionHashMap := This.stdUtil.createHashMap;
                connectionVector := BasicArrayListD_Package.Create;
                connectionVector.add (sqlConnection);
            else
                connectionVector := BasicArrayList_Access (This.connectionHashMap.get (url));
                if (connectionVector) = (null) then
                    connectionVector := BasicArrayListD_Package.Create;
                end if;
                connectionVector.add (sqlConnection);
                This.connectionHashMap.put (url, connectionVector);
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
      Java_Result : constant Connection_Access := SqlConnectionPool'Class (This).get (url);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   instance := SqlConnectionPool_Package.Create;

end org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package;


