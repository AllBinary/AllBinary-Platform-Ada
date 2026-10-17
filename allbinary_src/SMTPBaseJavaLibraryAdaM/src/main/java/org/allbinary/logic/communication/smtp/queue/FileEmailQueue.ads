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
with org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package; use org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package;

package org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package is

   package DomDocumentQueueInterface_Package renames org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package;

   type FileEmailQueue is tagged;
   type FileEmailQueue_Access is access all FileEmailQueue'Class;
   type FileEmailQueue_Access_Array is array (Natural range <>) of FileEmailQueue_Access;
   type FileEmailQueue_Access_Array_Access is access all FileEmailQueue_Access_Array;

   type FileEmailQueue is new Java_Object with record
      domDocumentQueueInterface : DomDocumentQueueInterface_Access;
   end record;

   procedure Initialize (This : in out FileEmailQueue'Class);
   function Create return FileEmailQueue_Access;

end org.allbinary.logic.communication.smtp.queue.FileEmailQueue_Package;


