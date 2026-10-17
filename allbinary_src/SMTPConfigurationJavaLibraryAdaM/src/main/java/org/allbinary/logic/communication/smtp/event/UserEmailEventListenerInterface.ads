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
--  with java.util.EventListener_Package; use java.util.EventListener_Package;
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package; use org.allbinary.logic.communication.smtp.event.EmailEvent_Package;

package org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package is


   type UserEmailEventListenerInterface is interface and EventListener;
   type UserEmailEventListenerInterface_Access is access all UserEmailEventListenerInterface'Class;
   type UserEmailEventListenerInterface_Access_Array is array (Natural range <>) of UserEmailEventListenerInterface_Access;
   type UserEmailEventListenerInterface_Access_Array_Access is access all UserEmailEventListenerInterface_Access_Array;
   procedure onEmailSendRequest (This : in out UserEmailEventListenerInterface; userEmailInfoEvent_Param : access EmailEvent'Class) is abstract;

end org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;


