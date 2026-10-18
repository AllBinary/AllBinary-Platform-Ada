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
with org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package; use org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package;

package org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package is


   type EmailQueueFactory is tagged;
   type EmailQueueFactory_Access is access all EmailQueueFactory'Class;
   type EmailQueueFactory_Access_Array is array (Natural range <>) of EmailQueueFactory_Access;
   type EmailQueueFactory_Access_Array_Access is access all EmailQueueFactory_Access_Array;
   type EmailQueueFactory_Access_Array_Access_Array is array (Natural range <>) of EmailQueueFactory_Access_Array_Access;
   type EmailQueueFactory_Access_Array_Access_Array_Access is access all EmailQueueFactory_Access_Array_Access_Array;

   type EmailQueueFactory is new Java_Object with null record;
   emailQueueInterface : EmailQueueInterface_Access;

   procedure Initialize (This : in out EmailQueueFactory'Class);
   function Create return EmailQueueFactory_Access;
   function getInstance return EmailQueueInterface_Access;

end org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package;


