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


with org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package; use org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package;
with org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package; use org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package;
with org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package;
with org.allbinary.logic.communication.smtp.EmailInterface_Package;
with org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package;

package body org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package is

   subtype EmailQueueInterface_Access is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access;
   function "=" (Left, Right : EmailQueueInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References."=";
   subtype EmailQueueInterface_Access_Array is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access_Array;
   function "=" (Left, Right : EmailQueueInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References."=";
   subtype EmailQueueInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access_Array_Access;
   function "=" (Left, Right : EmailQueueInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References."=";
   subtype EmailQueueInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access_Array_Access_Array;
   function "=" (Left, Right : EmailQueueInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References."=";
   subtype EmailQueueInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References.EmailQueueInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmailQueueInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package_References."=";
   procedure Initialize_Fields (This : in out EmailQueueFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out EmailQueueFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return EmailQueueFactory_Access is
      This : constant EmailQueueFactory_Access := new EmailQueueFactory;
   begin
      EmailQueueFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return EmailQueueInterface_Access is
   begin
        return EmailQueueInterface_Access (EmailQueueFactory_Package.emailQueueInterface);
   end getInstance;

begin
   null;
   emailQueueInterface := EmailQueueInterface_Access (BasicEmailQueue_Package.getInstance);

end org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package;


