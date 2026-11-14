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
limited with org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package;
package org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References is
   type FileEmailQueue_Access is access all org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package.FileEmailQueue'Class;
   type FileEmailQueue_Access_Array is array (Natural range <>) of FileEmailQueue_Access;
   type FileEmailQueue_Access_Array_Access is access all FileEmailQueue_Access_Array;
   type FileEmailQueue_Access_Array_Access_Array is array (Natural range <>) of FileEmailQueue_Access_Array_Access;
   type FileEmailQueue_Access_Array_Access_Array_Access is access all FileEmailQueue_Access_Array_Access_Array;
   type FileEmailQueue_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileEmailQueue_Access_Array_Access;
   end record;
   function Java_Box (Value : FileEmailQueue_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileEmailQueue_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileEmailQueue_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileEmailQueue_Access_Array_Access is (if Value /= null and then Value.all in FileEmailQueue_Access_Array_Object'Class then FileEmailQueue_Access_Array_Object'Class (Value.all).Value else null);
   type FileEmailQueue_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileEmailQueue_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FileEmailQueue_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileEmailQueue_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileEmailQueue_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileEmailQueue_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FileEmailQueue_Access_Array_Access_Array_Object'Class then FileEmailQueue_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References;

with org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package;
with org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References;

package org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package is

   package DomDocumentQueueInterface_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package;
   package Reference_Types is
   subtype DomDocumentQueueInterface_Access is org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References.DomDocumentQueueInterface_Access;
   use type DomDocumentQueueInterface_Access;
   subtype DomDocumentQueueInterface_Access_Array is org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References.DomDocumentQueueInterface_Access_Array;
   use type DomDocumentQueueInterface_Access_Array;
   subtype DomDocumentQueueInterface_Access_Array_Access is org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References.DomDocumentQueueInterface_Access_Array_Access;
   use type DomDocumentQueueInterface_Access_Array_Access;
   subtype DomDocumentQueueInterface_Access_Array_Access_Array is org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References.DomDocumentQueueInterface_Access_Array_Access_Array;
   use type DomDocumentQueueInterface_Access_Array_Access_Array;
   subtype DomDocumentQueueInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package_References.DomDocumentQueueInterface_Access_Array_Access_Array_Access;
   use type DomDocumentQueueInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FileEmailQueue_Access is org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References.FileEmailQueue_Access;
   function "=" (Left, Right : FileEmailQueue_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References."=";
   subtype FileEmailQueue_Access_Array is org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References.FileEmailQueue_Access_Array;
   function "=" (Left, Right : FileEmailQueue_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References."=";
   subtype FileEmailQueue_Access_Array_Access is org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References.FileEmailQueue_Access_Array_Access;
   function "=" (Left, Right : FileEmailQueue_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References."=";
   function Java_Box (Value : FileEmailQueue_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References.Java_Box;
   function Java_Unbox_FileEmailQueue_Access_Array (Value : access Java_Object'Class) return FileEmailQueue_Access_Array_Access renames org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References.Java_Unbox_FileEmailQueue_Access_Array;
   subtype FileEmailQueue_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References.FileEmailQueue_Access_Array_Access_Array;
   function "=" (Left, Right : FileEmailQueue_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References."=";
   subtype FileEmailQueue_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References.FileEmailQueue_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileEmailQueue_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References."=";
   function Java_Box (Value : FileEmailQueue_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References.Java_Box;
   function Java_Unbox_FileEmailQueue_Access_Array_Access_Array (Value : access Java_Object'Class) return FileEmailQueue_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package_References.Java_Unbox_FileEmailQueue_Access_Array_Access_Array;

   type FileEmailQueue is new Java_Object with record
      domDocumentQueueInterface : DomDocumentQueueInterface_Access;
   end record;

   procedure Initialize (This : in out FileEmailQueue'Class);
   function Create return FileEmailQueue_Access;

end org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package;


