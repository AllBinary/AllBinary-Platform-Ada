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
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.control.workflow.DbWorkFlowFactory_Package; use org.allbinary.logic.control.workflow.DbWorkFlowFactory_Package;
with org.allbinary.logic.control.workflow.WorkFlowData_Package; use org.allbinary.logic.control.workflow.WorkFlowData_Package;
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package; use org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.data.tables.workflow.WorkFlowEntityInterface_Package; use org.allbinary.data.tables.workflow.WorkFlowEntityInterface_Package;

package org.allbinary.data.tables.workflow.WorkFlowEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package DbWorkFlowFactory_Package renames Standard.org.allbinary.logic.control.workflow.DbWorkFlowFactory_Package;
   package WorkFlowData_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowData_Package;
   package WorkFlowInterface_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;

   type WorkFlowEntity is tagged;
   type WorkFlowEntity_Access is access all WorkFlowEntity'Class;
   type WorkFlowEntity_Access_Array is array (Natural range <>) of WorkFlowEntity_Access;
   type WorkFlowEntity_Access_Array_Access is access all WorkFlowEntity_Access_Array;

   type WorkFlowEntity is new AbSqlBean and WorkFlowEntityInterface with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      tableName : Unbounded_String;
      METHOD_GET : Unbounded_String;
      METHOD_UPDATE : Unbounded_String;
   end record;

   procedure Initialize (This : in out WorkFlowEntity'Class);
   function Create return WorkFlowEntity_Access;
   procedure insert (This : in out WorkFlowEntity; values : BasicArrayList_Access);
   procedure delete (This : in out WorkFlowEntity; name : Unbounded_String; storeName : Unbounded_String);
   function get (This : in out WorkFlowEntity; name : Unbounded_String; storeName : Unbounded_String) return WorkFlowInterface_Access;
   procedure get (This : in out WorkFlowEntity; name : Unbounded_String; storeName : Unbounded_String);
   function get (This : in out WorkFlowEntity; storeName : Unbounded_String) return BasicArrayList_Access;
   procedure get (This : in out WorkFlowEntity; storeName : Unbounded_String);
   procedure update (This : in out WorkFlowEntity; updatedValues : HashMap_Access);
   function createTableStatement (This : in out WorkFlowEntity) return Unbounded_String;
   function createTable (This : in out WorkFlowEntity) return Unbounded_String;
   function dropTable (This : in out WorkFlowEntity) return Unbounded_String;

end org.allbinary.data.tables.workflow.WorkFlowEntity_Package;


