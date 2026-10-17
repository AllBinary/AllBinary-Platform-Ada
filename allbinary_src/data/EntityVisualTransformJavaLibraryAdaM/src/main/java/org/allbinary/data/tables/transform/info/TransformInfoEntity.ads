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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.control.crypt.Encoder_Package; use org.allbinary.logic.control.crypt.Encoder_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntityInterface_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityInterface_Package;

package org.allbinary.data.tables.transform.info.TransformInfoEntity_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames org.allbinary.business.init.db.UserDbInitInfo_Package;
   package DomDocumentHelper_Package renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package Encoder_Package renames org.allbinary.logic.control.crypt.Encoder_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ServiceClientInformationInterfaceFactory_Package renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package TransformInfoData_Package renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package TransformInfoFactoryInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectConfigAndManipulatorFactoryBase_Package renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package;
   package TransformInfoObjectConfigGeneratorFactoryInterface_Package renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package;

   type TransformInfoEntity is tagged;
   type TransformInfoEntity_Access is access all TransformInfoEntity'Class;
   type TransformInfoEntity_Access_Array is array (Natural range <>) of TransformInfoEntity_Access;
   type TransformInfoEntity_Access_Array_Access is access all TransformInfoEntity_Access_Array;

   type TransformInfoEntity is new AbSqlBean and TransformInfoEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
      abeClientInformation : AbeClientInformationInterface_Access;
      transformInfoFactoryInterface : TransformInfoFactoryInterface_Access;
      transformInfoObjectConfigAndManipulatorFactoryInterface : TransformInfoObjectConfigAndManipulatorFactoryBase_Access;
      transformInfoObjectConfigGeneratorFactoryInterface : TransformInfoObjectConfigGeneratorFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out TransformInfoEntity'Class; transformInfoObjectConfigGeneratorFactoryInterface : TransformInfoObjectConfigGeneratorFactoryInterface_Access; transformInfoObjectConfigAndManipulatorFactoryInterface : TransformInfoObjectConfigAndManipulatorFactoryBase_Access; transformInfoFactoryInterface : TransformInfoFactoryInterface_Access);
   function Create (transformInfoObjectConfigGeneratorFactoryInterface : TransformInfoObjectConfigGeneratorFactoryInterface_Access; transformInfoObjectConfigAndManipulatorFactoryInterface : TransformInfoObjectConfigAndManipulatorFactoryBase_Access; transformInfoFactoryInterface : TransformInfoFactoryInterface_Access) return TransformInfoEntity_Access;
   procedure insert (This : in out TransformInfoEntity; values : BasicArrayList_Access);
   procedure delete (This : in out TransformInfoEntity; value : Unbounded_String);
   function get (This : in out TransformInfoEntity; name : Unbounded_String; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoInterface_Access;
   procedure get (This : in out TransformInfoEntity; name : Unbounded_String; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access);
   function getObjectConfigs (This : in out TransformInfoEntity; storeName : Unbounded_String) return BasicArrayList_Access;
   procedure getObjectConfigs (This : in out TransformInfoEntity; storeName : Unbounded_String);
   function getNames (This : in out TransformInfoEntity; storeName : Unbounded_String) return BasicArrayList_Access;
   procedure getNames (This : in out TransformInfoEntity; storeName : Unbounded_String);
   function createTableStatement (This : in out TransformInfoEntity) return Unbounded_String;
   procedure createTableStatement (This : in out TransformInfoEntity);
   function createTable (This : in out TransformInfoEntity) return Unbounded_String;
   procedure createTable (This : in out TransformInfoEntity);
   procedure update (This : in out TransformInfoEntity; updatedValues : HashMap_Access);
   function dropTable (This : in out TransformInfoEntity) return Unbounded_String;
   procedure dropTable (This : in out TransformInfoEntity);

end org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;


