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
with org.allbinary.data.tables.user.UserEntityFactory_Package; use org.allbinary.data.tables.user.UserEntityFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package; use org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package; use org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package UserEntityFactory_Package renames org.allbinary.data.tables.user.UserEntityFactory_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventNameData_Package renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package EmailEventHandlerUtil_Package renames org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package;
   package UserEmailEventHandler_Package renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type AdminUserEmailEventHandlerSingletons is tagged;
   type AdminUserEmailEventHandlerSingletons_Access is access all AdminUserEmailEventHandlerSingletons'Class;
   type AdminUserEmailEventHandlerSingletons_Access_Array is array (Natural range <>) of AdminUserEmailEventHandlerSingletons_Access;
   type AdminUserEmailEventHandlerSingletons_Access_Array_Access is access all AdminUserEmailEventHandlerSingletons_Access_Array;

   type AdminUserEmailEventHandlerSingletons is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      userEmailEventHandlerHashMap : HashMap_Access;
   end record;
   instance : AdminUserEmailEventHandlerSingletons_Access;

   procedure Initialize (This : in out AdminUserEmailEventHandlerSingletons'Class);
   function Create return AdminUserEmailEventHandlerSingletons_Access;
   function getInstance return AdminUserEmailEventHandlerSingletons_Access;
   procedure getInstance;
   function getInstance (This : in out AdminUserEmailEventHandlerSingletons; abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access) return UserEmailEventHandler_Access;
   procedure getInstance (This : in out AdminUserEmailEventHandlerSingletons; abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access);

end org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;


