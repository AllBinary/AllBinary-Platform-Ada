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


package body org.allbinary.business.installer.InitDb_Package is

   procedure Initialize_Fields (This : in out InitDb'Class) is
   begin
      null;
      This.anyType := null;
      This.METHOD_CALL_GET_HOST_NAME := To_Unbounded_String ("getHostName");
      This.METHOD_CALL_ADD_USERS := To_Unbounded_String ("addUsers");
      This.METHOD_CALL_ADD_DATABASES := To_Unbounded_String ("addDatabases");
      This.METHOD_CALL_ADD_TABLES := To_Unbounded_String ("addTables");
      This.METHOD_CALL_TEMP_MAIN_PATH := To_Unbounded_String ("useTemporaryMainPath");
      This.METHOD_CALL_MAIN_PATH := To_Unbounded_String ("useNormalMainPath");
   end Initialize_Fields;


   procedure Initialize (This : in out InitDb'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InitDb_Access is
      This : constant InitDb_Access := new InitDb;
   begin
      InitDb_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out InitDb'Class; dbConnectionInfo_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) is
      dbConnectionInfo : constant DbConnectionInfo_Access := DbConnectionInfo_Access (dbConnectionInfo_Param);
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (dbConnectionInfo_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return InitDb_Access is
      This : constant InitDb_Access := new InitDb;
   begin
      InitDb_Package.Initialize (This.all, dbConnectionInfo_Param);
      return This;
   end Create;

   procedure setHelper (This : in out InitDb; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        This.anyType := anyType;
   end setHelper;

   function getHelper (This : in out InitDb) return Java_Object_Access is
   begin
        return This.anyType;
   end getHelper;

   function getHostName (This : in out InitDb) return Unbounded_String is
      dynamicClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
   begin
        begin
            dynamicClass := This.anyType.all'Tag;
            method := dynamicClass.getMethod (This.METHOD_CALL_GET_HOST_NAME, null);
            result := Unbounded_String (method.invoke (This.anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return Null_Unbounded_String;
                end;
        end;
   end getHostName;

   function addUsers (This : in out InitDb) return Boolean is
      dynamicClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Boolean;
   begin
        begin
            dynamicClass := This.anyType.all'Tag;
            method := dynamicClass.getMethod (This.METHOD_CALL_ADD_USERS, null);
            result := Boolean (method.invoke (This.anyType, null));
            return result.booleanValue;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return False;
                end;
        end;
   end addUsers;

   function addDatabases (This : in out InitDb) return Boolean is
      dynamicClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Boolean;
   begin
        begin
            dynamicClass := This.anyType.all'Tag;
            method := dynamicClass.getMethod (This.METHOD_CALL_ADD_DATABASES, null);
            result := Boolean (method.invoke (This.anyType, null));
            return result.booleanValue;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return False;
                end;
        end;
   end addDatabases;

   function addTables (This : in out InitDb) return Boolean is
      dynamicClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Boolean;
   begin
        begin
            dynamicClass := This.anyType.all'Tag;
            method := dynamicClass.getMethod (This.METHOD_CALL_ADD_TABLES, null);
            result := Boolean (method.invoke (This.anyType, null));
            return result.booleanValue;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return False;
                end;
        end;
   end addTables;

   function useTemporaryMainPath (This : in out InitDb) return Boolean is
      dynamicClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Boolean;
   begin
        begin
            dynamicClass := This.anyType.all'Tag;
            method := dynamicClass.getMethod (This.METHOD_CALL_TEMP_MAIN_PATH, null);
            result := Boolean (method.invoke (This.anyType, null));
            return result.booleanValue;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return False;
                end;
        end;
   end useTemporaryMainPath;

   function useNormalMainPath (This : in out InitDb) return Boolean is
      dynamicClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Boolean;
   begin
        begin
            dynamicClass := This.anyType.all'Tag;
            method := dynamicClass.getMethod (This.METHOD_CALL_MAIN_PATH, null);
            result := Boolean (method.invoke (This.anyType, null));
            return result.booleanValue;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return False;
                end;
        end;
   end useNormalMainPath;

end org.allbinary.business.installer.InitDb_Package;


