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
with org.allbinary.logic.communication.smtp.EmailInterface_Package; use org.allbinary.logic.communication.smtp.EmailInterface_Package;

package org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package is

   package EmailInterface_Package renames Standard.org.allbinary.logic.communication.smtp.EmailInterface_Package;

   type EmailQueueInterface is interface;
   type EmailQueueInterface_Access is access all EmailQueueInterface'Class;
   type EmailQueueInterface_Access_Array is array (Natural range <>) of EmailQueueInterface_Access;
   type EmailQueueInterface_Access_Array_Access is access all EmailQueueInterface_Access_Array;
   function offer (This : in out EmailQueueInterface; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class) return Boolean is abstract;
   function remove (This : in out EmailQueueInterface) return EmailInterface_Access is abstract;

end org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package;


