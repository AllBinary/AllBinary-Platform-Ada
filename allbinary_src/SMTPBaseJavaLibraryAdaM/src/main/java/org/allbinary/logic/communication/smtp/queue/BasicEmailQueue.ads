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

with AllBinary_Java;
limited with org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package;
package org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References is
   type BasicEmailQueue_Access is access all org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package.BasicEmailQueue'Class;
   type BasicEmailQueue_Access_Array is array (Natural range <>) of BasicEmailQueue_Access;
   type BasicEmailQueue_Access_Array_Access is access all BasicEmailQueue_Access_Array;
   type BasicEmailQueue_Access_Array_Access_Array is array (Natural range <>) of BasicEmailQueue_Access_Array_Access;
   type BasicEmailQueue_Access_Array_Access_Array_Access is access all BasicEmailQueue_Access_Array_Access_Array;
   type BasicEmailQueue_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicEmailQueue_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicEmailQueue_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicEmailQueue_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicEmailQueue_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicEmailQueue_Access_Array_Access is (if Value /= null and then Value.all in BasicEmailQueue_Access_Array_Object'Class then BasicEmailQueue_Access_Array_Object'Class (Value.all).Value else null);
   type BasicEmailQueue_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicEmailQueue_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicEmailQueue_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicEmailQueue_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicEmailQueue_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicEmailQueue_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicEmailQueue_Access_Array_Access_Array_Object'Class then BasicEmailQueue_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References;

with org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.mail.Transport_Package; use javax.mail.Transport_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.communication.smtp.EmailInterface_Package;
with org.allbinary.logic.communication.smtp.EmailInterface_Package_References;
with org.allbinary.logic.util.queue.BasicQueue_Package; use org.allbinary.logic.util.queue.BasicQueue_Package;
with org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package; use org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package;

package org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package EmailInterface_Package renames Standard.org.allbinary.logic.communication.smtp.EmailInterface_Package;
   package BasicQueue_Package renames Standard.org.allbinary.logic.util.queue.BasicQueue_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype EmailInterface_Access is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access;
   use type EmailInterface_Access;
   subtype EmailInterface_Access_Array is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access_Array;
   use type EmailInterface_Access_Array;
   subtype EmailInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access_Array_Access;
   use type EmailInterface_Access_Array_Access;
   subtype EmailInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access_Array_Access_Array;
   use type EmailInterface_Access_Array_Access_Array;
   subtype EmailInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access_Array_Access_Array_Access;
   use type EmailInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicEmailQueue_Access is org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References.BasicEmailQueue_Access;
   function "=" (Left, Right : BasicEmailQueue_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References."=";
   subtype BasicEmailQueue_Access_Array is org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References.BasicEmailQueue_Access_Array;
   function "=" (Left, Right : BasicEmailQueue_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References."=";
   subtype BasicEmailQueue_Access_Array_Access is org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References.BasicEmailQueue_Access_Array_Access;
   function "=" (Left, Right : BasicEmailQueue_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References."=";
   function Java_Box (Value : BasicEmailQueue_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References.Java_Box;
   function Java_Unbox_BasicEmailQueue_Access_Array (Value : access Java_Object'Class) return BasicEmailQueue_Access_Array_Access renames org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References.Java_Unbox_BasicEmailQueue_Access_Array;
   subtype BasicEmailQueue_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References.BasicEmailQueue_Access_Array_Access_Array;
   function "=" (Left, Right : BasicEmailQueue_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References."=";
   subtype BasicEmailQueue_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References.BasicEmailQueue_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicEmailQueue_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References."=";
   function Java_Box (Value : BasicEmailQueue_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References.Java_Box;
   function Java_Unbox_BasicEmailQueue_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicEmailQueue_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package_References.Java_Unbox_BasicEmailQueue_Access_Array_Access_Array;

   type BasicEmailQueue is new BasicQueue and EmailQueueInterface with record
      logUtil : LogUtil_Access;
   end record;
   instance : BasicEmailQueue_Access;
   basicEmailQueue_Var : BasicEmailQueue_Access;

   procedure Initialize (This : in out BasicEmailQueue'Class);
   function Create return BasicEmailQueue_Access;
   function getInstance return BasicEmailQueue_Access;
   function offer (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class) return Boolean;
   procedure offer (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class);
   procedure remove (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class);
   function remove (This : in out BasicEmailQueue) return EmailInterface_Access;
   procedure post (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class);
   procedure processAllUnsent (This : in out BasicEmailQueue);
   function send (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class) return Boolean;
   procedure send (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class);

end org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package;


