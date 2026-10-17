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
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package; use org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
with org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package; use org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;
with org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package; use org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package;
with org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package; use org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.communication.smtp.email.NewPasswordEmail_Package is

   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package UserEmailEventHandler_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
   package AdminUserEmailEventHandlerSingletons_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;
   package UserEmailEventHandlerSingletons_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package;
   package AdminEmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package;
   package BasicEmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
   package EmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type NewPasswordEmail is tagged;
   type NewPasswordEmail_Access is access all NewPasswordEmail'Class;
   type NewPasswordEmail_Access_Array is array (Natural range <>) of NewPasswordEmail_Access;
   type NewPasswordEmail_Access_Array_Access is access all NewPasswordEmail_Access_Array;

   type NewPasswordEmail is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      userInterface : UserInterface_Access;
      newPassword : Unbounded_String;
   end record;

   procedure Initialize (This : in out NewPasswordEmail'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; userInterface_Param : access UserInterface'Class; newPassword : Unbounded_String);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface'Class; userInterface_Param : access UserInterface'Class; newPassword : Unbounded_String) return NewPasswordEmail_Access;
   procedure process (This : in out NewPasswordEmail);
   procedure notifyStoreAdmin (This : in out NewPasswordEmail);
   procedure notifyUser (This : in out NewPasswordEmail);

end org.allbinary.logic.communication.smtp.email.NewPasswordEmail_Package;


