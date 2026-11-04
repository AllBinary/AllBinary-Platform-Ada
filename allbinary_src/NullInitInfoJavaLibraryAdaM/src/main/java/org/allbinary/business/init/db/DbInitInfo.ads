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

limited with org.allbinary.business.init.db.DbInitInfo_Package;
package org.allbinary.business.init.db.DbInitInfo_Package_References is
   type DbInitInfo_Access is access all org.allbinary.business.init.db.DbInitInfo_Package.DbInitInfo'Class;
   type DbInitInfo_Access_Array is array (Natural range <>) of DbInitInfo_Access;
   type DbInitInfo_Access_Array_Access is access all DbInitInfo_Access_Array;
   type DbInitInfo_Access_Array_Access_Array is array (Natural range <>) of DbInitInfo_Access_Array_Access;
   type DbInitInfo_Access_Array_Access_Array_Access is access all DbInitInfo_Access_Array_Access_Array;
end org.allbinary.business.init.db.DbInitInfo_Package_References;

with org.allbinary.business.init.db.DbInitInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;

package org.allbinary.business.init.db.DbInitInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DbInitInfo_Access is org.allbinary.business.init.db.DbInitInfo_Package_References.DbInitInfo_Access;
   function "=" (Left, Right : DbInitInfo_Access) return Boolean renames org.allbinary.business.init.db.DbInitInfo_Package_References."=";
   subtype DbInitInfo_Access_Array is org.allbinary.business.init.db.DbInitInfo_Package_References.DbInitInfo_Access_Array;
   function "=" (Left, Right : DbInitInfo_Access_Array) return Boolean renames org.allbinary.business.init.db.DbInitInfo_Package_References."=";
   subtype DbInitInfo_Access_Array_Access is org.allbinary.business.init.db.DbInitInfo_Package_References.DbInitInfo_Access_Array_Access;
   function "=" (Left, Right : DbInitInfo_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DbInitInfo_Package_References."=";
   subtype DbInitInfo_Access_Array_Access_Array is org.allbinary.business.init.db.DbInitInfo_Package_References.DbInitInfo_Access_Array_Access_Array;
   function "=" (Left, Right : DbInitInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.db.DbInitInfo_Package_References."=";
   subtype DbInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DbInitInfo_Package_References.DbInitInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DbInitInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DbInitInfo_Package_References."=";

   type DbInitInfo is new DbConnectionInfo with null record;

   procedure Initialize (This : in out DbInitInfo'Class; initFileName : Unbounded_String; read : Boolean);
   function Create (initFileName : Unbounded_String; read : Boolean) return DbInitInfo_Access;
   function getUrl (This : in out DbInitInfo) return Unbounded_String;
   procedure write (This : in out DbInitInfo);
   procedure load (This : in out DbInitInfo);
   procedure setHasRead (This : in out DbInitInfo; value : Boolean);

end org.allbinary.business.init.db.DbInitInfo_Package;


