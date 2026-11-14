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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.business.installer.InitializerData_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out InitializerData'Class) is
   begin
      null;
      This.DBUSER := To_Unbounded_String ("DBUSER");
      This.DBPASSWORD := To_Unbounded_String ("DBPASSWORD");
      This.ADMINJDBCDRIVER := To_Unbounded_String ("ADMIN_JDBCDRIVER");
      This.ADMINSCHEMA := To_Unbounded_String ("ADMINSCHEMA");
      This.ADMINSERVER := To_Unbounded_String ("ADMINSERVER");
      This.ADMINPORT := To_Unbounded_String ("ADMINPORT");
      This.CUSTOMERJDBCDRIVER := To_Unbounded_String ("CUSTOMER_JDBCDRIVER");
      This.CUSTOMERNAME := To_Unbounded_String ("CUSTOMERNAME");
      This.CUSTOMERUSERNAME := To_Unbounded_String ("CUSTOMERUSERNAME");
      This.CUSTOMERPASSWORD := To_Unbounded_String ("CUSTOMERPASSWORD");
      This.CUSTOMERSCHEMA := To_Unbounded_String ("CUSTOMERSCHEMA");
      This.CUSTOMERSERVER := To_Unbounded_String ("CUSTOMERSERVER");
      This.CUSTOMERPORT := To_Unbounded_String ("CUSTOMERPORT");
      This.HISTORYJDBCDRIVER := To_Unbounded_String ("HISTORY_JDBCDRIVER");
      This.HISTORYNAME := To_Unbounded_String ("HISTORYNAME");
      This.HISTORYUSERNAME := To_Unbounded_String ("HISTORYUSERNAME");
      This.HISTORYPASSWORD := To_Unbounded_String ("HISTORYPASSWORD");
      This.HISTORYSCHEMA := To_Unbounded_String ("HISTORYSCHEMA");
      This.HISTORYSERVER := To_Unbounded_String ("HISTORYSERVER");
      This.HISTORYPORT := To_Unbounded_String ("HISTORYPORT");
      This.LOGJDBCDRIVER := To_Unbounded_String ("LOG_JDBCDRIVER");
      This.LOGNAME := To_Unbounded_String ("LOGNAME");
      This.LOGUSERNAME := To_Unbounded_String ("LOGUSERNAME");
      This.LOGPASSWORD := To_Unbounded_String ("LOGPASSWORD");
      This.LOGSCHEMA := To_Unbounded_String ("LOGSCHEMA");
      This.LOGSERVER := To_Unbounded_String ("LOGSERVER");
      This.LOGPORT := To_Unbounded_String ("LOGPORT");
      This.INVENTORYJDBCDRIVER := To_Unbounded_String ("INVENTORY_JDBCDRIVER");
      This.INVENTORYNAME := To_Unbounded_String ("INVENTORYNAME");
      This.INVENTORYUSERNAME := To_Unbounded_String ("INVENTORYUSERNAME");
      This.INVENTORYPASSWORD := To_Unbounded_String ("INVENTORYPASSWORD");
      This.INVENTORYSCHEMA := To_Unbounded_String ("INVENTORYSCHEMA");
      This.INVENTORYSERVER := To_Unbounded_String ("INVENTORYSERVER");
      This.INVENTORYPORT := To_Unbounded_String ("INVENTORYPORT");
      This.STATICPAGESJDBCDRIVER := To_Unbounded_String ("STATICPAGES_JDBCDRIVER");
      This.STATICPAGESNAME := To_Unbounded_String ("STATICPAGESNAME");
      This.STATICPAGESUSERNAME := To_Unbounded_String ("STATICPAGESUSERNAME");
      This.STATICPAGESPASSWORD := To_Unbounded_String ("STATICPAGESPASSWORD");
      This.STATICPAGESSCHEMA := To_Unbounded_String ("STATICPAGESSCHEMA");
      This.STATICPAGESSERVER := To_Unbounded_String ("STATICPAGESSERVER");
      This.STATICPAGESPORT := To_Unbounded_String ("STATICPAGESPORT");
   end Initialize_Fields;

   procedure Initialize (This : in out InitializerData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InitializerData_Access is
      This : constant InitializerData_Access := new InitializerData;
   begin
      InitializerData_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InitializerData_Access is
   begin
        return InitializerData_Package.instance;
   end getInstance;

   function getJdbcDriverSolutionInfo (This : in out InitializerData) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>"));
        stringBuffer.append (To_Unbounded_String ("1. A JDBC driver you specified is not in your classpath.<br/>"));
        stringBuffer.append (To_Unbounded_String ("Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>"));
        stringBuffer.append (To_Unbounded_String ("Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>"));
        stringBuffer.append (To_Unbounded_String ("Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>"));
        stringBuffer.append (To_Unbounded_String ("2. The JDBC driver you specified does not exit.<br/>"));
        stringBuffer.append (To_Unbounded_String ("Solution: Get a JDBC driver. <br/>"));
        stringBuffer.append (To_Unbounded_String ("3. The JDBC driver you specified is not valid.<br/>"));
        stringBuffer.append (To_Unbounded_String ("Solution: Use a valid JDBC driver.<p/>"));
        return stringBuffer.toString;
   end getJdbcDriverSolutionInfo;

begin
   null;
   instance := InitializerData_Package.Create;

end org.allbinary.business.installer.InitializerData_Package;


