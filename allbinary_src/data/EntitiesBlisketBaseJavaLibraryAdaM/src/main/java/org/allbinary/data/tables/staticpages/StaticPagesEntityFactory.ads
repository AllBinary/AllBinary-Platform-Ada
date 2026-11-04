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

limited with org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package;
package org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References is
   type StaticPagesEntityFactory_Access is access all org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package.StaticPagesEntityFactory'Class;
   type StaticPagesEntityFactory_Access_Array is array (Natural range <>) of StaticPagesEntityFactory_Access;
   type StaticPagesEntityFactory_Access_Array_Access is access all StaticPagesEntityFactory_Access_Array;
   type StaticPagesEntityFactory_Access_Array_Access_Array is array (Natural range <>) of StaticPagesEntityFactory_Access_Array_Access;
   type StaticPagesEntityFactory_Access_Array_Access_Array_Access is access all StaticPagesEntityFactory_Access_Array_Access_Array;
end org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References;

with org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.data.tables.staticpages.StaticPagesEntity_Package;
with org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References;

package org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package is

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
   subtype StaticPagesEntity_Access is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access;
   use type StaticPagesEntity_Access;
   subtype StaticPagesEntity_Access_Array is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access_Array;
   use type StaticPagesEntity_Access_Array;
   subtype StaticPagesEntity_Access_Array_Access is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access_Array_Access;
   use type StaticPagesEntity_Access_Array_Access;
   subtype StaticPagesEntity_Access_Array_Access_Array is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access_Array_Access_Array;
   use type StaticPagesEntity_Access_Array_Access_Array;
   subtype StaticPagesEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access_Array_Access_Array_Access;
   use type StaticPagesEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StaticPagesEntityFactory_Access is org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References.StaticPagesEntityFactory_Access;
   function "=" (Left, Right : StaticPagesEntityFactory_Access) return Boolean renames org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References."=";
   subtype StaticPagesEntityFactory_Access_Array is org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References.StaticPagesEntityFactory_Access_Array;
   function "=" (Left, Right : StaticPagesEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References."=";
   subtype StaticPagesEntityFactory_Access_Array_Access is org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References.StaticPagesEntityFactory_Access_Array_Access;
   function "=" (Left, Right : StaticPagesEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References."=";
   subtype StaticPagesEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References.StaticPagesEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : StaticPagesEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References."=";
   subtype StaticPagesEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References.StaticPagesEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StaticPagesEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package_References."=";

   type StaticPagesEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : StaticPagesEntityFactory_Access;

   procedure Initialize (This : in out StaticPagesEntityFactory'Class);
   function Create return StaticPagesEntityFactory_Access;
   function getInstance return StaticPagesEntityFactory_Access;
   function getStaticPagesEntityInstance (This : in out StaticPagesEntityFactory) return StaticPagesEntity_Access;

end org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package;


