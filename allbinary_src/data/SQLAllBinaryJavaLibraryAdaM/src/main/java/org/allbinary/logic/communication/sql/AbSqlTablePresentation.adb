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


with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package_References;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package;
with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package is

   subtype DbConnectionInfo_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access;
   function "=" (Left, Right : DbConnectionInfo_Access) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array;
   function "=" (Left, Right : DbConnectionInfo_Access_Array) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access;
   function "=" (Left, Right : DbConnectionInfo_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array;
   function "=" (Left, Right : DbConnectionInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DbConnectionInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   procedure Initialize_Fields (This : in out AbSqlTablePresentation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbSqlTablePresentation'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) is
      databaseConnectionInfoInterface : constant DbConnectionInfo_Access := DbConnectionInfo_Access (databaseConnectionInfoInterface_Param);
   begin
        AbSqlBasic_Package.Initialize (This, databaseConnectionInfoInterface);
   end Initialize;

   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbSqlTablePresentation_Access is
      This : constant AbSqlTablePresentation_Access := new AbSqlTablePresentation;
   begin
      AbSqlTablePresentation_Package.Initialize (This.all, databaseConnectionInfoInterface_Param);
      return This;
   end Create;

end org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package;


