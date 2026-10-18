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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package; use org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;

package org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type EmailEventHandlerUtil is tagged;
   type EmailEventHandlerUtil_Access is access all EmailEventHandlerUtil'Class;
   type EmailEventHandlerUtil_Access_Array is array (Natural range <>) of EmailEventHandlerUtil_Access;
   type EmailEventHandlerUtil_Access_Array_Access is access all EmailEventHandlerUtil_Access_Array;
   type EmailEventHandlerUtil_Access_Array_Access_Array is array (Natural range <>) of EmailEventHandlerUtil_Access_Array_Access;
   type EmailEventHandlerUtil_Access_Array_Access_Array_Access is access all EmailEventHandlerUtil_Access_Array_Access_Array;

   type EmailEventHandlerUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : EmailEventHandlerUtil_Access;

   procedure Initialize (This : in out EmailEventHandlerUtil'Class);
   function Create return EmailEventHandlerUtil_Access;
   function getInstance return EmailEventHandlerUtil_Access;
   function getEventHandler (This : in out EmailEventHandlerUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return UserEmailEventHandler_Access;
   procedure getEventHandler (This : in out EmailEventHandlerUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getUserEmailEventListenerVector (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) return BasicArrayList_Access;
   procedure getUserEmailEventListenerVector (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class);

end org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package;


