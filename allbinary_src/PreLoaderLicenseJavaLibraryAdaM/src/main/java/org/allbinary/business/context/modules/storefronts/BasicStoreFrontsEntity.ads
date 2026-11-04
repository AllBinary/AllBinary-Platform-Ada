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

limited with org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package;
package org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References is
   type BasicStoreFrontsEntity_Access is access all org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package.BasicStoreFrontsEntity'Class;
   type BasicStoreFrontsEntity_Access_Array is array (Natural range <>) of BasicStoreFrontsEntity_Access;
   type BasicStoreFrontsEntity_Access_Array_Access is access all BasicStoreFrontsEntity_Access_Array;
   type BasicStoreFrontsEntity_Access_Array_Access_Array is array (Natural range <>) of BasicStoreFrontsEntity_Access_Array_Access;
   type BasicStoreFrontsEntity_Access_Array_Access_Array_Access is access all BasicStoreFrontsEntity_Access_Array_Access_Array;
end org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References;

with org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.init.InitSql_Package; use org.allbinary.business.init.InitSql_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References;

package org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package is

   package InitSql_Package renames Standard.org.allbinary.business.init.InitSql_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype BasicStoreFrontInterface_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access;
   use type BasicStoreFrontInterface_Access;
   subtype BasicStoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access_Array;
   use type BasicStoreFrontInterface_Access_Array;
   subtype BasicStoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access_Array_Access;
   use type BasicStoreFrontInterface_Access_Array_Access;
   subtype BasicStoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access_Array_Access_Array;
   use type BasicStoreFrontInterface_Access_Array_Access_Array;
   subtype BasicStoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access_Array_Access_Array_Access;
   use type BasicStoreFrontInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicStoreFrontsEntity_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References.BasicStoreFrontsEntity_Access;
   function "=" (Left, Right : BasicStoreFrontsEntity_Access) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References."=";
   subtype BasicStoreFrontsEntity_Access_Array is org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References.BasicStoreFrontsEntity_Access_Array;
   function "=" (Left, Right : BasicStoreFrontsEntity_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References."=";
   subtype BasicStoreFrontsEntity_Access_Array_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References.BasicStoreFrontsEntity_Access_Array_Access;
   function "=" (Left, Right : BasicStoreFrontsEntity_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References."=";
   subtype BasicStoreFrontsEntity_Access_Array_Access_Array is org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References.BasicStoreFrontsEntity_Access_Array_Access_Array;
   function "=" (Left, Right : BasicStoreFrontsEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References."=";
   subtype BasicStoreFrontsEntity_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References.BasicStoreFrontsEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicStoreFrontsEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package_References."=";

   type BasicStoreFrontsEntity is new InitSql with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicStoreFrontsEntity'Class);
   function Create return BasicStoreFrontsEntity_Access;
   function getStoreFrontInterface (This : in out BasicStoreFrontsEntity; name : Unbounded_String) return BasicStoreFrontInterface_Access;
   procedure getStoreFrontInterface (This : in out BasicStoreFrontsEntity; name : Unbounded_String);

end org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package;


