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
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out InitDb'Class; dbConnectionInfo : DbConnectionInfo_Access) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (dbConnectionInfo : DbConnectionInfo_Access) return InitDb_Access is
      This : constant InitDb_Access := new InitDb;
   begin
      Initialize (This.all, dbConnectionInfo);
      return This;
   end Create;

   procedure setHelper (This : in out InitDb; anyType : Java_Object_Access) is
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
            when e : others =>
            return Null_Unbounded_String;
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
            when e : others =>
            return False;
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
            when e : others =>
            return False;
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
            when e : others =>
            return False;
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
            when e : others =>
            return False;
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
            when e : others =>
            return False;
        end;
   end useNormalMainPath;

   procedure getHelper (This : in out InitDb) is
      Java_Result : constant Java_Object_Access := InitDb'Class (This).getHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHelper;

   procedure getHostName (This : in out InitDb) is
      Java_Result : constant Unbounded_String := InitDb'Class (This).getHostName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHostName;

   procedure addUsers (This : in out InitDb) is
      Java_Result : constant Boolean := InitDb'Class (This).addUsers;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addUsers;

   procedure addDatabases (This : in out InitDb) is
      Java_Result : constant Boolean := InitDb'Class (This).addDatabases;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addDatabases;

   procedure addTables (This : in out InitDb) is
      Java_Result : constant Boolean := InitDb'Class (This).addTables;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addTables;

   procedure useTemporaryMainPath (This : in out InitDb) is
      Java_Result : constant Boolean := InitDb'Class (This).useTemporaryMainPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end useTemporaryMainPath;

   procedure useNormalMainPath (This : in out InitDb) is
      Java_Result : constant Boolean := InitDb'Class (This).useNormalMainPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end useNormalMainPath;

end org.allbinary.business.installer.InitDb_Package;


