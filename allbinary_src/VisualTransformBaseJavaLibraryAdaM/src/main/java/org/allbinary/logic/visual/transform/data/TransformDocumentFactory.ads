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
with org.allbinary.logic.visual.transform.data.TransformDocument_Package; use org.allbinary.logic.visual.transform.data.TransformDocument_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;

package org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package is


   type TransformDocumentFactory is tagged;
   type TransformDocumentFactory_Access is access all TransformDocumentFactory'Class;
   type TransformDocumentFactory_Access_Array is array (Natural range <>) of TransformDocumentFactory_Access;
   type TransformDocumentFactory_Access_Array_Access is access all TransformDocumentFactory_Access_Array;

   type TransformDocumentFactory is new Java_Object with null record;

   procedure Initialize (This : in out TransformDocumentFactory'Class);
   function Create return TransformDocumentFactory_Access;
   function getInstance return TransformDocumentInterface_Access;

end org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package;


