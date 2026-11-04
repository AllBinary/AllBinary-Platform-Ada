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

limited with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
package org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References is
   type DatabaseConnectionInfoInterface_Access is access all org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class;
   type DatabaseConnectionInfoInterface_Access_Array is array (Natural range <>) of DatabaseConnectionInfoInterface_Access;
   type DatabaseConnectionInfoInterface_Access_Array_Access is access all DatabaseConnectionInfoInterface_Access_Array;
   type DatabaseConnectionInfoInterface_Access_Array_Access_Array is array (Natural range <>) of DatabaseConnectionInfoInterface_Access_Array_Access;
   type DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access is access all DatabaseConnectionInfoInterface_Access_Array_Access_Array;
end org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References;

with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type DatabaseConnectionInfoInterface is interface;
   subtype DatabaseConnectionInfoInterface_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DatabaseConnectionInfoInterface_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access_Array) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DatabaseConnectionInfoInterface_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   function Java_Object_Access_From_DatabaseConnectionInfoInterface (Value : DatabaseConnectionInfoInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getUrl (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getJdbcDriver (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getName (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getUserName (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getPassword (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getHost (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getSchema (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getServer (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getPort (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   procedure setJdbcDriver (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   procedure setName (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   procedure setUserName (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   procedure setPassword (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   procedure setSchema (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   procedure setServer (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   procedure setPort (This : in out DatabaseConnectionInfoInterface; value : Unbounded_String) is abstract;
   function getUserNameKey (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;
   function getPasswordKey (This : in out DatabaseConnectionInfoInterface) return Unbounded_String is abstract;

end org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;


