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
--  with javax.mail.Transport_Package; use javax.mail.Transport_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.EmailInterface_Package; use org.allbinary.logic.communication.smtp.EmailInterface_Package;
with org.allbinary.logic.util.queue.BasicQueue_Package; use org.allbinary.logic.util.queue.BasicQueue_Package;
with org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package; use org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package;

package org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package EmailInterface_Package renames Standard.org.allbinary.logic.communication.smtp.EmailInterface_Package;
   package BasicQueue_Package renames Standard.org.allbinary.logic.util.queue.BasicQueue_Package;

   type BasicEmailQueue is tagged;
   type BasicEmailQueue_Access is access all BasicEmailQueue'Class;
   type BasicEmailQueue_Access_Array is array (Natural range <>) of BasicEmailQueue_Access;
   type BasicEmailQueue_Access_Array_Access is access all BasicEmailQueue_Access_Array;

   type BasicEmailQueue is new BasicQueue and EmailQueueInterface with record
      logUtil : LogUtil_Access;
   end record;
   instance : BasicEmailQueue_Access;
   basicEmailQueue : BasicEmailQueue_Access;

   procedure Initialize (This : in out BasicEmailQueue'Class);
   function Create return BasicEmailQueue_Access;
   function getInstance return BasicEmailQueue_Access;
   function offer (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface'Class) return Boolean;
   procedure offer (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface'Class);
   procedure remove (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface'Class);
   function remove (This : in out BasicEmailQueue) return EmailInterface_Access;
   procedure post (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface'Class);
   procedure processAllUnsent (This : in out BasicEmailQueue);
   function send (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface'Class) return Boolean;
   procedure send (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface'Class);

end org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package;


