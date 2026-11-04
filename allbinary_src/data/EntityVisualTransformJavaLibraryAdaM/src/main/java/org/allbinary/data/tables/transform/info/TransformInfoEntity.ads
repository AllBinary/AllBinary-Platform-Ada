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

limited with org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
package org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References is
   type TransformInfoEntity_Access is access all org.allbinary.data.tables.transform.info.TransformInfoEntity_Package.TransformInfoEntity'Class;
   type TransformInfoEntity_Access_Array is array (Natural range <>) of TransformInfoEntity_Access;
   type TransformInfoEntity_Access_Array_Access is access all TransformInfoEntity_Access_Array;
   type TransformInfoEntity_Access_Array_Access_Array is array (Natural range <>) of TransformInfoEntity_Access_Array_Access;
   type TransformInfoEntity_Access_Array_Access_Array_Access is access all TransformInfoEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References;

with org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package_References;
limited with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References;
with org.allbinary.data.tables.transform.info.TransformInfoEntityInterface_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityInterface_Package;

package org.allbinary.data.tables.transform.info.TransformInfoEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoFactoryInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectConfigAndManipulatorFactoryBase_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package;
   package TransformInfoObjectConfigGeneratorFactoryInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype TransformInfoFactoryInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.TransformInfoFactoryInterface_Access;
   use type TransformInfoFactoryInterface_Access;
   subtype TransformInfoFactoryInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.TransformInfoFactoryInterface_Access_Array;
   use type TransformInfoFactoryInterface_Access_Array;
   subtype TransformInfoFactoryInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.TransformInfoFactoryInterface_Access_Array_Access;
   use type TransformInfoFactoryInterface_Access_Array_Access;
   subtype TransformInfoFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.TransformInfoFactoryInterface_Access_Array_Access_Array;
   use type TransformInfoFactoryInterface_Access_Array_Access_Array;
   subtype TransformInfoFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.TransformInfoFactoryInterface_Access_Array_Access_Array_Access;
   use type TransformInfoFactoryInterface_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   subtype TransformInfoObjectConfigAndManipulatorFactoryBase_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package_References.TransformInfoObjectConfigAndManipulatorFactoryBase_Access;
   use type TransformInfoObjectConfigAndManipulatorFactoryBase_Access;
   subtype TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package_References.TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array;
   use type TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array;
   subtype TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package_References.TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access;
   use type TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access;
   subtype TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package_References.TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access_Array;
   use type TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access_Array;
   subtype TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package_References.TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access_Array_Access;
   use type TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access_Array_Access;
   subtype TransformInfoObjectConfigGeneratorFactoryInterface_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References.TransformInfoObjectConfigGeneratorFactoryInterface_Access;
   use type TransformInfoObjectConfigGeneratorFactoryInterface_Access;
   subtype TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References.TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array;
   use type TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array;
   subtype TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References.TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access;
   use type TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access;
   subtype TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References.TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array;
   use type TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array;
   subtype TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References.TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array_Access;
   use type TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoEntity_Access is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access;
   function "=" (Left, Right : TransformInfoEntity_Access) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References."=";
   subtype TransformInfoEntity_Access_Array is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access_Array;
   function "=" (Left, Right : TransformInfoEntity_Access_Array) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References."=";
   subtype TransformInfoEntity_Access_Array_Access is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access_Array_Access;
   function "=" (Left, Right : TransformInfoEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References."=";
   subtype TransformInfoEntity_Access_Array_Access_Array is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References."=";
   subtype TransformInfoEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References."=";

   type TransformInfoEntity is new AbSqlBean and TransformInfoEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
      abeClientInformation : AbeClientInformationInterface_Access;
      transformInfoFactoryInterface : TransformInfoFactoryInterface_Access;
      transformInfoObjectConfigAndManipulatorFactoryInterface : TransformInfoObjectConfigAndManipulatorFactoryBase_Access;
      transformInfoObjectConfigGeneratorFactoryInterface : TransformInfoObjectConfigGeneratorFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out TransformInfoEntity'Class; transformInfoObjectConfigGeneratorFactoryInterface_Param : access TransformInfoObjectConfigGeneratorFactoryInterface_Package.TransformInfoObjectConfigGeneratorFactoryInterface'Class; transformInfoObjectConfigAndManipulatorFactoryInterface_Param : access TransformInfoObjectConfigAndManipulatorFactoryBase_Package.TransformInfoObjectConfigAndManipulatorFactoryBase'Class; transformInfoFactoryInterface_Param : access TransformInfoFactoryInterface_Package.TransformInfoFactoryInterface'Class);
   function Create (transformInfoObjectConfigGeneratorFactoryInterface_Param : access TransformInfoObjectConfigGeneratorFactoryInterface_Package.TransformInfoObjectConfigGeneratorFactoryInterface'Class; transformInfoObjectConfigAndManipulatorFactoryInterface_Param : access TransformInfoObjectConfigAndManipulatorFactoryBase_Package.TransformInfoObjectConfigAndManipulatorFactoryBase'Class; transformInfoFactoryInterface_Param : access TransformInfoFactoryInterface_Package.TransformInfoFactoryInterface'Class) return TransformInfoEntity_Access;
   procedure insert (This : in out TransformInfoEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure delete (This : in out TransformInfoEntity; value : Unbounded_String);
   function get (This : in out TransformInfoEntity; name : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoInterface_Access;
   procedure get (This : in out TransformInfoEntity; name : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function getObjectConfigs (This : in out TransformInfoEntity; storeName : Unbounded_String) return BasicArrayList_Access;
   procedure getObjectConfigs (This : in out TransformInfoEntity; storeName : Unbounded_String);
   function getNames (This : in out TransformInfoEntity; storeName : Unbounded_String) return BasicArrayList_Access;
   procedure getNames (This : in out TransformInfoEntity; storeName : Unbounded_String);
   function createTableStatement (This : in out TransformInfoEntity) return Unbounded_String;
   function createTable (This : in out TransformInfoEntity) return Unbounded_String;
   procedure update (This : in out TransformInfoEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function dropTable (This : in out TransformInfoEntity) return Unbounded_String;

end org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;


